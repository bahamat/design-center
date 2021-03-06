# Cloud::Autobalance version 1

License: MIT
Tags: cfdc, cloud, balance, ec2, openstack
Authors: Ted Zlatanov <tzz@lifelogs.com>

## Description
Autobalance load amongst cloud offerings based on Data::Classes results.
Imagine if a single file or web resource could signal your infrastructure to
grow or shrink?

This is exactly what Cloud::Autobalance can do for you.  Just give it a URL,
some threshold definitions, and options for the EC2, OpenStack, and VMWare
connecttivity.  It will take care of creating or destroying VM instances in any
of those three environments using the Cloud::Services::VMWare,
Cloud::Services::OpenStack, and Cloud::Services::AWS::EC2 sketches.


## Dependencies
Cloud::Services::AWS::EC2, Cloud::Services::OpenStack, Cloud::Services::VMWare, Data::Classes

## API
### bundle: autobalance
* parameter _environment_ *runenv* (default: none, description: none)

* parameter _metadata_ *mymetadata* (default: none, description: none)

* parameter _string_ *url* (default: none, description: URL to check for threshold string)

* parameter _string_ *collector* (default: `"/usr/bin/curl -s"`, description: Program to collect the URL contents)

* parameter _array_ *thresholds* (default: none, description: Threshold definitions)

* parameter _list_ *ec2_options* (default: none, description: EC2 options)

* parameter _list_ *openstack_options* (default: none, description: OpenStack options)

* parameter _list_ *vmware_options* (default: none, description: VMWare options)

* parameter _array_ *common_options* (default: none, description: Common options for all sketches)


## SAMPLE USAGE
See `test.cf` or the example parameters provided

