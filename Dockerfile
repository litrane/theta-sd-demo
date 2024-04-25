FROM pytorch/pytorch:2.2.1-cuda12.1-cudnn8-runtime

ARG FASTCHAT_VERSION="main"

RUN pip3 install --upgrade pip

COPY SD-ControlNet-TripoSR-main /SD-ControlNet-TripoSR-main

WORKDIR /SD-ControlNet-TripoSR-main

RUN apt-get update && apt-get install -y git libgl1 libglib2.0-0 build-essential

RUN pip install git+https://github.com/tatsy/torchmcubes.git

RUN pip install .

COPY gradio_app.py ./

EXPOSE 7860

ENV GRADIO_SERVER_NAME="0.0.0.0"

CMD ["python", "gradio_app.py"]