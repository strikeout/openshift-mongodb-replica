echo '-----------[ m1 ]---------------------------------------------------------'
ssh $INSTANCE1 'netstat -lnptu | grep $OPENSHIFT_INTERNAL_IP:'
ssh $INSTANCE1 'ps aux'
echo '-----------[ m2 ]---------------------------------------------------------'
ssh $INSTANCE2 'netstat -lnptu | grep $OPENSHIFT_INTERNAL_IP:'
ssh $INSTANCE2 'ps aux'
echo '-----------[ m3 ]---------------------------------------------------------'
ssh $INSTANCE3 'netstat -lnptu | grep $OPENSHIFT_INTERNAL_IP:'
ssh $INSTANCE3 'ps aux'