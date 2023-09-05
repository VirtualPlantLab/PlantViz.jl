using PlantViz
using Documenter

DocMeta.setdocmeta!(PlantViz, :DocTestSetup, :(using PlantViz); recursive = true)

makedocs(;
    modules = [PlantViz],
    authors = "Alejandro Morales Sierra <alejandro.moralessierra@wur.nl> and contributors",
    repo = "https://github.com/AleMorales/PlantViz.jl/blob/{commit}{path}#{line}",
    sitename = "PlantViz.jl",
    format = Documenter.HTML(;
        prettyurls = get(ENV, "CI", "false") == "true",
        edit_link = "master",
        assets = String[],
    ),
    pages = ["Home" => "index.md"],
)
