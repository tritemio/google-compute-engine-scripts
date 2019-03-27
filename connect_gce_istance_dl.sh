#!/bin/bash

export ZONE="europe-west1-b"
export INSTANCE_NAME="dl-instance-p100"

gcloud compute ssh --zone=$ZONE jupyter@$INSTANCE_NAME -- -L 8080:localhost:8080
