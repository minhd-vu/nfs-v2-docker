PHONY: buildnfs 

buildnfs:
	docker image rm nfsimage:latest || true
	cd ./nfs && \
	docker build -t nfsimage -f nfs.dockerfile .

buildnfs2:
	docker image rm nfsimage:2 || true
	cd ./nfs && \
	docker build -t nfsimage:2 -f nfsv2.dockerfile .
