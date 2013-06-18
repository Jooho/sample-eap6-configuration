export EAP_HOME=/home/jooho/Applications/JBoss/EAP/jboss-eap-6.0
export CONF_HOME=/Jhouse/TestCases/EAP601_Test/D_Multiple_Modcluster/Domain_AppB
export OFFSET=100
export MULTICAST_ADDR=230.1.0.2
export JMS_MULTICAST_ADDR=231.7.0.2
export MODCLUSTER_MULTICAST_ADDR=224.0.1.105
export HOST_CONTROLLER_PORT=19999

# JVM Options : Server
export JAVA_OPTS="-server $JAVA_OPTS"

export JAVA_OPTS=" $JAVA_OPTS -Djboss.domain.base.dir=$CONF_HOME"
export JAVA_OPTS=" $JAVA_OPTS -Djboss.management.native.port=$HOST_CONTROLLER_PORT"
export JAVA_OPTS=" $JAVA_OPTS -Djboss.default.multicast.address=$MULTICAST_ADDR"
export JAVA_OPTS=" $JAVA_OPTS -Djboss.messaging.group.address=$JMS_MULTICAST_ADDR"
export JAVA_OPTS=" $JAVA_OPTS -Djboss.modcluster.multicast.address=$MODCLUSTER_MULTICAST_ADDR"
export JAVA_OPTS=" $JAVA_OPTS -Djboss.socket.binding.port-offset=$OFFSET"


 $EAP_HOME/bin/domain.sh
 
