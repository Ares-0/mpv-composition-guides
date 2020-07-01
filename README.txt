MPV Composition Guides
This script overlays basic composition guides on your mpv video. 

Installation
Scripts are usually placed in ~/.mpv/scripts/ (macOS/Linux) or %AppData%\mpv\scripts\ (Windows). Put the entire folder in this directory. Do not rearrange individual files or directories.  
See: https://mpv.io/manual/master/#lua-scripting and https://github.com/mpv-player/mpv/wiki/User-Scripts  

Usage
g		cycle through the guides
G		reset back to no guides
CTRL g	cycle between 16:9 mode and 4:3 mode

Notes
This script tries to get the default MPV script directory, but if yours is different, just put the correct one in main.lua line 27.
Everything breaks when you're not full screen btw, and that's not really a fixable issue; that's just how MPV / this script works.
The 4:3 ones may look a tad wonky because they're just scaled down, but everything lines up appropriately

'Advanced'
To remove the feedback in the top left, change variable "verbose" to false.
To change what key the script uses, change the variable "key".
If you want to add more guides, add the filename and guide name to the arrays and leave a bgra formatted file in the "guides" folder.

Bother MasterofAres#1755 on discord if something breaks

Images: https://imgur.com/a/05uoXJj
