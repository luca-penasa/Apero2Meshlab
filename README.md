Apero2Meshlab
=============

You may need to checkout the latest revision of culture3d for this procedure to work

Apero2Meshlab is a micmac patch that adds the possibility to export the Apero orientations of cameras to a meshlab mlp file that can be loaded by Meshlab.

Applying the patch
------------------
For applying the changes just go to your micmac source dir and do the following
```bash
hg import --no-commit /path/to/Apero2Meshlab/changeset.hgdiff
```

note that this will NOT introduce a new commit into your repo. if you want it do it without --no-commit

for cleaning your repo (removing the patch), if you dont have made a commit it is easy:
```bash
cd path/to/culture3d/
hg update --clean
rm Apero2Meshlab.c  CPP_Apero2Meshlab.cpp
```

If you have done it with a new commit, refer to mercurial documentation on how to remove a commit.


Using
-----
When patched and compiled you will have a mm3d Apero2Meshlab tool that provides two methods for exporting to meshlab:
1. undistort images with drunk and write out a mlp file with the cameras in it
2. keep the images as they are and write the mlp file using the first two distortions coefficients of the camera only.

Both of them does _NOT_ provide exact exports. Both are approximated in some way.

Extended Install Info
---------------------
First of all. Are you compilig micmac/culture3d by yourself? 
If not do that and come back later. This is a source patch that need to be compiled together with the rest of micmac. 
You can't use it on pre-compiled binaries.

So for installing you can do this way, open a bash console and:
```bash
cd /home/tizio/code #or where your use to place you code stuff
git clone https://github.com/luca-penasa/Apero2Meshlab.git Apero2Meshlab #this will download the whole source in the /home/tizio/code/Apero2Meshlab folder
```

Then simply execute the commands as above:
```bash
hg import --no-commit /path/to/Apero2Meshlab/changeset.hgdiff
```

This should install the patch.

Let me know if the process is not working (recent changes to micmac source could have invalidated the patch)
