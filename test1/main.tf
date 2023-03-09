inputs:
  instance_type:
    type: string
    default: t2.micro
    description: AWS instance type
  department:
    type: string
    description: Department tag
resources:
  terraform:
    type: Cloud.Terraform.Configuration
    properties:
      variables:
        instance_type: '${input.instance_type}'
        department: '${input.department}'
      providers:
        - name: aws
        # List of available cloud zones: blueprint-aws/us-east-1
        cloudZone: blueprint-aws/eu-south-1
