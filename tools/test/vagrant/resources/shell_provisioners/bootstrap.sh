#!/bin/bash -x

echo $1 > /var/tmp/policy_hub
# try the new bootstrap syntax and then the 3.0.x syntax
/var/cfengine/bin/cf-agent --bootstrap=$1 || /var/cfengine/bin/cf-agent --bootstrap --policy-server=$1
