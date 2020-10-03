# ARG BUILD_FROM=alpine:latest

# FROM $BUILD_FROM

# RUN apk --update --no-cache add bash nfs-utils && \
#                                                   \
#     # remove the default config files
#     rm -v /etc/idmapd.conf /etc/exports

# # https://www.linvirtshell.com/2018/06/difference-between-nfsv2-nfsv3-and-nfs4.html
# # http://wiki.linux-nfs.org/wiki/index.php/Nfsv4_configuration
# RUN mkdir -p /var/lib/nfs/rpc_pipefs                                                     && \
#     mkdir -p /var/lib/nfs/v4recovery                                                     && \
#     echo "rpc_pipefs  /var/lib/nfs/rpc_pipefs  rpc_pipefs  defaults  0  0" >> /etc/fstab && \
#     echo "nfsd        /proc/fs/nfsd            nfsd        defaults  0  0" >> /etc/fstab

# RUN apk --update --no-cache add bash nfs-utils
# RUN apk --update --no-cache add bash nfs-utils
# EXPOSE 2049

# # setup entrypoint
# COPY ./entrypoint.sh /usr/local/bin
# ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

FROM debian:buster

EXPOSE 2049

# setup entrypoint
COPY ./entrypoint.sh /usr/local/bin
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]