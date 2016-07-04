Sonarr Docker Image
==

[Docker](https://www.docker.com/) image for [Sonarr](https://sonarr.tv).

Here is a Docker Compose example of running this container:

    version: '2'
    services:
      sonarr:
        image: sohrab/sonarr
        ports:
          - "8989:8989"
        volumes:
          # stores non-ephemeral config
          - /data/sonarr/config:/volumes/config
          # optionally mount a directory so it can be configured as Watch Folder
          - /data/sonarr/completed:/volumes/completed
          # the destination media store
          - /media/store:/volumes/media
          - /etc/localtime:/etc/localtime:ro
        restart: always
