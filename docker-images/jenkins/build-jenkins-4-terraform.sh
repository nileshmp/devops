# docker build --no-cache --tag="jenkins-aws-ready" . &> build.log
docker build --build-arg AWS_ACCESS_KEY=$1 --build-arg AWS_SECRET_KEY=$2 --build-arg AWS_REGION=ap-south-1 --tag="jenkins-aws-ready" .