FROM centos:7

ENV PLEX_MEDIA_SERVER_APPLICATION_SUPPORT_DIR="/plex/Application Support"
ENV PLEX_MEDIA_SERVER_HOME=/usr/lib/plexmediaserver
ENV PLEX_MEDIA_SERVER_MAX_PLUGIN_PROCS=6
ENV PLEX_MEDIA_SERVER_TMPDIR=/tmp
ENV LD_LIBRARY_PATH=/usr/lib/plexmediaserver
ENV LC_ALL=en_US.UTF-8
ENV LANG=en_US.UTF-8

RUN yum install -y https://downloads.plex.tv/plex-media-server/0.9.16.6.1993-5089475/plexmediaserver-0.9.16.6.1993-5089475.x86_64.rpm
RUN /bin/sh -c '/usr/bin/test -d "${PLEX_MEDIA_SERVER_APPLICATION_SUPPORT_DIR}" || /bin/mkdir -p "${PLEX_MEDIA_SERVER_APPLICATION_SUPPORT_DIR}"'

EXPOSE 32400

VOLUME /plex

CMD /bin/sh -c '/usr/lib/plexmediaserver/Plex\ Media\ Server'