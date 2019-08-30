FROM microsoft/dotnet:2.1-aspnetcore-runtime AS base

RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get update && apt-get upgrade -y && \
    apt-get install -y libxtst6 libfontconfig1 libgtk2.0-dev x11-apps

WORKDIR /home/

COPY SquishCocoInstall /app/SquishCocoInstall

RUN useradd -ms /bin/bash myapp
RUN chown myapp /app/SquishCocoInstall
USER myapp

WORKDIR /home/myapp
RUN chmod a+x /app/SquishCocoInstall






