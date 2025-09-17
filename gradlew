#!/usr/bin/env sh

#
# Copyright 2015 the original author or authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

##############################################################################
##
##  Gradle start up script for UN*X
##
##############################################################################

# Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass JVM options to this script.
DEFAULT_JVM_OPTS='"-Xmx64m" "-Xms64m"'

APP_NAME="Gradle"
APP_BASE_NAME=`basename "$0"`

# Use the maximum available, or set MAX_FD != -1 to use that value.
MAX_FD="maximum"

# For Cygwin, ensure paths are in UNIX format before anything is touched
if test -n "`uname | grep CYGWIN`"; then
    [ -n "$JAVA_HOME" ] && JAVA_HOME=`cygpath --unix "$JAVA_HOME"`
fi

# Attempt to set APP_HOME
# Resolve links: $0 may be a link
PRG="$0"
while [ -h "$PRG" ] ; do
    ls=`ls -ld "$PRG"`
    link=`expr "$ls" : '.*-> KATEX_INLINE_OPEN.*KATEX_INLINE_CLOSE$'`
    if expr "$link" : '/.*' > /dev/null; then
        PRG="$link"
    else
        PRG=`dirname "$PRG"`"/$link"
    fi
done

APP_HOME=`dirname "$PRG"`

# Absolutize APP_HOME
APP_HOME=`cd "$APP_HOME" && pwd`


# Add the JAR to the CLASSPATH
CLASSPATH="$APP_HOME"/gradle/wrapper/gradle-wrapper.jar

# For Cygwin, switch paths to Windows format before running java
if test -n "`uname | grep CYGWIN`"; then
    APP_HOME=`cygpath --path --windows "$APP_HOME"`
    CLASSPATH=`cygpath --path --windows "$CLASSPATH"`
fi

# Discover JAVA_HOME
if [ -n "$JAVA_HOME" ] ; then
    if [ -x "$JAVA_HOME/jre/sh/java" ] ; then
        # IBM's JDK on AIX uses jre/sh/java
        JAVACMD="$JAVA_HOME/jre/sh/java"
    else
        JAVACMD="$JAVA_HOME/bin/java"
    fi
    if [ ! -x "$JAVACMD" ] ; then
        die "ERROR: JAVA_HOME is set to an invalid directory: $JAVA_HOME

Please set the JAVA_HOME variable in your environment to match the
location of your Java installation."
    fi
else
    JAVACMD="java"
    which java >/dev/null 2>&1 || die "ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.

Please set the JAVA_HOME variable in your environment to match the
location of your Java installation."
fi

# Increase the maximum number of open files
if [ "`uname`" != "Darwin" ] ; then
    if [ "$MAX_FD" = "maximum" -o "$MAX_FD" = "max" ] ; then
        # Maximum number of files is determined by the system
        ulimit -n `ulimit -H -n`
    elif [ "$MAX_FD" != "unlimited" -a "$MAX_FD" != "-1" ] ; then
        ulimit -n $MAX_FD
    fi
fi

# Collect all arguments for the java command, following symlinks
# until the real path is determined.
# This is needed to correctly handle paths with spaces, etc.
#
# (This loop is based on the one in Apache's catalina.sh)
#
# Use the maximum available, or set MAX_FD != -1 to use that value.
#
# Reset the CLASSPATH variable.
#
# (The CLASSPATH variable is used by the shell, not the Java process.)
#
# (The -Xmx and -Xms options are passed to the Java process.)
#
# (The -D options are passed to the Java process.)
#
# (The -classpath option is passed to the Java process.)
#
# (The main class is passed to the Java process.)
#
# (The command-line arguments are passed to the Java process.)
#
# We are going to use the Java exec form and give it a single argument, the
# command line. This is for two reasons:
#
# 1. This is much simpler.
# 2. If we tried to build up an array of arguments, we would have problems
#    with spaces in arguments.
#
# This is not a problem when using the Groovy script. This is only a problem
# when using the shell script.
#
# We have to escape the double quotes in the arguments.
#
# This script is passed to the exec command, which is then passed to the
# Java process. The Java process is then passed to the operating system,
# which is then passed to the shell.
#
# We need to escape the double quotes in the arguments so that the shell
# does not interpret them.
#
# The arguments are passed to the Java process as a single string.
#
# The Java process then splits the string into an array of strings.
#
# The Java process then passes the array of strings to the main method.
#
# The main method then parses the array of strings.
#
# The main method then executes the command.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
#
# We are passing the command line as a single string to the Java process.
#
# We are escaping the double quotes in the command line so that the shell
# does not interpret them.
#
# We are using the Java exec form, which takes a single string as an argument.
-```
