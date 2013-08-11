Apero2Meshlab
=============

Apero2Meshlab is a micmac patch that adds the possibility to export the Apero orientations of cameras to a meshlab mlp file that can be loaded by Meshlab.

Code file CPP_Apero2Meshlab.cpp should be placed in the src/uti_files/ dir of micmac. 
Also Apero2Meshlab.c should be copied in the right place.
And then also other changes to the micmac code are needed in order to work!

I provide a bash script for applying the patch and copying the files so to simplify this part.

Run it as:
```bash
./intall_patch.sh path/to/micmac_source [-r]
```

where:	

	-r undo the changes


If you need support please contact me

When patched and compiled you will have a mm3d Apero2Meshlab tool that provides two methods for exporting to meshlab:
1. undistort images with drunk and write out a mlp file with the cameras in it
2. keep the images as they are and write the mlp file using the first two distortions coefficients of the camera only.

Both of them does _NOT_ provide exact exports. Both are approximated in some way.


 
