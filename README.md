﻿<a name="readme-top"></a>

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://registry.terraform.io/providers/hashicorp/aws/latest/docs">
    <img src="./images/terraform.png" alt="Logo" height="80">
  </a>

  <h3 align="center">[IN-PROGRESS]AWS Tradtional Architecture with Terraform</h3>

  <p align="center">
    Introduction to traditional architecture using Terraform!
    <br />
    <a href="https://registry.terraform.io/providers/hashicorp/aws/latest/docs"><strong>Terraform Documentation »</strong></a>
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#serverless-architecture">Serverless Architecture</a></li>
        <ul>
          <li><a href="#frontend">Frontend</a></li>
          <li><a href="#backend">Backend</a></li>
          <li><a href="#other">Other</a></li>
        </ul>
        <li><a href="#why-terraform">Why Terraform</a></li>
        <li><a href="#terraform-resources">Terraform Resources</a></li>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li>
          <a href="#installation">Installation</a>
          <ul>
            <li><a href="#aws-cli">AWS CLI</a></li>
            <li><a href="#terraform">Terraform</a></li>
          </ul>
          <li><a href="#setup">Setup</a></li>
          <ul>
            <li><a href="#project-initialization">Project Initialization</a></li>
          </ul>
        </li>
      </ul>
    </li>
    <li><a href="#terraform-structure">Terraform Structure</a></li>
  </ol>
</details>

## About The Project
<img src="./images/aws-diagram1.png" alt="AWS Diagram" />

This project is an extension of the work done in the [aws-serverless-terraform](https://github.com/jgconn/aws-serverless-terraform/tree/main) repository, where we initially built a serverless architecture on AWS. Here, we'll combine serverless and traditional approaches to set up the infrastructure for a full-stack web application. This project serves as the groundwork for our [CS732/SE750 group project](https://github.com/jgconn/cs732-se750-group-project), where myself and others developed a full-stack web app using the MERN stack.

In traditional architecture, developers are tasked with managing and provisioning servers and services, requiring careful considerations for scalability and maintenance. In contrast, serverless architecture shifts the burden of infrastructure management to the cloud provider, allowing developers to focus solely on writing code to implement business logic.

While traditional architecture provides more control, allowing you to design the underlying infrastructure, it also presents challenges such as scalability limitations, increased operational overhead, and potential resource underutilization due to the need to provision and manage fixed server capacity. Additionally, traditional architectures may struggle to adapt to fluctuating workloads and require more extensive monitoring and maintenance efforts to ensure optimal performance and availability.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Serverless Architecture
<img src="./images/fullstack-diagram.png" alt="Logo">

#### Frontend

The **S3 bucket** hosts your frontend files and serves as static website hosting. **CloudFront** acts as a content delivery network for the content stored in the S3 bucket. 

#### Backend

**EC2 instances** serve as the backbone of your backend infrastructure, providing virtual servers to host and run your application. **Security groups** are used to control inbound and outbound traffic to your EC2 instances, ensuring secure communication and access control. **ALB (Application Load Balancer)** distributes incoming traffic across multiple EC2 instances, improving availability and fault tolerance. **VPC (Virtual Private Cloud)** provides network isolation for your EC2 instances, ensuring a secure and isolated environment for your application.

#### Other

**Route 53** manages DNS for your application, handling domain registration, DNS record management, and traffic routing to AWS resources. **ACM** simplifies SSL/TLS certificate management, ensuring secure communication for your application with seamless integration across AWS services.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Why Terraform?
Terraform is an Infrastructure as Code (IaC) tool that simplifies the standardization of infrastructure definition, provisioning, and management across different cloud providers and environments. It streamlines infrastructure setup by utilizing machine-readable files (like HCL, YAML, XML, etc.) instead of manual processes or interactive configuration tools.

Terraform benefits web development with automated environment setup, consistent configurations across environments, scalable infrastructure handling, seamless integration with CI/CD pipelines, and cost optimization through efficient resource management. Additionally, it can leverage serverless architecture setups, allowing developers to easily deploy and manage serverless functions and resources alongside traditional infrastructure components.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Terraform Resources
The project will concentrate on various AWS resources, with a provided link to documentation below:

* <a href="https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket" ><img src="https://img.shields.io/badge/S3%20Bucket-569A31?style=for-the-badge&logo=amazons3&logoColor=white"/></a>
* <a href="https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution" ><img src="https://img.shields.io/badge/CloudFront-8C4FFF?style=for-the-badge&logo=amazon&logoColor=white"/></a>
* <a href="https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution" ><img src="https://img.shields.io/badge/Route_53-8C4FFF?style=for-the-badge&logo=amazonroute53&logoColor=white"/></a>
* <a href="https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution" ><img src="https://img.shields.io/badge/VPC-8C4FFF?style=for-the-badge&logo=amazon&logoColor=white"/></a>
* <a href="https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution" ><img src="https://img.shields.io/badge/ALB-8C4FFF?style=for-the-badge&logo=awselasticloadbalancing&logoColor=white"/></a>
* <a href="https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution" ><img src="https://img.shields.io/badge/ACM-DD344C?style=for-the-badge&logo=acm&logoColor=white"/></a>
* <a href="https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution" ><img src="https://img.shields.io/badge/EC2-FF9900?style=for-the-badge&logo=amazonec2&logoColor=white"/></a>
* <a href="https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution" ><img src="https://img.shields.io/badge/Security_Groups-FF9900?style=for-the-badge&logo=amazon&logoColor=white"/></a>

### Built With
The project will use three resources, with a provided link to website:

* <a href="https://aws.amazon.com/free/?gclid=Cj0KCQjwlN6wBhCcARIsAKZvD5jwIgWrykDmG7eeAuycctzjjgnZaLAsRfAjl58i1fZFUzBmAZ14aicaAgj7EALw_wcB&trk=f181118c-0869-454a-84d2-63d0cf7146e3&sc_channel=ps&ef_id=Cj0KCQjwlN6wBhCcARIsAKZvD5jwIgWrykDmG7eeAuycctzjjgnZaLAsRfAjl58i1fZFUzBmAZ14aicaAgj7EALw_wcB:G:s&s_kwcid=AL!4422!3!638125895456!e!!g!!aws!19068271377!141241695742&all-free-tier.sort-by=item.additionalFields.SortRank&all-free-tier.sort-order=asc&awsf.Free%20Tier%20Types=*all&awsf.Free%20Tier%20Categories=*all" ><img src="https://img.shields.io/badge/AWS%20CLI-232F3E?style=for-the-badge&logo=amazonaws&logoColor=white"/></a>
* <a href="https://www.terraform.io/" ><img src="https://img.shields.io/badge/Terraform-844FBA?style=for-the-badge&logo=terraform&logoColor=white"/></a>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Getting Started

### Prerequisites

<table>
    <tr>
        <th>Prerequisite</th>
        <th>Description</th>
    </tr>
    <tr>
        <td>Text Editor or IDE</td>
        <td>Choose a text editor or integrated development environment (IDE) for editing Terraform configuration files. <a href="https://code.visualstudio.com/">Visual Studio Code</a> is recommended, but you can also use <a href="https://atom.io/">Atom</a>, <a href="https://www.jetbrains.com/idea/?var=1">Intellij</a>, or <a href="https://www.sublimetext.com/">Sublime Text</a>.</td>
    </tr>
    <tr>
        <td>Extensions</td>
        <td>If using Visual Studio Code, consider installing <a href="https://marketplace.visualstudio.com/items?itemName=HashiCorp.terraform">HashiCorp Terraform</a> and <a href="https://marketplace.visualstudio.com/items?itemName=hashicorp.hcl">HashiCorp HCL</a> to enhance your development experience.</td>
    </tr>
    <tr>
        <td>Path Configuration</td>
        <td>Make sure you have access to add the directory containing the Terraform binary to your system's PATH environment variable on your computer.</td>
    </tr>
    <tr>
        <td>AWS Cloud Provider Credentials</td>
        <td>Ensure you've set up the required AWS credentials or authentication mechanisms.</td>
    </tr>
</table>

### Installation

**Note:** The instructions provided here are from the official website's installation guide. You can find additional options on the website.</br>
* <a href="https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html">AWS CLI</a>
* <a href="https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli">Terraform</a>

#### AWS CLI
<details>
  <summary>Windows</summary>
  <ol>
    <li>Download and run the AWS CLI MSI installer for Windows (64-bit): <a href="https://awscli.amazonaws.com/AWSCLIV2.msi">https://awscli.amazonaws.com/AWSCLIV2.msi</a>
    </br><b>Alternatively</b>, you can run the msiexec command to run the MSI installer:
      <pre><code>msiexec.exe /i https://awscli.amazonaws.com/AWSCLIV2.msi</code></pre>
    </li>
    <li>To confirm the installation, open the Start menu, search for cmd to open a command prompt window, and at the command prompt use the aws --version command:
      <pre><code>aws --version</code></pre>
    </li>
  </ol>
</details>

<details>
  <summary>MacOS</summary>
  <ol>
    <li>In your browser, download the macOS <code>pkg</code> file: <a href="https://awscli.amazonaws.com/AWSCLIV2.pkg">https://awscli.amazonaws.com/AWSCLIV2.pkg</a></li>
    <li>Run your downloaded file and follow the on-screen instructions. You can choose to install the AWS CLI in the following ways:
      <ul>
        <li><strong>For all users on the computer (requires sudo)</strong>
          <ul>
            <li>You can install to any folder, or choose the recommended default folder of <code>/usr/local/aws-cli</code>.</li>
            <li>The installer automatically creates a symlink at <code>/usr/local/bin/aws</code> that links to the main program in the installation folder you chose.</li>
          </ul>
        </li>
        <li><strong>For only the current user (doesn't require sudo)</strong>
          <ul>
            <li>You can install to any folder to which you have write permission.</li>
            <li>Due to standard user permissions, after the installer finishes, you must manually create a symlink file in your <code>$PATH</code> that points to the <code>aws</code> and <code>aws_completer</code> programs by using the following commands at the command prompt. If your <code>$PATH</code> includes a folder you can write to, you can run the following command without <code>sudo</code> if you specify that folder as the target's path. If you don't have a writable folder in your <code>$PATH</code>, you must use <code>sudo</code> in the commands to get permissions to write to the specified target folder. The default location for a symlink is <code>/usr/local/bin/</code>.
              <pre><code>sudo ln -s /folder/installed/aws-cli/aws /usr/local/bin/aws
sudo ln -s /folder/installed/aws-cli/aws_completer /usr/local/bin/aws_completer</code></pre>
            </li>
          </ul>
        </li>
      </ul>
    </li>
    <li>To verify that the shell can find and run the <code>aws</code> command in your <code>$PATH</code>, use the following commands.
      <pre><code>which aws
aws --version</code></pre>
    </li>
  </ol>
</details>

#### Terraform

<details>
  <summary>Pre-compiled binary</summary>
  <ol>
    <li>To install Terraform, find the <a href="https://developer.hashicorp.com/terraform/install">appropriate package</a> for your system and download it as a zip archive.</li>
    <li>After downloading Terraform, unzip the package. Terraform runs as a single binary named <code>terraform</code>. Any other files in the package can be safely removed and Terraform will still function.</li>
    <li>Finally, make sure that the <code>terraform</code> binary is available on your <code>$PATH</code>. This process will differ depending on your operating system.
      <details>
        <summary>Windows</summary>
        <ol>
          <li>Add the folder location to your <code>$PATH</code> variable, e.g., <code>Control Panel</code> &rarr; <code>System</code> &rarr; <code>System settings</code> &rarr; <code>Environment Variables</code>.</li>
          <li>In System Variables, select <code>Path</code>, click <code>Edit</code>, click <code>New</code>, enter the location of the Terraform .exe, e.g., <code>C:\Apps\Terraform</code>, then click <code>OK</code>.</li>
        </ol>
      </details>
      <details>
        <summary>macOS</summary>
        <ol>
          <li>Print a colon-separated list of locations in your <code>$PATH</code>.
            <pre><code>echo $PATH</code></pre>
          </li>
          <li>Move the Terraform binary to one of the listed locations. This command assumes that the binary is currently in your downloads folder and that your <code>$PATH</code> includes <code>/usr/local/bin</code>, but you can customize it if your locations are different.
            <pre><code>mv ~/Downloads/terraform /usr/local/bin/</code></pre>
          </li>
        </ol>
      </details>
    </li>
    <li>To verify that the shell can find and run the <code>terraform</code> command in your <code>$PATH</code>, use the following command.
      <pre><code>terraform -help</code></pre>
    </li>
  </ol>
</details>

<details>
  <summary>Homebrew on macOS</summary>
  <ol>
    <li>Install Homebrew from <a href="https://brew.sh/">https://brew.sh/</a>
    <li>Now, install Terraform using command line.
    <pre><code>brew install terraform</code></pre>
    </li>
  </ol>
</details>

<details>
  <summary>Choclatey on Windows</summary>
  <ol>
    <li>Install Chocolatey from <a href="https://chocolatey.org/install">https://chocolatey.org/install</a>
    <li>Now, install Terraform using command line.
    <pre><code>choco install terraform</code></pre></li>
  </ol>
</details>

### Setup

#### Project Initialization

**Note:** If you've already cloned the repository from *React App Initialization*, you can skip step 1.

1. Clone the repo
```sh
git clone https://github.com/jgconn/aws-traditional-terraform.git
```
2. Run `aws configure` in command line
```sh
AWS Access Key ID: MYACCESSKEY
AWS Secret Access Key: MYSECRETKEY
Default region name [us-west-2]: us-east-1
Default output format [None]: json
```
<a name="step4"></a>

3. Create a <a href="#tfvars">terraform.tfvars</a> file and input variables
```hcl
region               = "us-east-1"
bucket_name          = "BUCKET_NAME"
website_suffix       = "index.html"
route_53_domain_name = "DOMAIN_NAME"
route_53_zone_id     = "ZONE_ID"
vpc_name             = "VPC_NAME"
availability_zone1   = "AVAILABILITY_ZONE1"
availability_zone2   = "AVAILABILITY_ZONE1"
security_group_name  = "SECURITY_GROUP_NAME"
instance_name        = "EC2_INSTANCE_NAME"
instance_type        = "EC2_INSTANCE_TYPE"
ami                  = "EC2_INSTANCE_AMI"
alb_name             = "ALB_NAME"
instance_port        = EC2_INSTANCE_PORT
```
4. Initiate terraform directory
```sh
terraform init
```
5. [Optional] Format terraform directory
```sh
terraform fmt
```
6. [Optional] Validate terraform directory
```sh
terraform validate
```
7. [Optional] Plan terraform script to preview changes
```sh
terraform plan
```
8. Execute terraform script
```sh
terraform apply
```
<a name="step12"></a>

9. Remove all AWS resources created with terraform when finished
```sh
terraform destroy
```

**Note:** Steps 5 to 7 are not required but are best practices.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Terraform Structure

The initial project directory should include four .tf files, one .tfvars file, and a modules directory.</br>
**Note:** The `terraform.tfvars` file should not be publicly accessible and should be included in your `.gitignore`.

<table>
    <tr>
        <th>File</th>
        <th>Description</th>
    </tr>
  <tr>
        <td><a href="./infrastructure/provider.tf">provider.tf</a></td>
        <td>Defines the configuration for your Terraform provider(s), specifying the cloud or infrastructure platform to be used.</td>
    </tr>
    <tr>
        <td><a href="./infrastructure/main.tf">main.tf</a></td>
        <td>Contains the main configuration for your infrastructure resources.</td>
    </tr>
    <tr>
        <td><a href="./infrastructure/outputs.tf">outputs.tf</a></td>
        <td>Contains variable declarations. Variables are used to parameterize your Terraform configurations, allowing you to customize settings without modifying the main configuration.</td>
    </tr>
    <tr>
        <td><a href="./infrastructure/variables.tf">variables.tf</a></td>
        <td>Contains output declarations. Outputs are used to expose values from your infrastructure after it's been created.</td>
    </tr>
    <tr>
        <td><a href="https://registry.terraform.io/providers/terraform-redhat/rhcs/latest/docs/guides/terraform-vars">terraform.tfvars</a></td>
        <td>Defines values for input variables. This interacts with your variables.tf file.</td>
    </tr>
    <tr>
        <td><a href="./infrastructure/modules">modules</a></td>
        <td>Modules are a way to organize, reuse, and encapsulate Terraform configurations. They allow you to create reusable units of infrastructure.</td>
    </tr>
</table>

Below is the template Terraform directory:

```
project-root/
│
├── modules/
│   ├── module1/
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   │
│   ├── module2/
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   │
│   └── ...
│
├── main.tf
├── outputs.tf
├── provider.tf
├── variables.tf
└── terraform.tfvars
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>
