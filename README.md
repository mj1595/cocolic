## Build Container
```bash
docker build -t squishcoco .
```
## Run Container
```bash
docker run -it --net host -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY --name cocolic {IMAGE-NAME}
```
## Start & Attach Container
```bash
docker start cocolic
docker attach cocolic
```
