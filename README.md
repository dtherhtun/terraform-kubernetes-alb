# Terraform Kubernetes ALB controller for EKS modules 

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | ~> v0.13.4 |
| aws | ~> 3.16.0 |
| kubernetes | ~> 1.13.3 |

## Providers

| Name | Version |
|------|---------|
| aws | ~> 3.16.0 |
| kubernetes | ~> 1.13.3 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| aws\_alb\_ingress\_controller\_version | The AWS ALB Ingress Controller version to use. See https://github.com/kubernetes-sigs/aws-alb-ingress-controller/releases for available versions | `string` | `"1.1.7"` | no |
| aws\_assess\_key\_id | AWS Access Key ID | `string` | n/a | yes |
| aws\_iam\_path\_prefix | Prefix to be used for all AWS IAM objects. | `string` | `""` | no |
| aws\_resource\_name\_prefix | A string to prefix any AWS resources created. This does not apply to K8s resources | `string` | `"k8s-"` | no |
| aws\_secret\_access\_key | AWS Secret Access Key | `string` | n/a | yes |
| aws\_tags | Common AWS tags to be applied to all AWS objects being created. | `map(string)` | `{}` | no |
| aws\_vpc\_id | ID of the Virtual Private Network to utilize. Can be ommited if targeting EKS. | `string` | `null` | no |
| k8s\_cluster\_name | Name of the Kubernetes cluster. This string is used to contruct the AWS IAM permissions and roles. If targeting EKS, the corresponsing managed cluster name must match as well. | `string` | n/a | yes |
| k8s\_cluster\_type | Can be set to `vanilla` or `eks`. If set to `eks`, the Kubernetes cluster will be assumed to be run on EKS which will make sure that the AWS IAM Service integration works as supposed to. | `string` | `"vanilla"` | no |
| k8s\_namespace | Kubernetes namespace to deploy the AWS ALB Ingress Controller into. | `string` | `"default"` | no |
| k8s\_pod\_annotations | Additional annotations to be added to the Pods. | `map(string)` | `{}` | no |
| k8s\_pod\_labels | Additional labels to be added to the Pods. | `map(string)` | `{}` | no |
| k8s\_replicas | Amount of replicas to be created. | `number` | `1` | no |
| region | ID of the Virtual Private Network to utilize. Can be ommited if targeting EKS. | `string` | `"ap-southeast-1"` | no |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
