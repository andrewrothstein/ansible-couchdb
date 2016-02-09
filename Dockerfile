FROM andrewrothstein/docker-ansible-onbuild:ubuntu_trusty
MAINTAINER Andrew Rothstein andrew.rothstein@gmail.com

# Method for building container from the local edits
ADD . role
WORKDIR role
RUN ansible-playbook test.yml

RUN couchdb -c
