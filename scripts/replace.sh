#OPENSHIFT_INTERNAL_IP="127.0.0.1"
#OPENSHIFT_DIY_LOG_DIR="/tmp"
#OPENSHIFT_DATA_DIR="/tmp"
#OPENSHIFT_REPO_DIR="/srv/mongo-replica-config"
#MONGO_INSTANCE_PORT="30001"

TEMPLATE_FILE=$OPENSHIFT_REPO_DIR/mongo/mongodb.conf.tmpl
CONF_FILE=$OPENSHIFT_DATA_DIR/mongo/mongodb.conf

sed -e "\
s@`echo '$OPENSHIFT_INTERNAL_IP'`@$OPENSHIFT_INTERNAL_IP@;\
s@`echo '$MONGO_INSTANCE_PORT'`@$MONGO_INSTANCE_PORT@;\
s@`echo '$OPENSHIFT_DIY_LOG_DIR'`@$OPENSHIFT_DIY_LOG_DIR@;\
s@`echo '$OPENSHIFT_DATA_DIR'`@$OPENSHIFT_DATA_DIR@;\
s@`echo '$OPENSHIFT_REPO_DIR'`@$OPENSHIFT_REPO_DIR@\
" $TEMPLATE_FILE > $CONF_FILE