# Source: https://gist.github.com/da48772c54dcf09a45bef5d4d778a6e9

###################################
# Using Docker Multi-Stage Builds #
# https://youtu.be/zpkqNPwEzac    #
###################################

# Referenced videos:
# - Kaniko - Building Container Images In Kubernetes Without Docker: https://youtu.be/EgwVQN6GNJg
# - Skaffold - How to Build and Deploy In Kubernetes: https://youtu.be/qS_4Qf8owc0

#########
# Setup #
#########

git clone https://github.com/vfarcic/docker-multistage-demo.git

cd docker-multistage-demo

#####################
# Simple Dockerfile #
#####################

cat Dockerfile-simple

docker image build --tag demo \
    --file Dockerfile-simple .

##################
# Fat Dockerfile #
##################

cat Dockerfile-fat

docker image build --tag demo \
    --file Dockerfile-fat .

docker image build --tag demo \
    --file Dockerfile-fat .

docker image list

#################################
# Multi-stage Dockerfile builds #
#################################

cat Dockerfile

docker image build --tag demo .

docker image list
