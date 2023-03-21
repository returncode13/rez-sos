#!/bin/sh


export MINES_JTK_HOME=/home/dev/app/rez-jtk
export LIBS_HOME=/home/dev/app/rez-sos
export IGI_HOME=/home/dev/app/rez-sos
export JAVA_VERSION=1.8.0

export CLASSPATH=\
$MINES_JTK_HOME/core/build/libs/edu-mines-jtk-1.0.0.jar:\
$MINES_JTK_HOME/core/build/classes/java/main:\
$LIBS_HOME/core/build/classes:\
$LIBS_HOME/libs/gluegen-rt.jar:\
$LIBS_HOME/libs/jogl-all.jar:\
$LIBS_HOME/libs/jythonlib.jar:\
$IGI_HOME/build/libs/sos.jar:\
/usr/lib/jvm/jdk-17/lib/jrt-fs.jar:\
.

java -server -ea -Xmx18g -verbose\
-Djava.library.path=$JAVA_LIBRARY_PATH \
-Djava.util.logging.config.file=$HOME/.java_logging_config \
-Dpython.cachedir.skip=false \
-Dpython.cachedir=/tmp/cachedir \
org.python.util.jython $*