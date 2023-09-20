#!/usr/bin/bash

# Este script cria diretórios, grupos e usuários no sistema.

# Criação dos diretórios publico, adm, ven e sec
echo 'Criando os Diretórios: publico, adm, ven, sec'

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

# Criação dos grupos GRP_ADM, GRP_VEN e GRP_SEC
echo 'Criando os Grupos: GRP_ADM, GRP_VEN, GRP_SEC'

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# Criação de usuários no grupo GRP_ADM
echo 'Criando os Usuários do Grupo: GRP_ADM'

useradd carlos -c 'Carlos' -m -s /usr/bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd maria -c 'Maria' -m -s /usr/bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd joao -c 'João' -m -s /usr/bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM

# Criação de usuários no grupo GRP_VEN
echo 'Criando os Usuários do Grupo: GRP_VEN'

useradd debora -c 'Débora' -m -s /usr/bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd sebastiana -c 'Sebastiana' -m -s /usr/bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd roberto -c 'Roberto' -m -s /usr/bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN

# Criação de usuários no grupo GRP_SEC
echo 'Criando os Usuários do Grupo: GRP_SEC'

useradd josefina -c 'Josefina' -m -s /usr/bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd amanda -c 'Amanda' -m -s /usr/bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd rogerio -c 'Rogério' -m -s /usr/bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC

# Definição das permissões dos diretórios
echo 'Definindo as Permissões dos Diretórios'

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

# Indica a conclusão do processo
echo 'Concluído'
