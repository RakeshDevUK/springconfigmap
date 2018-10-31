#export JAVA_HOME=`pwd`/jdk-10.0.2
#export PATH=$JAVA_HOME/bin:$PATH

rm -rf jdk-11-mimimal

jlink --module-path $JAVA_HOME/jmods --verbose --add-modules java.desktop,java.base,java.logging,java.xml,jdk.unsupported,java.sql,java.naming,java.management,java.security.jgss,java.instrument --compress 2 --no-header-files --no-man-pages --output jdk-11-mimimal 
