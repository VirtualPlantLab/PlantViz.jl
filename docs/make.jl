using PlantViz
using Documenter

makedocs(;
    doctest = false,
    modules = [PlantViz],
    authors = "Alejandro Morales Sierra <alejandro.moralessierra@wur.nl> and contributors",
    repo = "https://github.com/VirtualPlantLab/PlantViz.jl/blob/{commit}{path}#{line}",
    sitename = "PlantViz.jl",
    format = Documenter.HTML(;
        prettyurls = get(ENV, "CI", "false") == "true",
        edit_link = "master",
        assets = String[],
    ),
    pages = ["Home" => "index.md"],
)

deploydocs(; repo = "github.com/VirtualPlantLab/PlantViz.jl.git", devbranch = "master")
