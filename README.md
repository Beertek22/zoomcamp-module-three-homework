# zoomcamp-module-three-homework









How to run:
    Install gcp cli:
    curl -sSL https://sdk.cloud.google.com | bash

    Login to GCP:
    gcloud auth login
    gcloud auth application-default login

    Build docker image:
    docker build -t yellow-taxi-gcs .

    Run docker:
    docker run --rm \
    -v $HOME/.config/gcloud:/root/.config/gcloud \
    yellow-taxi-gcs