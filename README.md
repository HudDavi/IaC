# README - Criação de Diretórios, Grupos e Usuários

## Descrição
Este script em Bash automatiza a criação de diretórios, grupos e usuários em um sistema Linux. Ele é projetado para configurar um ambiente básico com grupos e usuários associados a esses grupos.

## Uso
Para executar o script, siga as etapas abaixo:

1. **Permissões de Execução**: Certifique-se de que o script tem permissões de execução. Caso contrário, você pode conceder permissões com o comando `chmod +x script.sh`, onde `script.sh` é o nome do seu script.

2. **Execução do Script**: Execute o script com o comando `./script.sh`. O script criará diretórios, grupos e usuários de acordo com as configurações especificadas no script.

3. **Senhas de Usuário**: Note que o script define a senha para todos os usuários criados como 'senha123'. Certifique-se de alterar essa senha para uma senha segura em produção.

## Estrutura do Script
O script está organizado da seguinte forma:

- **Criação de Diretórios**: Ele cria os diretórios `/publico`, `/adm`, `/ven`, e `/sec`.

- **Criação de Grupos**: Ele cria os grupos GRP_ADM, GRP_VEN, e GRP_SEC.

- **Criação de Usuários**: Ele cria usuários associados a cada grupo, definindo suas informações, diretórios home e senhas.

- **Definição de Permissões**: Ele atribui permissões aos diretórios de acordo com os grupos.

## Nota de Segurança
Este script é fornecido apenas como um exemplo educacional e não deve ser usado em ambientes de produção sem revisão e adaptação adequadas às políticas de segurança. Certifique-se de definir senhas seguras para os usuários e revisar as permissões de diretório de acordo com seus requisitos de segurança.

## Autor
Este script foi criado por Hudson Silva e pode ser encontrado em [https://github.com/HudDavi/IaC.git].

## Licença
Este script é distribuído sob a [Licença MIT](https://opensource.org/licenses/MIT). Consulte o arquivo LICENÇA para obter detalhes.