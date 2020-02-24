container_name=$1

xhost +local:
docker run -it --net=host --gpus all \
  --user=$(id -u) \
  -e DISPLAY=$DISPLAY \
  -e QT_GRAPHICSSYSTEM=native \
  -e NVIDIA_DRIVER_CAPABILITIES=all \
  -e XAUTHORITY \
  -e USER=$USER \
  --workdir=/home/$USER/ \
  -v "/tmp/.X11-unix:/tmp/.X11-unix:rw" \
  -v "/etc/passwd:/etc/passwd:rw" \
  -e "TERM=xterm-256color" \
  -v "/home/$USER/code/docker_home:/home/$USER/" \
  -v "/run/media/$USER/Samsung_T5/:/home/$USER/code/docker_home/media/Samsung_T5" \
  --device=/dev/dri:/dev/dri \
  --name=${container_name} \
  umrobotics/cuda_arch:latest
