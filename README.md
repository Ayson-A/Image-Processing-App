Image Processing App - Final Project

How to Run the App
1. Navigate to the project folder.
2. Open "Image_Processing_App.mlapp".
3. Click Run (F5).
4. In the app:
   - Press "Load Image" and choose a JPG/PNG/TIF.
   - Check or uncheck "Unsharp Mask" or "Edge Detection."
   - Adjust sliders (Kernel Size, Unsharp Strength, Edge Threshold).
   - Press "Process Image" to update the results.

Known Limitations
- Only supports JPG/PNG/TIF/GIF images.
- Must press "Process Image" after adjusting sliders.
- Filters are not applied in real-time.

Design Summary
The Image Processing App was made for the Fall 2025 ENGR 020 MATLAB Programming final project. The app lets users load an 
image and apply two filters: unsharp masking and Prewitt edge detection. The interface was built in MATLAB App Designer and 
includes checkboxes to turn filters on or off and sliders that adjust kernel size, sharpening strength, and edge threshold. 
Overall, the app demonstrates core image-processing concepts such as convolution, thresholding, and filter-based enhancement 
while providing a clear visual comparison between the original and processed images.