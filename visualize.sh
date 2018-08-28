
# See here for info on 'kubectl proxy' command:
#   https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands#proxy

#PORT=8001
PORT=8002

#kubectl proxy --www=/Users/mjb/src/git/brendandburns.gcp-live-k8s-visualizer --www-prefix=/my-mountpoint/ --api-prefix=/api/

# SRC_DIR=~/src/git/GIT_mjbright/live-k8s-visualizer
SRC_DIR=.


while [ ! -z "$1" ]; do
    case $1 in
        -l) SRC_DIR=~/src/git/larrycai.gcp-live-k8s-visualizer;;
        *)  SRC_DIR=$1;;
    esac
done

set -x
kubectl proxy --www=$SRC_DIR --www-prefix=/ --api-prefix=/api/ --port $PORT
set +x

