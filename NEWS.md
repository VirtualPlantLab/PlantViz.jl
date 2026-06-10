# PlantViz release notes

We started keeping track of changes in the `NEWS.md` file after version 0.1.0.

# PlantViz 0.2.0 (2026-06-10)

* Add `alpha_soil` keyword argument to `render` to rotate the camera by the
  soil slope inclination angle (in radians, rotation around X axis), so the XY
  plane no longer appears horizontal when the ground surface is tilted.
* Update dependency on PlantRayTracer to v0.2.0.

# PlantViz 0.1.1 (2026-01-14)

* Update dependencies and make sure it works on Julia 1.12
