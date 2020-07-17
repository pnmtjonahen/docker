#!/bin/sh
docker exec -it -u splunk splunk_splunkforwarder_1 /bin/bash -c "/opt/splunkforwarder/bin/splunk add monitor /logs"
docker exec -it -u splunk splunk_splunkforwarder_1 /bin/bash -c "/opt/splunkforwarder/bin/splunk add forward-server splunk:9997"

#/opt/splunkforwarder/bin/splunk add monitor /logs/idb/application.log -sourcetype idb-app
#/opt/splunkforwarder/bin/splunk add monitor /logs/idb/performance.log -sourcetype idb-perf
#/opt/splunkforwarder/bin/splunk add monitor /logs/idb/action.log -sourcetype idb-act
#/opt/splunkforwarder/bin/splunk add monitor /logs/idp/application.log -sourcetype idp-app
#/opt/splunkforwarder/bin/splunk add monitor /logs/idp/performance.log -sourcetype idp-perf
#/opt/splunkforwarder/bin/splunk add monitor /logs/idp/action.log -sourcetype idp-act
#/opt/splunkforwarder/bin/splunk add monitor /logs/idx/application.log -sourcetype idx-app
#/opt/splunkforwarder/bin/splunk add monitor /logs/idx/action.log -sourcetype idx-act
#/opt/splunkforwarder/bin/splunk add monitor /logs/idx/performance.log -sourcetype idx-perf
