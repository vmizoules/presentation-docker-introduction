#run in background (and not a child of current process)
echo "Opening slides in chromium"
(chromium-browser slides.com/dfkjhgfdkjhgfdjkdfg/docker/live#/ &)

echo "Opening terminal"
gnome-terminal --working-directory=$PWD || mate-terminal --working-directory=$PWD

echo "Stopping all containers"
docker stop -t 0 `docker ps -q`

echo "Cleaning docker"
docker rm `docker ps -aq`

echo "Allowing X11 connection"
xhost +


