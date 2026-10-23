# Bash-Scripting

Every script is standalone, starts with #!/bin/bash, and is already executable.

chmod +x *.sh          # if the executable bit is lost in transit
./01-even-odd.sh 7

# logic/ — 28 interview logic programs

Screening-round classics. Each takes its input as an argument, never hardcoded,
and each ends with the one-liner version commented out for when the interviewer
asks you to shorten it.

./01-even-odd.sh 7
./05-fibonacci-series.sh 10
./16-gcd-lcm.sh 12 18
./21-second-largest.sh 5 9 2 9 7

# devops/ — 14 production scripts

The kind that actually run in a company: monitoring, backup, deployment, Jenkins,
Kubernetes. These start with set -Eeuo pipefail and are written to be re-runnable.

# Read before running. Several touch real infrastructure. Placeholders to change:

# Script	                  Change this first
01-disk-monitor	          SNS_TOPIC — the ARN is a dummy
03-db-backup-s3	          S3_BUCKET, and put the DB password in ~/.my.cnf (chmod 600)
05-deploy	                APP, HEALTH_URL, and the /opt/$APP layout
09-render-config	        the SSM path /myapp/$ENVIRONMENT/ and the template path
10-rolling-restart	      TARGET_GROUP_ARN
12-k8s-rollout	          NAMESPACE, DEPLOYMENT, CONTAINER

Scripts 02, 10, 11 and 12 delete or restart things. Try them in a lab first.

# Environment variables
Most scripts read their settings from the environment so the same file works in
dev, stage and prod:

THRESHOLD=90 ./01-disk-monitor.sh
DB_HOST=db01 DB_NAME=orders ./03-db-backup-s3.sh
NAMESPACE=prod DEPLOYMENT=api ./12-k8s-rollout.sh

# Dependencies
aws CLI, docker, kubectl, mysqldump, openssl, jq, lsof — depending on
the script. Each fails with a clear message if its tool is missing.
