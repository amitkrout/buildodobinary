# Dockerfile to build odo binary

FROM registry.svc.ci.openshift.org/openshift/release:golang-1.11

RUN mkdir -p $GOPATH/src/github.com/openshift &&\
    cd $GOPATH/src/github.com/openshift &&\
    git clone https://github.com/openshift/odo &&\
    cd odo &&\
    make

