#                                 __                 __
#    __  ______  ____ ___  ____ _/ /____  ____  ____/ /
#   / / / / __ \/ __ `__ \/ __ `/ __/ _ \/ __ \/ __  /
#  / /_/ / /_/ / / / / / / /_/ / /_/  __/ /_/ / /_/ /
#  \__, /\____/_/ /_/ /_/\__,_/\__/\___/\____/\__,_/
# /____                     matthewdavis.io, holla!
#
include .make/Makefile.inc

NS                  ?= default
APP                 ?= nexus
PORT				?= 8081
GCE_ZONE			?= us-central1-a
GCE_DISK            ?= nexus-persistent-storage
GCE_SIZE			?= 100

create-disk:

	gcloud compute disks create $(GCE_DISK) --zone $(GCE_ZONE) --size $(GCE_SIZE)

delete-disk:

	gcloud compute disks delete $(GCE_DISK) --zone $(GCE_ZONE)
