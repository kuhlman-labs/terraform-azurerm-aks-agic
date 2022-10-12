# terraform-azurerm-aks-agic
A Terraform module to deploy an AKS cluster with an App Gateway Ingress Controller on Azure.

| Name | Version |
|------|---------|
| terraform | >= 0.12 |
| azurerm | >= 2.0.0 |
| helm | 1.1.1 |

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| address\_prefix\_agw | The address prefixe to use for the agw subnet. | `list(string)` | n/a | yes |
| address\_prefix\_aks | The address prefixe to use for the aks subnet. | `list(string)` | n/a | yes |
| address\_space | This is a list of the ip address ranges for the vnet | `list` | n/a | yes |
| app\_id | The client ID for the Service Principal | `string` | n/a | yes |
| client\_secret | The secret for the Service Principal authentication | `string` | n/a | yes |
| dns\_service\_ip | IP address within the Kubernetes service address range that will be used by cluster service discovery (kube-dns). This is required when network\_plugin is set to azure. Changing this forces a new resource to be created. | `string` | n/a | yes |
| docker\_bridge\_cidr | IP address (in CIDR notation) used as the Docker bridge IP address on nodes. This is required when network\_plugin is set to azure. Changing this forces a new resource to be created. | `string` | n/a | yes |
| environment | Development environment for resource; prod, non-prod, shared-services | `string` | n/a | yes |
| object\_id | The object ID for the Service Principal | `string` | n/a | yes |
| region | Geographic region resource will be deployed into | `string` | n/a | yes |
| service\_cidr | The Network Range used by the Kubernetes service. This is required when network\_plugin is set to azure. Changing this forces a new resource to be created. | `string` | n/a | yes |
| tags | A map of tags to add to all resources | `map` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| aks\_fqdn | The FQDN of the Azure Kubernetes Managed Cluster. |
| aks\_id | The ID of the Kubernetes Managed Cluster. |
| aks\_kube\_config\_client\_certificate | Base64 encoded public certificate used by clients to authenticate to the Kubernetes cluster. |
| aks\_kube\_config\_client\_key | Base64 encoded private key used by clients to authenticate to the Kubernetes cluster. |
| aks\_kube\_config\_cluster\_ca\_certificate | Base64 encoded public CA certificate used as the root of trust for the Kubernetes cluster. |
| aks\_kube\_config\_host | The Kubernetes cluster server host. |
| aks\_kube\_config\_password | A password or token used to authenticate to the Kubernetes cluster. |
| aks\_kube\_config\_raw | Raw Kubernetes config for the admin account to be used by kubectl and other compatible tools. |
| aks\_kube\_config\_username | A username used to authenticate to the Kubernetes cluster. |
| aks\_node\_resource\_group | Auto-generated Resource Group containing AKS Cluster resources. |
