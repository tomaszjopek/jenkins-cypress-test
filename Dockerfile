FROM cypress/base:12.16.1

RUN mkdir /usr/jenkins-cypress-test
WORKDIR /usr/jenkins-cypress-test

COPY ./cypress /usr/jenkins-cypress-test/cypress
COPY ./cypress.json /usr/jenkins-cypress-test/
COPY ./package.json /usr/jenkins-cypress-test/
COPY ./package-lock.json /usr/jenkins-cypress-test/

#RUN npm install
#ENTRYPOINT npx cypress open
