# pull official base image
FROM node:13.12.0-alpine
# set working directory to the specified 'lastName_firstName_site'
WORKDIR /yao_qiang_site
# add `/yao_qiang_site/node_modules/.bin` to $PATH
ENV PATH /yao_qiang_site/node_modules/.bin:$PATH
# install app dependencies
COPY package.json ./
COPY package-lock.json ./
RUN npm install --silent
RUN npm install react-scripts@3.4.1 -g --silent
# add app
COPY . ./
# start app
CMD ["npm", "start"]