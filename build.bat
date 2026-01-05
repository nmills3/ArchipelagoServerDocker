set VERSION=%1
docker build -t nmills688/archipelago-server:%VERSION% --build-arg ARCHIPELAGO_VERSION=%VERSION% .
docker push nmills688/archipelago-server:%VERSION%
docker image rm nmills688/archipelago-server:%VERSION%
echo Done