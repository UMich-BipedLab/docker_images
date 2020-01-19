## CVO
This docker file sets up the environment for CVO. It aims at installing all non-conflicting related softwares, and encourages download-and-run.


### How to build the docker image from `Dockerfile`?
If you want to make any changes to this docker image, edit the `Dockerfile`. If any changes happends, remember to update the `LABEL version` inside. 
Then to build the docker image so that you can run it, type `docker build --tag umrobotics/cuda_arch  . `


### How to run this docker file?
`bash run_cuda_docker.bash [container_name]`
