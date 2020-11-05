container_name=$1

xhost +local:
docker run -it --net=host --gpus all  \               # this enable nvidia driver
  --user=$(id -u) \
  -e DISPLAY=$DISPLAY \
  -e QT_GRAPHICSSYSTEM=native \
  -e NVIDIA_DRIVER_CAPABILITIES=all \
  -e XAUTHORITY \
  -e USER=$USER \                                     # use the same username as you
  --workdir=/home/$USER/ \
  -v "/tmp/.X11-unix:/tmp/.X11-unix:rw" \           
  -v "/etc/passwd:/etc/passwd:rw" \        
  -e "TERM=xterm-256color" \
  -v "/home/$USER/code/docker_home:/home/$USER/" \    # map the "/home/$USER/code/docker_home" outside docker as the docker container's home dir
  -v "/run/media/$USER/Samsung_T5/:/home/$USER/media/Samsung_T5" \   # map the external SSD/HDD into docker container
  --device=/dev/dri:/dev/dri \
  --name=${container_name} \
  umrobotics/cuda_arch:latest
