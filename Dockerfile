FROM microsoft/dotnet:2.1-aspnetcore-runtime AS base

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y libxtst6 libfontconfig1 libgtk2.0-dev x11vnc xvfb

RUN mkdir ~/.vnc

RUN x11vnc -storepasswd 1234 ~/.vnc/passwd

WORKDIR /home/

COPY SquishCocoInstall /app/SquishCocoInstall

RUN useradd -ms /bin/bash myapp
RUN chown myapp /app/SquishCocoInstall
USER myapp

WORKDIR /home/myapp
RUN chmod a+x /app/SquishCocoInstall
RUN cd /app/SquishCocoInstall/bin/
