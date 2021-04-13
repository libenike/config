cd "$(dirname "$0")"/..
platform=ubuntu
version=20.04
docker build -t config_"$platform"_"$version" --build-arg platform="$platform":"$version" -f docker/Dockerfile .
docker run -it --rm config_"$platform"_"$version"
docker image rm config_"$platform"_"$version"
