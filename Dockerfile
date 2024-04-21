FROM pytorch/pytorch:2.2.1-cuda12.1-cudnn8-runtime

ARG FASTCHAT_VERSION="main"

RUN pip3 install --upgrade pip

COPY SD-ControlNet-TripoSR-main /SD-ControlNet-TripoSR-main

WORKDIR /SD-ControlNet-TripoSR-main

RUN pip3 install .