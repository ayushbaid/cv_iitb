# Computer Vision (CS:763, IIT Bombay)
This repository contains some code and materials developed in IITB's course, taken by [Prof. Ajit Rajwade](https://www.cse.iitb.ac.in/~ajitvr/).

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

<video src=./video_stabilization/cars.avi width="320" height="200" controls preload></video>
<video src=./video_stabilization/coastguard.avi width="320" height="200" controls preload></video>