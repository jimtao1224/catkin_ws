# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;rospy;maxon_epos2;controller_manager;hardware_interface;std_msgs;sensor_msgs;message_runtime".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lwheel_controller".split(';') if "-lwheel_controller" != "" else []
PROJECT_NAME = "wheel_controller"
PROJECT_SPACE_DIR = "/home/jim/catkin_ws/install"
PROJECT_VERSION = "0.0.0"
