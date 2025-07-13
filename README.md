# Simple stuff holder

This project is perfect for creating custom-fit spacers, mounts, or any other part that requires precise dimensions and a central opening.

***

## Features

- **Customizable Dimensions**: Easily change the size of the main shape and its height.
- **Rounded Corners**: Adjust the radius of the outer corners.
- **Switchable Hole Shape**: Toggle between a circular or a square hole with a single variable.
- **Adjustable Clearance**: Control the gap between the outer shape and the inner hole.

***

## Parameters

All customization is done by changing the variables at the top of the script.

- `shape_size`: The overall side length of the square base.
- `hole_clearance`: The distance between the edge of the central hole and the outer edge of the square.
- `object_height`: The thickness (extrusion height) of the object.
- `corner_radius`: The radius for the rounded outer corners.
- `$fn`: The number of fragments used to render a full circle. A higher number results in a smoother curve.
- `use_square_hole`: The main switch for the hole shape.
    - Set to `false` for a **circular** hole.
    - Set to `true` for a **square** hole.

***

## License

This project is open-source. Consider adding a license to let others know how they can use your code. The [MIT License](https://opensource.org/licenses/MIT) is a great and simple choice for projects like this.
