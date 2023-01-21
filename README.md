# Terraform_lifecycle_aws

Este projeto é utilizado para fazer modificações no bucket S3 da AWS. Ele utiliza o Terraform para gerenciar as configurações de ciclo de vida do bucket.

As configurações incluem:

- `create_before_destroy` = `true`: Isso garante que o novo bucket é criado antes de ser destruído.

- `prevent_destroy` = `true`: Isso impede que o bucket seja destruído, garantindo que o bucket continue existindo mesmo que a configuração seja alterada.

- `ignore_changes` = `[tags,]`: Isso ignora as alterações nas tags do bucket, garantindo que as tags não sejam afetadas durante qualquer modificação.

Para usar este projeto, você precisará ter acesso à sua conta da AWS e configurar as credenciais no Terraform. Além disso, você precisará ter o Terraform instalado em sua máquina.

Uma vez configurado, você pode usar o comando `terraform apply` para aplicar as configurações no bucket. Certifique-se de fazer backup de qualquer dados no bucket antes de aplicar as configurações.
