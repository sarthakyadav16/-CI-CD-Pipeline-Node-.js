# 🚀 CI/CD Pipeline for Node.js Application using AWS

## 📌 Project Overview

This project demonstrates how to implement a **CI/CD (Continuous Integration & Continuous Deployment) pipeline** for a Node.js application using AWS services.

The pipeline automatically builds and deploys the application whenever changes are pushed to the GitHub repository — eliminating manual deployment steps and improving efficiency.

---

## 🎯 Objectives

* Automate application build and deployment
* Reduce manual errors
* Enable faster and reliable releases
* Implement DevOps best practices

---

## 🧰 AWS Services Used

* **AWS CodePipeline** – Orchestrates the CI/CD workflow
* **AWS CodeBuild** – Builds the Node.js application
* **AWS CodeDeploy** – Deploys the application to EC2
* **Amazon EC2** – Hosts the application
* **Amazon S3** *(optional)* – Used for artifact storage or static hosting
* **AWS IAM** – Manages permissions and roles

---

## ⚙️ Project Architecture

```
GitHub → CodePipeline → CodeBuild → CodeDeploy → EC2
```

---

## 📁 Project Structure

```
├── app.js
├── package.json
├── buildspec.yml
├── appspec.yml
├── scripts/
│   └── start.sh
└── README.md
```

---

## 🔄 CI/CD Workflow

1. Developer pushes code to GitHub
2. CodePipeline detects changes
3. CodeBuild installs dependencies and builds the app
4. CodeDeploy deploys the app to EC2
5. Application starts automatically

---

## 🛠️ Setup Instructions

### 1️⃣ Clone the Repository

```
git clone <your-repo-link>
cd <repo-name>
```

### 2️⃣ Install Dependencies

```
npm install
```

### 3️⃣ Run Application Locally

```
node app.js
```

---

## 🧪 Build Specification (buildspec.yml)

```yaml
version: 0.2

phases:
  install:
    commands:
      - npm install
  build:
    commands:
      - echo "Build started"
      - npm run build || echo "No build step"
artifacts:
  files:
    - '**/*'
```

---

## 🚀 Deployment Configuration (appspec.yml)

```yaml
version: 0.0
os: linux
files:
  - source: /
    destination: /home/ubuntu/app
hooks:
  AfterInstall:
    - location: scripts/start.sh
      timeout: 300
```

---

## ▶️ Start Script (scripts/start.sh)

```bash
#!/bin/bash
cd /home/ubuntu/app
npm install
node app.js &
```

---

## 🔐 IAM Permissions Required

* AmazonEC2FullAccess
* AmazonS3FullAccess
* AWSCodePipelineFullAccess
* AWSCodeBuildDeveloperAccess

---

## 📊 Benefits of This Project

✔ Fully automated deployment
✔ Faster development lifecycle
✔ Scalable and reliable architecture
✔ Real-world DevOps implementation

---

## 📸 Future Enhancements

* Add Docker support 🐳
* Integrate monitoring (CloudWatch) 📊
* Implement Blue-Green Deployment
* Add testing stage in pipeline

---

## 👨‍💻 Author

**Sarthak Yadav**

---

## ⭐ Conclusion

This project showcases how modern DevOps practices can be implemented using AWS to automate application deployment, making the process faster, efficient, and error-free.

---

⭐ If you like this project, don't forget to **star the repository!**
