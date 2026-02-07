PacerPro – Platform Engineer Coding Test

Overview

PacerPro demonstrates a monitoring and self-healing solution for a web application experiencing intermittent performance issues.

High API response times are detected using Sumo Logic, which triggers an AWS Lambda function to automatically restart an EC2 instance and send notifications via SNS. The entire infrastructure is defined and managed using Terraform.

⸻

Architecture

High-level workflow:
Sumo Logic → Alert → AWS Lambda → EC2 Restart → SNS Notification

Architecture details:
	•	Monitoring: Sumo Logic observes the /api/data endpoint logs
	•	Alerting: An alert fires when response time exceeds 3 seconds for more than 5 events within 10 minutes
	•	Remediation: AWS Lambda restarts the EC2 instance and logs actions to CloudWatch
	•	Notifications: SNS sends alerts to stakeholders
	•	Infrastructure as Code: Terraform provisions EC2, Lambda, SNS, and IAM roles

⸻

Key Features
	•	Automatic detection and remediation of slow API responses
	•	Self-healing infrastructure using AWS Lambda
	•	Secure IAM roles following the principle of least privilege
	•	Infrastructure fully managed with Terraform
	•	Logging and notifications for operational visibility

⸻

Assumptions
	•	Application logs are structured in JSON format
	•	Placeholder AWS resource identifiers are used
	•	EC2 instance ID and SNS topic ARN are placeholders for demonstration purposes.
In a real environment, these would be actual AWS resource identifiers.
	•	In a production environment, Terraform would provision real AWS resources
	•	Sumo Logic triggers AWS Lambda via webhook integration

⸻

Security Considerations
	•	IAM roles follow the principle of least privilege
	•	No credentials or secrets are hardcoded

⸻

Screen Recordings

Screen and audio recordings demonstrating the monitoring, alerting, and remediation workflow are provided separately as part of the submission.
