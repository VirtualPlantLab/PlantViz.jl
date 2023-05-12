using VPLViz
using Documenter

DocMeta.setdocmeta!(VPLViz, :DocTestSetup, :(using VPLViz); recursive=true)

makedocs(;
    modules=[VPLViz],
    authors="Alejandro Morales Sierra <alejandro.moralessierra@wur.nl> and contributors",
    repo="https://github.com/AleMorales/VPLViz.jl/blob/{commit}{path}#{line}",
    sitename="VPLViz.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)
