# Docker Unison

A docker image to use bidirectional synchronization tool Unison.
This allows you to work with UNIX filesystem while working on a Windows Host.

## Use Case example
1. Create a docker volume : $\{VOLUME_HOST_NAME\}
2. Run a Unison docker container : run.sh
3. Run a NodeJs container with $\{VOLUME_HOST_NAME\}

Your NodeJs container will then work with UNIX filesystem with a refresh every
two seconds.
