#!/bin/bash

task="ec2 subnet vpc"

for t in $task; do
    echo "went into $t"
    cd "$t"
    echo "terraform init"
    terraform init
    echo "terraform apply"
    terraform apply -auto-approve
    cd ..
done