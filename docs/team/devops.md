# What is a DevOps Engineer?

DevOps engineers bridge development and operations by automating infrastructure, managing deployments, and ensuring systems are reliable, observable, and secure. At SnapPic, the DevOps team is responsible for the full delivery lifecycle: from CI/CD pipelines and cloud infrastructure to monitoring, incident response, and developer tooling.

## Core responsibilities

- **Infrastructure as Code**: manage AWS, GCP, and on-premise resources using Terraform, Ansible, and Spinnaker.
- **CI/CD pipelines**: build and maintain Jenkins pipelines that test, build, and deploy services to production and staging environments.
- **Observability**: operate Prometheus, Grafana, Loki, Elastic, and PagerDuty to provide metrics, logs, and alerting across all environments.
- **Reliability**: own incident response, postmortems, and SLO tracking. Maintain runbooks and automate recovery where possible.
- **Security**: manage firewalls, WAF rules, SSL certificates, and access controls. Ensure compliance with security best practices.
- **Developer experience**: build and maintain internal tooling, manage shared services (RabbitMQ, MySQL, Redis, Consul), and support the engineering team with troubleshooting and onboarding.

## Principles

- **Automate first**: if a task is done more than once, script it. If it is done often, build a pipeline for it.
- **Everything as code**: infrastructure, config, dashboards, and alerts should all live in version control.
- **Observability over guesswork**: rely on metrics and logs, not hunches. Alert on symptoms, not causes.
- **Blameless culture**: incidents are learning opportunities. Focus on what went wrong, not who.
- **Documentation is infrastructure**: keep docs current and treat them as part of the system. Outdated docs are worse than no docs.
