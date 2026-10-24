# Bash Scripts

Every script is standalone, starts with `#!/bin/bash`, and is executable.

## Quick Start

If the executable permission is lost during download or cloning, run:

```bash
chmod +x *.sh
```

Run a script by passing the required arguments:

```bash
./01-even-odd.sh 7
```

## Script Categories

### `logic/` — 28 Interview Logic Programs

A collection of classic screening-round programming problems implemented in Bash.

- Each script accepts input through command-line arguments instead of hardcoded values.
- Each script includes a commented, one-line alternative for interviewers who ask for a shorter solution.

**Examples:**

```bash
./01-even-odd.sh 7
./05-fibonacci-series.sh 10
./16-gcd-lcm.sh 12 18
./21-second-largest.sh 5 9 2 9 7
```

### `devops/` — 14 Production-Oriented Scripts

Practical DevOps automation scripts covering monitoring, backups, deployments, Jenkins, and Kubernetes.

These scripts use `set -Eeuo pipefail` for stricter error handling and are designed to be safe to rerun where applicable.

> [!WARNING]
> **Review every script before running it.** Some scripts interact with real infrastructure and may delete resources, restart services, or modify deployments. Test them in a lab environment first.

#### Configuration Required

Update the following placeholders before executing the corresponding scripts.

| Script | Placeholders / Action Required |
|---|---|
| `01-disk-monitor.sh` | Set `SNS_TOPIC` to your actual SNS topic ARN. The current ARN is a dummy value. |
| `03-db-backup-s3.sh` | Configure `S3_BUCKET` and store database credentials in `~/.my.cnf` with permissions set to `600`. |
| `05-deploy.sh` | Configure `APP`, `HEALTH_URL`, and the expected `/opt/$APP` directory layout. |
| `09-render-config.sh` | Update the SSM parameter path `/myapp/$ENVIRONMENT/` and the template path. |
| `10-rolling-restart.sh` | Configure `TARGET_GROUP_ARN`. |
| `12-k8s-rollout.sh` | Configure `NAMESPACE`, `DEPLOYMENT`, and `CONTAINER`. |

**Important:** Scripts `02`, `10`, `11`, and `12` perform deletion or restart operations. Inspect their behavior and validate the target resources before execution.

## Environment Variables

Most scripts read configuration from environment variables, allowing the same script to be used across development, staging, and production environments without modifying the source code.

**Examples:**

```bash
# Disk monitoring
THRESHOLD=90 ./01-disk-monitor.sh

# Database backup
DB_HOST=db01 DB_NAME=orders ./03-db-backup-s3.sh

# Kubernetes rollout
NAMESPACE=prod DEPLOYMENT=api ./12-k8s-rollout.sh
```

Set the variables required by each script before running it. Refer to the script source for additional configuration requirements and defaults.

## Dependencies

Dependencies vary by script.

Depending on the task, you may need:

- **Bash** — script execution.
- **AWS CLI** — AWS services, S3 backups, SNS notifications, and Systems Manager Parameter Store.
- **kubectl** — Kubernetes deployment and rollout operations.
- **Jenkins** — Jenkins-related automation, where applicable.
- **Standard Linux utilities** — tools used for monitoring, file operations, and deployment tasks.

Install and configure only the dependencies required by the scripts you intend to run. Verify that AWS credentials, IAM permissions, Kubernetes contexts, and other required access settings point to the correct environment.

## Best Practices

- Review scripts before executing them, especially those that modify infrastructure.
- Avoid hardcoding passwords, access keys, or other secrets.
- Use least-privilege IAM permissions.
- Validate environment variables and target resources before production execution.
- Test changes in development or staging first.
- Check script exit codes and logs when troubleshooting failures.

---

**Purpose:** A practical Bash scripting collection for Linux, DevOps automation, and technical interview preparation.
