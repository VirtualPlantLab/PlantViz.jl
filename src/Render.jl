
##################
##### Meshes #####
##################

"""
    render(m::Mesh; kwargs...)

Render a mesh. This will create a new visualization (see Documentation for
details). Keyword arguments are passed to the `render(scene::VPLGeom.Scene)` method
and any unmatched keywords will be passed along to `Makie.mesh()`.
"""
function render(m::VPLGeom.Mesh; kwargs...)
    render(VPLGeom.GLMesh(m); kwargs...)
end

"""
    render!(m::Mesh; kwargs...)

Add a mesh to the visualization currently active. This will create a new
visualization (see Documentation for details). Keyword arguments are passed to
the `render!(scene::VPLGeom.Scene)` method and any unmatched keywords will be passed
along to `Makie.mesh!()`.
"""
function render!(m::VPLGeom.Mesh; kwargs...)
    render!(VPLGeom.GLMesh(m); kwargs...)
end

# Basic rendering of a triangular mesh that is already in the right format
function render(
    m::GeometryBasics.Mesh;
    color = :green,
    normals::Bool = false,
    wireframe::Bool = false,
    axes::Bool = true,
    resolution = (1920, 1080),
    kwargs...,
)
    fig = Makie.Figure(resolution = resolution)
    lscene = Makie.LScene(fig[1, 1], show_axis = axes)
    Makie.mesh!(lscene, m, color = color, near = 0; kwargs...)
    scene_additions!(m, normals, wireframe)
    fig
end
function render!(
    m::GeometryBasics.Mesh;
    color = :green,
    normals::Bool = false,
    wireframe::Bool = false,
    kwargs...,
)
    Makie.mesh!(m, color = color, near = 0; kwargs...)
    scene_additions!(m, normals, wireframe)
end



##################
##### Scenes #####
##################

"""
    render(scene::Scene; normals::Bool = false, wireframe::Bool = false, kwargs...)

Render a `Scene` object. This will create a new visualization (see
Documentation for details). `normals = true` will draw arrows in the direction
of the normal vector for each triangle in the mesh, `wireframe = true` will draw
the edges of each triangle with black lines. Keyword arguments are passed to
`Makie.mesh()`.
"""
function render(
    scene::VPLGeom.Scene;
    normals::Bool = false,
    wireframe::Bool = false,
    kwargs...,
)
    render(
        VPLGeom.mesh(scene);
        color = VPLGeom.colors(scene),
        normals = normals,
        wireframe = wireframe,
        kwargs...,
    )
end

#######################
##### Save output #####
#######################

"""
    export_scene(;scene, filename, kwargs...)

Export a screenshot of the current visualization (stored as `scene` as output of
a call to `render`) as a PNG file store in the path given by `filename`
(including `.png` extension). Keyword arguments will be passed along to the
corresponding `save` method from Makie (see VPL documentation for details).
"""
function export_scene(; scene, filename, kwargs...)
    FileIO.save(filename, scene; kwargs...)
end
