# Penzil

![Preview of Penzil user interface](preview.png?raw=true "Preview of Penzil user interface")

Penzil is a web application for sketching in 3d, powered by three.js and Vue.js. It is intended to be a lightweight
version of Blender's Grease pencil for the web. Penzil is designed primarily for tablets with pen input, but it works
seamlessly on desktop computers as well.

The project is currently on pause and offered as-is.

## Features

- 3D sketching with pen/mouse input
- Eraser tool
- Camera controls for 3D navigation
- Save/Load functionality (.json format)
- Export compatibility with Blender
- Fully client-side application (no server required)


### Run Using Pre-built Docker Image
```bash
docker pull mohitburkule/penzil:latest
docker run -p 8080:80 mohitburkule/penzil:latest
```

## Basic Instructions

- You can draw/erase with left mouse button, finger or pen on top of the "3d canvas", the white plane in the 3d scene.
- You can adjust the position of the "3d canvas" with the arrow-heads or the arcs at the center.
- You can move and rotate the camera using the touchpad, two fingers or by pressing the alt key and dragging with the
  left mouse button. Panning is done with three fingers or by pressing the Spacebar and dragging with the left mouse
  button.
- You can swap your primary tool between pencil and eraser from the selector at the top.

## Saving, Loading and Exporting

- Penzil is a fully local application. No servers are involved. Because of the size of the files (and, partially, scope) saving and loading is currently done manually. You can save a .json file with your drawing and restore it with Load. Big files will take a long time to load as the geometries are not optimized yet.
- Penzil exports in a format friendly to Blender's grease pencil but an importer is necessary. The importer doesn't exist yet but I have a Python script that can be run from Blender. If you want to import into Blender, join the Penzil Discord server. You can find the link in the app.
