using PlantViz
using Test
import Aqua
using Documenter

@testset "PlantViz.jl" begin

    # Test examples on documentation (jldoctest blocks)
    DocMeta.setdocmeta!(PlantViz, :DocTestSetup, :(using PlantViz); recursive = true)
    doctest(PlantViz)


    # Aqua
    @testset "Aqua" begin
        Aqua.test_all(PlantViz, ambiguities = false)
        Aqua.test_ambiguities([PlantViz])
    end

    # Rendering meshes of primitives
    @testset "primitives" begin
        include("test_primitives.jl")
    end

    # Rendering scenes, ray tracing sources and grid cloner
    @testset "scenes" begin
        include("test_scenes.jl")
    end

end
