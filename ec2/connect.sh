#!/bin/bash

# connect to instance

ssh -i key_demo ec2-user@$(terraform output -raw instance_public_ip)