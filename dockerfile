FROM ubuntu:latest

ENV DEBIAN_FRONTEND=nonintercative
RUN apt-get update
RUN apt-get -y install nodejs
RUN apt-get -y install npm
RUN apt-get -y install expect redis-server
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN npm config set strict-ssl false
RUN npm install -g coffeescript
RUN npm install -g yo@3.1.0
RUN npm install -g generator-hubot
RUN npm install hubot-diagnostics
RUN npm install hubot-help
RUN npm install hubot-pugme
RUN npm install hubot-redis-brain
RUN npm install hubot-rules
RUN npm install hubot-slash-command

# Create hubot user
RUN useradd -d /hubot -m -s /bin/bash -U hubot

# Log in as hubot user and change directory
RUN adduser -h /hubot -s /bin/bash -S hubot
USER hubot
WORKDIR /hubot
RUN mkdir scripts

# Install hubot
RUN yo hubot --owner="Tyler Bennet" --name="BotRay" --description="HuBot on Docker" --adapter="slack"

# Some Adapters / Scripts
RUN npm config set strict-ssl false
RUN npm install hubot-slack --save && npm install
RUN HUBOT_SLACK_TOKEN=xoxb-1756628729348-3075796672833-wWPwY7exPOCRpfXm8fJrHf3S ./bin/hubot --adapter slack

# Activate some built-in scripts
ADD hubot-scripts.json /hubot/

 