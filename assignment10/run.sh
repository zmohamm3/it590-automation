#!/usr/bin/env bash
echo $1 > authenticator
gcloud compute instances create github --project=big-lore-376820 --zone=us-central1-a --machine-type=e2-medium  --network-interface=network=custom-vpc,subnet=custom-subnet --access-token-file=authenticator
