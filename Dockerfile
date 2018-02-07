# Customized Docked Fedora 27 for running Fluka
# ========================================================
# dr.vittorio.boccone@ieee.org
# vittorio.boccone@dectris.com

FROM drbokko/fedora_27-fluka

# Add default user
RUN useradd fluka

ENV LOGNAME=flukar
ENV USER=fluka

RUN mkdir -p /opt/fluka
RUN chown -R fluka:fluka /opt/fluka

ENV FLUFOR=gfortran
ENV FLUPRO=/opt/fluka

COPY *.tar.gz /tmp

RUN tar -zxvf /tmp/*.tar.gz -C /opt/fluka
RUN cd /opt/fluka; make

