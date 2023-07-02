# LISSinator remote control

Switch between screens on a mac with a bluetooth keyboard as a remote control
using [hammerspoon](https://www.hammerspoon.org/) and [karabiner](https://karabiner-elements.pqrs.org/).

Within my lissinator set up this is convenient because I am controlling a computer while
using midi devices and walking. I then use a computer for a number of activities including
a virtual guitar effects change, a sheet music display, a media viewer and apps for language 
learning.

A similar approach is likely useful for similar set 5htings.


#Installation
1. Obtain a bluetooth keyboard suitable for use as a remoe control. I used [A dual band Rii keyboard](https://www.amazon.co.uk/Wireless-Multimedia-Rii-Bluetooth-Rechargeable/dp/B07RNCJ39B/ref=asc_df_B07RNCJ39B/?tag=googshopuk-21&linkCode=df0&hvadid=232618755244&hvpos=&hvnetw=g&hvrand=10126625573233861080&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=1006886&hvtargid=pla-786434801177&psc=1)
1. Install [hammerspoon](https://www.hammerspoon.org/)
1. Install [karabiner](https://karabiner-elements.pqrs.org/)
1. Ensure that python3 is installed
1. Find the device id from Karabiner. Karabiner > Devices > And copy the Vendor ID and Product ID
1. Clone this repository and in a terminal run `./make-device-config --vendor VENDORID --product PRODUCTID`
1. A command to run will produced by the terminal. Run this in the terminal.
1. Enable the LISSinator-remote complex rule in karabiner.


#Development
`remote.karabiner.json` contains a karabiner config that is not specific to one keyboard. 

When installing karabiner configuration be sure to remove old rules which will often have similar names Karabiner sometimes segfaults if the configuration is in the wrong format
Karabiner immediately reloads configuration
If the config file does not parse karabiner will not load it.

Documentation of karabiner can be found [here](https://karabiner-elements.pqrs.org/docs/json/complex-modifications-manipulator-definition/).


Run the following command:

```
open karabiner://karabiner/assets/complex_modifications/import?url=file://$HOME/LISSinator/mac-remote/remote.karabiner.json
```
