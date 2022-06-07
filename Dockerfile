# @nikitabots #

FROM nikolaik/python-nodejs:python3.9-nodejs16
RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y
COPY requirements.txt /requirements.txt
RUN cd /
RUN pip3 install --upgrade pip
RUN pip3 install -U -r requirements.txt
RUN mkdir /WOS-MUSIC
WORKDIR /WOS-MUSIC
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
