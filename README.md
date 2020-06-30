## MPV Composition Guides
This script overlays basic composition guides on your mpv video. 

### Installation
Put the entire folder in your ~/mpv/scripts/ directory such that you have ~/mpv/scripts/composition_guides (or however you rename the folder). Do not rearrange individual files or directories.  
See: https://mpv.io/manual/master/#lua-scripting and https://github.com/mpv-player/mpv/wiki/User-Scripts  

### Usage  
g &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cycle through the guides  
G &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;reset back to no guides  
CTRL g&nbsp;&nbsp;cycle between 16:9 mode and 4:3 mode  

### Notes  
This script tries to get the correct MPV script directory, but if yours is different, just put the correct one in main.lua line 27.  
The 4:3 ones may look a tad wonky because they're just scaled down, but everything lines up appropriately.  
Everything breaks when you're not full screen btw, and that's not really a fixable issue; that's just how MPV / this script works.  

### 'Advanced'  
To remove the feedback in the top left, change variable "verbose" to false.  
To change what key the script uses, change the variable "key".  
If you want to add more guides, add the filename and guide name to the arrays and leave a bgra formatted file in the "guides" folder.  

Bother MasterofAres#1755 on discord if something breaks


### Images
![Center](https://imgur.com/S9XscjY.png "Center")
![Center](https://imgur.com/8k0cyuB.png "Center")

![Main Diagonal](https://imgur.com/8G7sVgc.png "Main Diagonal")
![Main Diagonal](https://imgur.com/dkNlABV.png "Main Diagonal")

![Thirds](https://imgur.com/OC4fCMz.png "Thirds")
![Thirds](https://imgur.com/fd65mo6.png "Thirds")

![Golden Section](https://imgur.com/KDRTQtK.png "Golden Section")
![Golden Section](https://imgur.com/l4hh5I3.png "Golden Section")

![Harmonic Triangle A](https://imgur.com/4nmyF9P.png "Harmonic Triangle A")
![Harmonic Triangle A](https://imgur.com/ilBZYrm.png "Harmonic Triangle A")

![Harmonic Triangle B](https://imgur.com/8z6d6el.png "Harmonic Triangle B")
![Harmonic Triangle B](https://imgur.com/ygxL2Hf.png "Harmonic Triangle B")

