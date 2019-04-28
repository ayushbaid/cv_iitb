# Computer Vision (CS:763, IIT Bombay)
This repository contains some code and materials developed in IITB's course, taken by [Prof. Ajit Rajwade](https://www.cse.iitb.ac.in/~ajitvr/). Please visit the repo for the full code.

### Image Registration
The problem statement can be found [here](./image_alignment/problem_statement.pdf).

I used joint entropy as a loss function to register two images with signification colour difference (negative or use of flash), where the image has been rotated and translated.



| Reference image | Input image | Joint entropy map | Aligned image |
| ---- | ----- |----- | ---- |
| ![i1_ref](./image_alignment/i1_ref.png) | ![i1_input](./image_alignment/i1_input.png) | ![i1_jemap](./image_alignment/i1_jemap.png) | ![i1_aligned](./image_alignment/i1_aligned.png) |
| ![i2_ref](./image_alignment/i2_ref.png) | ![i2_input](./image_alignment/i2_input.png) | ![i2_jemap](./image_alignment/i2_jemap.png) | ![i2_aligned](./image_alignment/i2_aligned.png) |



### Video stabilization

Using SIFT points and registering them across the frames, we can get an estimate of the motion of the camera. I performed stabilization where the input video has been corrupted with rigid transformations.



Results: 

Left side is input video; right side is output.

![cars](./video_stabilization/cars.gif)

![cars](./video_stabilization/coastguard.gif)



### Compressed sensing

I implemented an OMP based algorithm to perform reconstruction of the barbara image captured at different levels of compression.



Here is the plot for the error v the compression factor:

![err_plot](./compressed_sensing/msie_omp.png)

The full report can be found [here](./compressed_sensing/report.pdf).