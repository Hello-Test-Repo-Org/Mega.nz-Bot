FROM archlinux:latest

RUN pacman -Syyu --noconfirm
RUN pacman -S --noconfirm git python-pip ffmpeg megatools gcc
RUN pip3 install -U pip
RUN mkdir /app/
WORKDIR /app/
COPY . /app/
RUN pip3 install -U setuptools
RUN pip3 install -U -r requirements.txt
CMD bash startup.sh
