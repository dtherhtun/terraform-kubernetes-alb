variable "k8s_cluster_type" {
  description = "Can be set to `vanilla` or `eks`. If set to `eks`, the Kubernetes cluster will be assumed to be run on EKS which will make sure that the AWS IAM Service integration works as supposed to."
  type        = string
  default     = "vanilla"
}

variable "k8s_cluster_name" {
  description = "Name of the Kubernetes cluster. This string is used to contruct the AWS IAM permissions and roles. If targeting EKS, the corresponsing managed cluster name must match as well."
  type        = string
}

variable "k8s_namespace" {
  description = "Kubernetes namespace to deploy the AWS ALB Ingress Controller into."
  type        = string
  default     = "default"
}

variable "k8s_replicas" {
  description = "Amount of replicas to be created."
  type        = number
  default     = 1
}

variable "aws_assess_key_id" {
  description = "AWS Access Key ID"
  type        = string
}

variable "aws_secret_access_key" {
  description = "AWS Secret Access Key"
  type        = string
}

variable "k8s_pod_annotations" {
  description = "Additional annotations to be added to the Pods."
  type        = map(string)
  default     = {}
}

variable "k8s_pod_labels" {
  description = "Additional labels to be added to the Pods."
  type        = map(string)
  default     = {}
}

variable "aws_iam_path_prefix" {
  description = "Prefix to be used for all AWS IAM objects."
  type        = string
  default     = ""
}

variable "aws_vpc_id" {
  description = "ID of the Virtual Private Network to utilize. Can be ommited if targeting EKS."
  type        = string
  default     = null
}

variable "aws_region_name" {
  description = "ID of the Virtual Private Network to utilize. Can be ommited if targeting EKS."
  type        = string
  default     = null
}

variable "aws_resource_name_prefix" {
  description = "A string to prefix any AWS resources created. This does not apply to K8s resources"
  type        = string
  default     = "k8s-"
}

variable "aws_tags" {
  description = "Common AWS tags to be applied to all AWS objects being created."
  type        = map(string)
  default     = {}
}

variable "aws_alb_ingress_controller_version" {
  description = "The AWS ALB Ingress Controller version to use. See https://github.com/kubernetes-sigs/aws-alb-ingress-controller/releases for available versions"
  type        = string
  default     = "1.1.7"
}
