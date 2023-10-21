var documenterSearchIndex = {"docs":
[{"location":"","page":"Home","title":"Home","text":"CurrentModule = PlantViz","category":"page"},{"location":"#PlantViz","page":"Home","title":"PlantViz","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"Documentation for PlantViz.","category":"page"},{"location":"","page":"Home","title":"Home","text":"","category":"page"},{"location":"","page":"Home","title":"Home","text":"Modules = [PlantViz]","category":"page"},{"location":"#PlantViz.export_scene-Tuple{}","page":"Home","title":"PlantViz.export_scene","text":"export_scene(;scene, filename, kwargs...)\n\nExport a screenshot of the current visualization (stored as scene as output of a call to render) as a PNG file store in the path given by filename (including .png extension). Keyword arguments will be passed along to the corresponding save method from Makie (see VPL documentation for details).\n\n\n\n\n\n","category":"method"},{"location":"#PlantViz.render!-Tuple{PlantGeomPrimitives.Mesh}","page":"Home","title":"PlantViz.render!","text":"render!(m::Mesh; kwargs...)\n\nAdd a mesh to the visualization currently active. This will create a new visualization (see Documentation for details). Keyword arguments are passed to the render!(scene::Scene) method and any unmatched keywords will be passed along to Makie.mesh!().\n\n\n\n\n\n","category":"method"},{"location":"#PlantViz.render!-Tuple{PlantRayTracer.GridCloner}","page":"Home","title":"PlantViz.render!","text":"render!(grid::GridCloner; alpha = 0.2)\n\nAdd a mesh representing the bounding boxes of the grid cloner to a 3D scene, where alpha represents the transparency of each box.\n\n\n\n\n\n","category":"method"},{"location":"#PlantViz.render!-Union{Tuple{Array{PlantRayTracer.Source{G, A, nw}, 1}}, Tuple{nw}, Tuple{A}, Tuple{G}} where {G<:PlantRayTracer.Directional, A<:PlantRayTracer.FixedSource, nw}","page":"Home","title":"PlantViz.render!","text":"render!(source::Source{G, A, nw}; n = 20, alpha = 0.2, point = false,\n        scale = 0.2)\n\nAdd a mesh representing the light source to a 3D scene (if point = false) or a series of points representing the center of the light sources (if point = true). When point = false, for each type of light source a triangular mesh will be created, where n is the number of triangles (see documentation of geometric primitives for details) and alpha is the transparency to be used for each triangle. When point = true, only the center of the light source is rendered along with the normal vector at that point (representative of the direction at which rays are generated). In the current version, point = true is only possible for directional light sources.\n\n\n\n\n\n","category":"method"},{"location":"#PlantViz.render-Tuple{PlantGeomPrimitives.Mesh}","page":"Home","title":"PlantViz.render","text":"render(m::Mesh; kwargs...)\n\nRender a mesh. This will create a new visualization (see Documentation for details). Keyword arguments are passed to the render(scene::Scene) method and any unmatched keywords will be passed along to Makie.mesh().\n\n\n\n\n\n","category":"method"},{"location":"#PlantViz.render-Tuple{PlantGeomPrimitives.Scene}","page":"Home","title":"PlantViz.render","text":"render(scene::Scene; normals::Bool = false, wireframe::Bool = false, kwargs...)\n\nRender a Scene object. This will create a new visualization (see Documentation for details). normals = true will draw arrows in the direction of the normal vector for each triangle in the mesh, wireframe = true will draw the edges of each triangle with black lines. Keyword arguments are passed to Makie.mesh().\n\n\n\n\n\n","category":"method"}]
}