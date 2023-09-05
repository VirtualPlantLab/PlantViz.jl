using PlantViz
using Test
import Aqua

@testset "PlantViz.jl" begin

    # Aqua
    @testset "Aqua" begin
        Aqua.test_all(PlantViz, ambiguities = false)
        Aqua.test_ambiguities([PlantViz])
    end

    # Rendering meshes of primitives
    @testset "primitives" begin
        include("test_primitives.jl")
    end

end
