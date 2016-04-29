FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y openjdk-7-jre xvfb  picocom git curl xz-utils
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

ENV ARDUINO_VERSION 1.6.8
RUN curl -o arduino.tar.xz https://downloads.arduino.cc/arduino-${ARDUINO_VERSION}-linux64.tar.xz
RUN xz -d arduino.tar.xz && tar -xf arduino.tar -C /usr/local/share  && rm -f arduino.tar
RUN ln -s /usr/local/share/arduino-${ARDUINO_VERSION} /usr/local/share/arduino \
	&& ln -s /usr/local/share/arduino-${ARDUINO_VERSION}/arduino /usr/local/bin/arduino

ENV DISPLAY :1.0

COPY ./start.sh /usr/local/bin/start