# Photo Viewer
Simple iOS application for viewing photo's stored in a table view (built for practicing iOS development fundamentals)

## Quick rundown:
The project stores some images in the main bundle's resources directory. <br>
The image file names are displayed in a simple **UITableView** column of cells.<br>
We use the **dequeueReusableCell** method for when new cells need to be displayed on the screen. <br>
Instead of creating a new cell for each item, which can be resource-intensive, the dequeueReusableCell method allows us to reuse existing cells that are no longer visible on the screen.

<div style="display: flex;">
  <img src="photov1.png" alt="Image 1" width="30%" height="30%">
  <img src="photov2.png" alt="Image 2" width="30%" height="30%">
  <img src="photov3.png" alt="Image 3" width="30%" height="30%">
</div>


