## SD-ControlNet-TripoSR-main: Stable Diffusion with ControlNet and TripoSR

This repository provides an implementation of Stable Diffusion with ControlNet and TripoSR, offering advanced image generation capabilities.

git clone --recursive  https://github.com/litrane/theta-sd-demo.git

#### Prerequisites

* Nvidia-docker2
```bash
distribution=$(. /etc/os-release;echo $ID$VERSION_ID) \
   && curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add - \
   && curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list


sudo apt-get update
sudo apt-get install -y nvidia-docker2

sudo systemctl restart docker
```

### Docker Setup

For a more streamlined experience, you can use the provided Dockerfile to build and run the application in a container.

1. **Build the Docker image:**

```bash
docker build -f Dockerfile -t sd_test .
```

2. **Run the Docker container:**

```bash
sudo docker run --gpus all -p 7860:7860 sd_test
```

This will expose the web interface on port 7860 of your host machine.
