# PlantViz release notes

We started keeping track of changes in the `NEWS.md` file after version 0.1.0.

# PlantViz 1.0.1 (2026-06-11)

Extend the camera rotation to use `alpha_soil` and `beta_soil`. The rotation now
works by calculating the `Z` axis in the geocentric coordinate system (using exactly
the same computation that we use for solar radiation).

We also account for changes in upstream packages to always use hexadecimal degrees for all
angles.

# PlantViz 1.0.0 (2026-06-10)

No actual changes. We move to version 1.0.0 because:

- The tool is being used extensively by the community and it has become more stable.

- Julia treats any change as breaking change when < 1.0.0

# PlantViz 0.2.0 (2026-06-10)

* Add `alpha_soil` keyword argument to `render` to rotate the camera by the
  soil slope inclination angle (in radians, rotation around X axis), so the XY
  plane no longer appears horizontal when the ground surface is tilted.
* Update dependency on PlantRayTracer to v0.2.0.

# PlantViz 0.1.1 (2026-01-14)

* Update dependencies and make sure it works on Julia 1.12
