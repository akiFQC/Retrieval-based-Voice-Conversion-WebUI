FROM pytorch/pytorch:2.0.0-cuda11.7-cudnn8-devel

RUN  apt-get update 
RUN  apt-get install -y --no-install-recommends \
        git \
        git-lfs \
        ffmpeg 
    
COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt
