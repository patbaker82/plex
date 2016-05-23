!#/bin/bash

if [ ! -d "${PLEX_MEDIA_SERVER_APPLICATION_SUPPORT_DIR}" ] ; then
    mkdir -p "${PLEX_MEDIA_SERVER_APPLICATION_SUPPORT_DIR}"
fi

if [ -f "${PLEX_MEDIA_SERVER_PIDFILE}" ]; then
    rm "${PLEX_MEDIA_SERVER_PIDFILE}"  
fi

/usr/lib/plexmediaserver/Plex\ Media\ Server