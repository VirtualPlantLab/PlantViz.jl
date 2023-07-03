using VPLViz
using Test
import Aqua

@testset "VPLViz.jl" begin

    # Aqua
    @testset "Aqua" begin
        Aqua.test_all(VPLViz, ambiguities = false)
        Aqua.test_ambiguities([VPLViz])
    end

    # Rendering meshes of primitives
    @testset "primitives" begin
        include("test_primitives.jl")
    end

end
