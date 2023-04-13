#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/jing/UR5_new/src/fmauch_universal_robot/ur_kinematics"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/jing/UR5_new/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/jing/UR5_new/install/lib/python3/dist-packages:/home/jing/UR5_new/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/jing/UR5_new/build" \
    "/usr/bin/python3" \
    "/home/jing/UR5_new/src/fmauch_universal_robot/ur_kinematics/setup.py" \
     \
    build --build-base "/home/jing/UR5_new/build/fmauch_universal_robot/ur_kinematics" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/jing/UR5_new/install" --install-scripts="/home/jing/UR5_new/install/bin"
