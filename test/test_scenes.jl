using PlantGraphs
using PlantGeomPrimitives
import PlantGeomPrimitives as Geom
using PlantGeomTurtle
using PlantRayTracer
import PlantRayTracer as RT
using Test
import ColorTypes: RGB
using PlantViz
import GLMakie # import native backend for rendering -> NOT "using"!

##### Test turtle-based construction of a scene #####

# Modules needed to test ray tracing of graphs
module sn
    using PlantGraphs
    using PlantRayTracer
    struct E64 <: Node
        length::Float64
        mat::Black{1}
    end
    struct E32 <: Node
        length::Float32
        mat::Black{1}
    end
    struct E2 <: Node
        length::Float64
        mat::Vector{Black{1}}
    end
end
import .sn

module btree
    import PlantGraphs as G
    using PlantRayTracer
    # Meristem
    struct Meristem <: G.Node end
    # Node
    struct Node <: G.Node end
    # Internode
    mutable struct Internode <: G.Node
        length::Float64
        mat::Lambertian{1}
    end
    # Graph-level variables
    struct treeparams
        growth::Float64
    end
end
import .btree

let

    # Koch curve @ 64 bits
    L = 1.0
    axiom =
        sn.E64(L, Black(1)) +
        RU(120.0) +
        sn.E64(L, Black(1)) +
        RU(120.0) +
        sn.E64(L, Black(1))
    function Kochsnowflake(x)
        L = data(x).length
        sn.E64(L / 3, Black(1)) +
        RU(-60.0) +
        sn.E64(L / 3, Black(1)) +
        RU(120.0) +
        sn.E64(L / 3, Black(1)) +
        RU(-60.0) +
        sn.E64(L / 3, Black(1))
    end
    function PlantGeomTurtle.feed!(turtle::Turtle, e::sn.E64, data)
        HollowCylinder!(
            turtle,
            length = e.length,
            width = e.length / 10,
            height = e.length / 10,
            move = true,
            materials = e.mat,
            n = 20,
            colors = [rand(RGB) for _ in 1:20],
        )
        return nothing
    end
    rule = Rule(sn.E64, rhs = Kochsnowflake)
    Koch = Graph(axiom = axiom, rules = Tuple(rule))
    scene = Scene(Koch)
    render(scene)

    # Intersection of a rectangle from a directional light source downwards
    nrays = 100_000
    radiosity = 1.0
    rect = Rectangle(length = 1.0, width = 1.0)
    rotatey!(rect, -π / 4)
    mat = Black()
    ext_mat = [mat, mat]
    scene = Scene(
        mesh = rect,
        materials = ext_mat,
        colors = RGB(1, 0, 0),
    )
    gbox = RT.AABB(scene)
    source = DirectionalSource(gbox, θ = 0.0, Φ = 0.0, radiosity = radiosity, nrays = nrays)
    settings = RTSettings(pkill = 1.0, maxiter = 1, dx = sqrt(0.5), dy = 1.0)
    rtobj = RayTracer(scene, source, settings = settings, acceleration = Naive)
    render(scene)
    render!(source)
    render!(rtobj.scene.grid)

end
