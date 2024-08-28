using PlantViz
using PlantGeomPrimitives
import GLMakie # import native backend for rendering -> NOT "using"!

let

# Triangle
t = Triangle(length = 2.0, width = 2.0)
render(t, wireframe = true, normals = true)
t = Triangle(length = 2.0f0, width = 2.0f0)
render(t, wireframe = true, normals = true)


# Rectangle
r = Rectangle(length = 2.0, width = 1.0);
render(r, wireframe = true, normals = true)
r = Rectangle(length = 2.0f0, width = 1.0f0);
render(r, wireframe = true, normals = true)

# Trapezoid
t = Trapezoid(length = 2.0, width = 1.0, ratio = 0.5);
render(t, wireframe = true, normals = true)
t = Trapezoid(length = 2.0f0, width = 1.0f0, ratio = 0.5f0);
render(t, wireframe = true, normals = true)

# Ellipse
e = Ellipse(length = 2.0, width = 2.0, n = 20);
render(e, wireframe = true, normals = true)
e = Ellipse(length = 2.0f0, width = 2.0f0, n = 20);
render(e, wireframe = true, normals = true)

# BBox
b = BBox(Vec(0.0, 0.0, 0.0), Vec(1.0, 1.0, 1.0));
render(b, wireframe = true, normals = true)
b = BBox(Vec(0.0f0, 0.0f0, 0.0f0), Vec(1.0f0, 1.0f0, 1.0f0));
render(b, wireframe = true, normals = true)

# Solid cone
c = SolidCone(length = 2.0, width = 1.0, height = 1.0, n = 40);
render(c, wireframe = true, normals = true)
c = SolidCone(length = 2.0f0, width = 1.0f0, height = 1.0f0, n = 40);
render(c, wireframe = true, normals = true)

# Solid cube
c = SolidCube(length = 1.0, width = 1.0, height = 1.0);
render(c, wireframe = true, normals = true)
c = SolidCube(length = 1.0f0, width = 1.0f0, height = 1.0f0);
render(c, wireframe = true, normals = true)

# Solid cylinder
c = SolidCylinder(length = 2.0, width = 1.0, height = 1.0, n = 80);
render(c, wireframe = true, normals = true)
c = SolidCylinder(length = 2.0f0, width = 1.0f0, height = 1.0f0, n = 80);
render(c, wireframe = true, normals = true)

# Solid frustum
f = SolidFrustum(length = 2.0, width = 1.0, height = 1.0, ratio = 0.5, n = 80);
render(f, wireframe = true, normals = true)
f = SolidFrustum(length = 2.0f00, width = 1.0f00, height = 1.0f00, ratio = 0.5f0, n = 80);
render(f, wireframe = true, normals = true)

# Hollow cone
c = HollowCone(length = 2.0, width = 1.0, height = 1.0, n = 20);
render(c, wireframe = true, normals = true)
c = HollowCone(length = 2.0f0, width = 1.0f0, height = 1.0f0, n = 20);
render(c, wireframe = true, normals = true)

# Hollow cube
c = HollowCube(length = 1.0, width = 1.0, height = 1.0);
render(c, wireframe = true, normals = true)
c = HollowCube(length = 1.0f0, width = 1.0f0, height = 1.0f0);
render(c, wireframe = true, normals = true)

# Hollow cylinder
c = HollowCylinder(length = 2.0, width = 1.0, height = 1.0, n = 40);
render(c, wireframe = true, normals = true)
c = HollowCylinder(length = 2.0f0, width = 1.0f0, height = 1.0f0, n = 40);
render(c, wireframe = true, normals = true)

# Hollow frustum
f = HollowFrustum(length = 2.0, width = 1.0, height = 1.0, ratio = 0.5, n = 40);
render(f, wireframe = true, normals = true)
f = HollowFrustum(length = 2.0f0, width = 1.0f0, height = 1.0f0, ratio = 0.5f0, n = 40);
render(f, wireframe = true, normals = true)

end
