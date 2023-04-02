## MPV Composition Guides
This script overlays basic composition guides on your mpv video. 

### Installation
Scripts are usually placed in `~/.mpv/scripts/` (macOS/Linux) or `%AppData%\mpv\scripts\` (Windows).  
Put the entire downloaded folder in this directory. Do not rearrange individual files or directories.  
The name of the directory is irrelevant, as long as `...\scripts\whatever\main.lua` is preserved, it should work.  
See: https://mpv.io/manual/master/#lua-scripting and https://github.com/mpv-player/mpv/wiki/User-Scripts  

### Usage  
g &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cycle through the guides  
G &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;reset back to no guides  
CTRL g&nbsp;&nbsp;cycle between 16:9 mode and 4:3 mode  

### Notes  
Everything breaks when you're not full screen btw, and that's not really a fixable issue; that's just how MPV / this script works.  
The 4:3 ones may look a tad wonky because of the scaling, but everything lines up appropriately

### 'Advanced'  
To remove the feedback in the top left, in main.lua change variable `verbose` to false.  

To change what key the script uses, in main.lua set the variable `key` to another character.  
To disable automatic keybinding, in main.lua set the variable `key` to `nil`  

To add hooks to input.conf, use the key-bindings `comp_guide_cycle`, `comp_guide_clear`, and `comp_guide_43`. For example:  
`h script-binding comp_guide_cycle`  
`Alt+q script-binding comp_guide_clear`  
`Ctrl+m script-binding comp_guide_43`  

If you want to add more guides, add the filename and guide name to the arrays and leave a bgra formatted file in the "guides" folder.

Open an issue or bother MasterofAres#1755 on discord if something breaks


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

