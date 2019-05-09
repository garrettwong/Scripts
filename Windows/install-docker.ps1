Install-Module DockerMsftProvider -Force
Install-Package Docker -ProviderName DockerMsftProvider -Force
# Check if a reboot is required, and if yes, restart your instance:

(Install-WindowsFeature Containers).RestartNeeded
# If the output of this command is Yes, then restart the server with:

Restart-Computer
# Test your Docker Engine - Enterprise installation by running the hello-world container.

docker run hello-world:nanoserver

# Unable to find image 'hello-world:nanoserver' locally
# nanoserver: Pulling from library/hello-world
# bce2fbc256ea: Pull complete
# 3ac17e2e6106: Pull complete
# 8cac44e17f16: Pull complete
# 5e160e4d8db3: Pull complete
# Digest: sha256:25eac12ba40f7591969085ab3fb9772e8a4307553c14ea72d0e6f98b2c8ced9d
# Status: Downloaded newer image for hello-world:nanoserver

# Hello from Docker!
# This message shows that your installation appears to be working correctly.