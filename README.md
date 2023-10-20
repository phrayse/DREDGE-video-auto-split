# DREDGE-video-auto-split
Automatic start and splits with load removal for DREDGE  
.vas compatible with VideoAutoSplit component by ROMaster2 https://github.com/ROMaster2/LiveSplit.VideoAutoSplit

# Installation

1. Find your LiveSplit folder and extract the contents of `LiveSplit.VideoAutoSplit.zip` into the Components folder. If you are updating from a previous version, replace the existing files.
2. Open OBS, and from the Controls pane open the Virtual Camera settings.
3. Set the `Output Type` to `Source`, `Output Selection` to your capture card or game source, and press Start Virtual Camera.
4. Start LiveSplit as Administrator (you must always run LiveSplit as Administrator)
5. In LiveSplit's layout editor, click the big (+) button, hover over control, and add the `Video Auto Splitter` component.
6. Open the component's settings by double clicking on `Video Auto Splitter` in the list.
7. For `Game Profile` use the `DREDGE.vas` file.
8. For `Capture Device`, select the `OBS Virtual Camera`.
9. Under the `Scan Region` tab, ensure that you have the width and height set to the dimensions of the virtual camera.
  - Resolutions other than 720p or 1080p may not work properly.
11. Close the layout settings and save, then restart LiveSplit.

# Usage

1. Launch game, open OBS, start Virtual Camera.
2. Open LiveSplit as Administrator.
3. Confirm scanner connected properly.
4. Start run.

## Confirm scanner connection:

1. Right-click LiveSplit > edit layout > double-click the `Video Auto Splitter` component.
2. Verify that in the `Scan Region` tab you see a preview of the game, and that the blue rectangle is covering the DREDGE logo exactly.
  - If no preview is showing, change the `Capture Device`, wait a couple seconds until the blue colour of the menu disappears indicating the process is complete, then change back to OBS Virtual Camera and check the Scan Region page again.

# Troubleshooting

- The VideoAutoSplit plugin tends to break on the `Scan Region` tab so if things seem to just stop working, restart LiveSplit.
- Make sure you have the color range set to "Full" on your game capture. In OBS this is found under the game capture settings.
- If the blue square does not appear on top of the logo, make sure that you have the width and height set correctly, and that the game capture takes up the full screen.
  - Make sure you don't have any zoom set in your console settings (`TV Settings` > `Adjust Screen Size`).
- Anything else not covered here send me a message with the error log.
