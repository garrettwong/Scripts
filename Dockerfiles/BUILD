PROJECT_ID=${PROJECT_ID:-$(gcloud config get-value project)}
TAG="gcr.io/${PROJECT_ID}/ubuntu2210"
docker build -f Dockerfiles/Dockerfile.ubuntu2210 -t $TAG .


# Example
# docker run -it -v .:/Scripts --entrypoint /bin/bash $TAG
# cd /Scripts
# cat /etc/os-release

# docker run -t -v .:/Scripts gcr.io/gwc-sandbox/ubuntu2210 -c 'ls Scripts'

docker build -f Dockerfiles/Dockerfile.debian12 -t "gcr.io/${PROJECT_ID}/debian12" .
docker run -t -v .:/Scripts gcr.io/gwc-sandbox/debian12 -c 'ls Scripts'
docker run -t -v .:/Scripts gcr.io/gwc-sandbox/debian12 -c 'curl https://www.google.com'