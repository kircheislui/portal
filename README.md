# portal

variables

# variable for aws_provision.yml

```
    instance_type: t2.micro
    security_group: launch_wizard-6
    image: ami-036affea69a1101c9
    keypair: ansible
    region: us-west-2
    count: 1
    aws_pem: aws/aws_ansible.pem
    ec2_group_rules:
      - proto: tcp
        from_port: 22
        to_port: 22
        cidr_ip: 0.0.0.0/0
      - proto: tcp
        from_port: 80
        to_port: 80
        cidr_ip: 0.0.0.0/0
      - proto: tcp
        from_port: 443
        to_port: 443
        cidr_ip: 0.0.0.0/0
    group_name: webserver
    instance_tags_Name: redhat01
    install_services:
      - test1
      - test2
      - apache
```

# variable for aws_configuration.yml

```
  instance_type: t2.micro
  security_group: launch_wizard-6
  image: ami-036affea69a1101c9
  keypair: ansible
  region: us-west-2
  count: 1
  aws_pem: aws/aws_ansible.pem

  #instance_tags_Name: redhat03
  #or
  instance_tags_Type: webserver

  install_services:
  - hostname
  - apache

```

# variable for aws_instance_facts.yml

```

  vars:
    region: us-west-2
  vars_files:
    - aws/aws_keys.yml

```

# variable for aws_instance_goal_state.yml

```

  vars:
    region: us-west-2

    state: stopped #{started|stopped|restarted|rebooted}
    instance_tags_Name: EVORI
#or
#    instance_tags_Type: webserver

  vars_files:
    - aws/aws_keys.yml

```

extra:
{
 "A1-Provision_Request_ID": "Request_ID",
 "A2-Owner": "Owner",
 "A3-Requested_By": "Requested_By",
 "A4-Catalog": "Application Type",
 "A5-Hostname": "Hostname",
 "B1-Department": "Department",
 "B2-Network": "Network",
 "B3-Datastore": "Datastore",
 "B4-Cluster": "Cluster",
 "C1-CPU": "CPU",
 "C2-Memory": "Memory",
 "C3-Disk_Size": "Disk Size"
}
