<!-- BEGIN_TF_DOCS -->


## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 4.75.1 |

## Resources

| Name | Type |
|------|------|
| [google_compute_instance.tf_gcp_prod](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_nat_ip"></a> [nat\_ip](#input\_nat\_ip) | terraform google\_compute\_address resource | <pre>object({<br>    address = string<br>  })</pre> | n/a | yes |
| <a name="input_service_account"></a> [service\_account](#input\_service\_account) | terraform google\_service\_account resource | <pre>object({<br>    email = string<br>  })</pre> | n/a | yes |
| <a name="input_subnetwork"></a> [subnetwork](#input\_subnetwork) | terraform google\_compute\_subnetwortk resource | <pre>object({<br>    id = string<br>  })</pre> | n/a | yes |
<!-- END_TF_DOCS -->
