export ZONE="europe-west1-b"
#"us-west2-b"
#"us-west2-b" # budget: "us-west1-b"
export INSTANCE_NAME="my-fastai-instance-p100"
#"dl-big-1"
#"my-fastai-instance"

gcloud compute ssh --zone=$ZONE jupyter@$INSTANCE_NAME -- -L 8080:localhost:8080
