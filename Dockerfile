FROM node:12
WORKDIR /opt/
RUN git clone https://github.com/aliasaria/scrumblr.git
WORKDIR /opt/scrumblr

RUN npm install --loglevel verbose

CMD node server.js --server:baseurl='/' --server:port=8080 --redis:url='redis://rejson:6379'
