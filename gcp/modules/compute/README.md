<!-- BEGIN_TF_DOCS -->


## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 4.75.1 |

## Resources

| Name | Type |
|------|------|
| [google_compute_instance.tf_gcp_prod](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance) | resource |
| [google_compute_instance.tf_gcp_prod_2](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_nat_ip"></a> [nat\_ip](#input\_nat\_ip) | terraform google\_compute\_address resource | <pre>object({<br>    address = string<br>  })</pre> | n/a | yes |
| <a name="input_service_account"></a> [service\_account](#input\_service\_account) | terraform google\_service\_account resource | <pre>object({<br>    email = string<br>  })</pre> | n/a | yes |
| <a name="input_ssh_pub_key"></a> [ssh\_pub\_key](#input\_ssh\_pub\_key) | ssh public key | `string` | `"c3NoLXJzYSBBQUFBQjNOemFDMXljMkVBQUFBREFRQUJBQUFCZ1FDN3BjUjB3VzVmRGIyZkhXZXduVGZQekc3dFg5YnB4UEcxOHR3L2dmU2JZT200aDhZV0ZDZ3NSSFVLbTc4QzRKNWZWMjd1R0NnYUFha1pSNzcydytZd2FRb3AzRnRyc2dVdmpwU0RhVkU3Y0dyTXVOZzVUc2NMZ1hEQTJONEJPcHpiNlpFY1g5d0dpNEErQ0lSay9VaGNoYjhNQnZCZzQwc3BQTENWSko0K2o1SEFnWnZpK3lIalF0K2RBVE4rTVZBMXZEWDNPSGRXQzhveVNGMmVQcGVFL3gwZVF0aERTazAwK1hwc2hrTDFrd1BkaXZHTk5WcDF2MkRhNTd0M3V2QmJwOXkraEQ2c0I4NER6NXVuMG5oQ1NEazVhM3NtamdrSmdCK2xiZm5ZRFBRZG5ZTGZZL3NOTW1IblFja3FBTkVka2ZYcjFJRjhBV1VHWk1NeXFvMHZUVnJlZzAxKzdWWjFjZUdrN0R2WUgrNU9XY05hRE1KbEk5Z0x6RTd4eEhrNVl1UjlOMUluR0d6NVlXWVVVanZReUsxN1M0aUZ1Y1NQdHRJck9NV0EyMWFMdHNXMEdzSHNEYm1hM0tmZlZvdURRV1dnY3c3ajFXeXlmbFB5MEU5NUxBdG5XUHhsNVcrN2JtWkFlYjlTc091bEQyeVNQUGxyM0I3b08ydS9GbjA9IGRvbmdtaW5sZWVARG9uZ21pbnMtTWFjQm9vay1Qcm8ubG9jYWwK"` | no |
| <a name="input_subnetwork"></a> [subnetwork](#input\_subnetwork) | terraform google\_compute\_subnetwortk resource | <pre>object({<br>    id = string<br>  })</pre> | n/a | yes |
<!-- END_TF_DOCS -->
