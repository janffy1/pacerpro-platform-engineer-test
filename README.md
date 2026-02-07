# PacerPro – Platform Engineer Coding Test

## Overview
PacerPro demonstrates a monitoring and self-healing solution for a web application with intermittent performance issues.

High API response times are detected via **Sumo Logic**, triggering an **AWS Lambda** function that automatically restarts an EC2 instance and sends notifications through **SNS**. Infrastructure is provisioned using **Terraform**.

## Architecture

Diagram of workflow:

+----------------+      Alert       +----------------+
|  Sumo Logic    | ---------------->|  AWS Lambda    |
|  Monitors API  |                  |  Remediation   |
+----------------+                  +----------------+
        |                                   |
        |                                   |
        v                                   v
+----------------+                  +----------------+
|   EC2 Instance |                  |      SNS       |
|  (Web App)     |                  | Notifications  |
+----------------+                  +----------------+

- **Monitoring:** Sumo Logic observes `/api/data` endpoint logs  
- **Alerting:** Fires when response time > 3s for 5+ events in 10 minutes  
- **Remediation:** Lambda restarts EC2 and logs actions to CloudWatch  
- **Notifications:** SNS sends alerts to stakeholders  
- **Infrastructure as Code:** Terraform provisions EC2, Lambda, SNS, and IAM roles  

## Key Features
- Automatic detection and remediation of slow API responses  
- Secure, least-privilege IAM roles  
- Fully automated provisioning with Terraform  
- Logs actions and notifies via SNS  

## Assumptions
- Logs are in **JSON format**  
- Placeholder AWS resource IDs are used  
- In production, Terraform would provision actual AWS resources  
- Sumo Logic triggers Lambda via **webhook integration**

## Security Considerations
- IAM roles follow **least-privilege principle**  
- No hardcoded credentials or secrets  

## Screen Recordings
Screen and audio recordings are provided separately as part of the submission.
