# Random Actor Generator Web App

![App Screenshot](./screenshot.png)

## Table of Contents

- [About the Project](#about-the-project)
  - [Built With](##built-with)
- [Getting Started](#getting-started)
  - [Prerequisites](##prerequisites)
  - [Installation](##installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)
- [Acknowledgements](#acknowledgements)

## About the Project

This project implements a CI/CD pipeline using Jenkins, GitHub, and AWS infrastructure. The process begins when code is pushed to the GitHub repository, triggering an automatic Jenkins build through a webhook. Jenkins, hosted on an AWS EC2 server, utilizes Ansible, also installed on the same server, to execute a playbook for building a Docker image. The necessary Ansible playbook resides on the Jenkins server. Upon successful image creation, the pipeline deploys the Docker image to another EC2 server, specifically provisioned for Docker hosting. This end-to-end automated pipeline ensures seamless integration, testing, and deployment of code changes, enhancing development agility and maintaining consistency across environments. Follow up with this documentation for detailed setup instructions and configuration details.

### Built With

- Jenkins
- Ansible
- Docker
- Github Webhooks
- Static Website

## Getting Started

To get a local copy of this project up and running, follow these simple steps.

### Prerequisites

- An AWS account
- A Github account to set up the webhook

### Installation

1. **Fork the Repository:** Click the "Fork" button at the top right of this repository's page. This creates your copy of the project, allowing you to make changes without affecting the original.

2. **Launch 2 EC2 instances:**
- 

## Usage

Open your web browser and go to http://localhost:5001.

You'll see a randomly generated actor's name with a unique text color.

Click the "Change Actor" button to fetch a new actor's name and observe the dynamic changes in both the actor's name and text color.

Continue clicking the button to experience the real-time generation of random actors and colors.

## Contributing

Contributions are what make the open-source community such a fantastic place to learn, inspire, and create. Any contributions you make are greatly appreciated.

Fork the Project
Create your Feature Branch (git checkout -b feature/AmazingFeature)
Commit your Changes (git commit -m 'Add some AmazingFeature')
Push to the Branch (git push origin feature/AmazingFeature)
Open a Pull Request

## License

Distributed under the GNU License. See LICENSE for more information.

## Acknowledgements

This project was created to demonstrate the integration of Flask with frontend technologies.
Special thanks to the Flask, HTML, CSS, and JavaScript communities for their valuable resources and documentation.


Jenkins - Password

sudo cat /var/lib/jenkins/secrets/initialAdminPassword

Jenkins - Build Steps

scp -r /var/lib/jenkins/workspace/jenkins-ansible-pipeline/* root@34.230.80.196:~/project/
ansible-playbook /var/lib/jenkins/playbooks/deployment.yaml