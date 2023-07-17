# Run with podman 
    $ socket_dir=/tmp/.X11-unix
    $ socket="${XDG_RUNTIME_DIR}/${WAYLAND_DISPLAY}"
    $ podman run -it --env "DISPLAY=${DISPLAY}" --rm \
        --device /dev/dri \
        -v "$socket:$socket:Z" -v "$socket_dir:$socket_dir:ro" -v"$socket.lock:$socket.lock:Z" \
        --env "XDG_RUNTIME_DIR=${XDG_RUNTIME_DIR}"  --env "WAYLAND_DISPLAY=${WAYLAND_DISPLAY}" \
        -v .:/app:Z  --security-opt label=type:container_runtime_t 0555