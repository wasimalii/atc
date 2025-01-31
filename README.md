# ATC

## Prerequisites

Before proceeding, ensure you have the following prerequisites:

- **Docker** and **kubectl** installed on your system.
- An **AWS account** with **Access Key ID** and **Secret Access Key** configured.

### Generate AWS Access Key and Secret Key

Follow these steps to create AWS Access and Secret Access Keys:

1. Log in to the **AWS Management Console**.
2. Click on your profile name (top-right corner).
3. Select **"My Security Credentials"**.
4. Navigate to the **Access Keys** section.
5. Click **"Create New Access Key"** to generate a new set of keys.

### Configure AWS Credentials for Terraform

Use the keys to authenticate Terraform with AWS by setting them in your environment variables:

```bash
export AWS_ACCESS_KEY_ID="your-access-key"
export AWS_SECRET_ACCESS_KEY="your-secret-key"


Step 1: Create Docker Image for Sample Web Application
Create Docker Image
Clone the repo to your local system:

bash
Copy
Edit
git clone https://github.com/wasimalii/atc.git
cd atc/my-webapp
Build the Docker image:

For multi-platform builds (Linux/amd64, Linux/arm64):

bash
Copy
Edit
docker buildx build --platform linux/amd64,linux/arm64 -t <image-tag> .
Or simply build the image:

bash
Copy
Edit
docker build -t <image-tag> .


Run the sample web application locally:

bash
Copy
Edit
docker run -itd --name=myapp -p 8080:80 myapp
curl http://localhost:8080/
You'll see the Nginx default page.



Note: You can also pull the pre-built Docker image from my public repository:

bash
Copy
Edit
docker pull docker007786/atc:myapp
docker run -itd --name=myapp -p 8080:80 docker007786/atc:myapp
curl http://localhost:8080/
