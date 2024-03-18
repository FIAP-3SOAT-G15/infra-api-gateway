# IaC for API Gateway

IaC de API Gateway provisionada com Terraform.

Repositório principal: [tech-challenge](https://github.com/FIAP-3SOAT-G15/tech-challenge)

## Recursos criados

API Gateway usando especificação OpenAPI com VPC Link para o load balancer no cluster do EKS.

## Dependências

- VPC e as subnets privadas
- Secrets (username e password) no SecretsManager e parâmetros (endpoint e nome do BD) no SSM Parameter Store para o RDS
- Secrets da integração com o Mercado Pago no Secrets Manager

Essas dependências são criadas nos outros repositórios de infraestrutura da organização e são utilizadas neste repositório através [remote state como data source](https://developer.hashicorp.com/terraform/language/state/remote-state-data).

## Estrutura

```text
.
├── .github/
│   └── workflows/
│       └── provisioning.yml  # provisionamento de IaC com Terraform
│── openapi/                  # especificação OpenAPI
└── terraform/                # IaC com Terraform
```
