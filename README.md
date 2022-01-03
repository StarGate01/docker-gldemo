# docker-gldemo
Expose GUI applications from a Docker container


## Dependencies 

Install Docker and Docker Compose.

## Build the image

Build the image: 

`docker-compose build gldemo_x11` or `docker-compose build gldemo_wayland`.

## Run the image

`./start.sh gldemo_x11` or `./start.sh gldemo_wayland` (untested).

If everything works, a windows displaying three turning gears should pop up, and the console should print information about your (integrated) GPU.