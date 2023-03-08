PROJECT_ID=${PROJECT_ID:-$(gcloud config get-value project)}
TAG="gcr.io/${PROJECT_ID}/ubuntu2210"
docker build -f Dockerfiles/Dockerfile.ubuntu2210 -t $TAG .

# Example
# docker run -it -v .:/Scripts --entrypoint /bin/bash $TAG
# cd /Scripts
# cat /etc/os-release