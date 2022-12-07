## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.45.0 |
| <a name="provider_template"></a> [template](#provider\_template) | 2.2.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.tfmyec2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_security_group.tf-sec-gr](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_ami.ubuntu](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
| [template_file.userdata](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_instance-ports"></a> [instance-ports](#input\_instance-ports) | ubuntu-instance-sec-gr-inbound-rules | `list(number)` | <pre>[<br>  22,<br>  80,<br>  443<br>]</pre> | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Adjust the instance type with workspace needs | `map(string)` | <pre>{<br>  "dev": "t3a.medium",<br>  "prod": "t3a.2xlarge"<br>}</pre> | no |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | n/a | `string` | n/a | yes |
| <a name="input_server-name"></a> [server-name](#input\_server-name) | n/a | `string` | `"ubuntu"` | no |
| <a name="input_tag"></a> [tag](#input\_tag) | n/a | `string` | `"Ubuntu-Instance"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance_id"></a> [instance\_id](#output\_instance\_id) | n/a |
| <a name="output_instance_public_ip"></a> [instance\_public\_ip](#output\_instance\_public\_ip) | n/a |
| <a name="output_sec_gr_id"></a> [sec\_gr\_id](#output\_sec\_gr\_id) | n/a |
