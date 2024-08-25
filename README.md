# Projeto de Implantação de Infraestrutura com Terraform

Este repositório contém um exemplo de código Terraform criado durante uma aula de Terraform básico. 
O objetivo deste projeto foi adquirir conhecimentos fundamentais sobre a automação da infraestrutura na nuvem utilizando o Terraform, um dos principais ferramentas de IaC (Infrastructure as Code).

## Recursos Criados

Durante a aula, foram implementados os seguintes recursos na Microsoft Azure utilizando Terraform:

**1.Grupo de Recursos (Resource Group)**: Um grupo de recursos chamado *rg-live-vick* foi criado para organizar todos os recursos relacionados ao projeto. Este grupo está localizado na região "East US".

**2.Plano de Serviço (Service Plan)**: Um plano de serviço chamado *live-service-plan-vick* foi configurado para hospedar serviços de aplicativos, usando a SKU de preço "F1" (grátis) e especificando um sistema operacional Linux.

**3.Aplicativo Web Linux (Linux Web App)**: Um aplicativo web foi implantado usando a imagem Docker *fabricioveronez/nginx-live:v1*. O aplicativo foi configurado para não permanecer sempre ativo (always_on = false), otimizando o consumo de recursos.

## Variáveis e Saídas

**Variável** *web_app_name*: Utilizada para definir o nome do aplicativo web. Neste exemplo, o nome padrão é *live-web-app-vick*.

**Output** *name*: Uma saída foi configurada para fornecer a URL completa do aplicativo web implantado.

## Considerações Finais
Este exemplo prático demonstrado na aula me mostrou como o Terraform pode ser usado para automatizar a criação e o gerenciamento
de recursos na nuvem. Amei aprender sobre esta ferramenta e pretendo utilizar daqui para frente para meus projetos futuros de Engenharia de Dados 😄 
