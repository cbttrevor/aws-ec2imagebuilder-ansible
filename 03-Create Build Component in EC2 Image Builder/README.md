## Learning Objectives

* Create Build Component in EC2 Image Builder, with three major steps:
    * Install Ansible and Ansible Lint with the `ExecuteBash` action module
    * Use the [`S3Download` action module](https://docs.aws.amazon.com/imagebuilder/latest/userguide/image-builder-action-modules.html) to retrieve the Ansible Playbook from S3 storage
    * Run the Ansible Playbook