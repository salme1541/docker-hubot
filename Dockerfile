FROM node:8.14.1


#Install base packages
RUN npm install -g hubot@3.1.1 coffee-script

#Create new hubot and setup for slack.
RUN cd /root && \
    hubot --create myhubot && \
    cd myhubot && \
    npm install hubot-slack --save && \
    npm install underscore xml2js cron emailjs sugar --save && \
    npm install && \
    echo '["hubot-scripts-kor", "hubot-map-kor"]' > external-scripts.json


#Set environment
ENV TZ Asia/Seoul

#HTTP Listener port 9009
ENV PORT 9009
EXPOSE 9009

#ADD custom scripts
ADD scripts/* /root/myhubot/

WORKDIR /root/myhubot
ENTRYPOINT ["/root/myhubot/bin/hubot", "-a", "slack"]
CMD ["-n", "bot"]
