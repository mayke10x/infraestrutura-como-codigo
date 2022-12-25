## Definições do Desafio:

### Criação das pastas:

- /publico
- /adm
- /ven
- /sec

### Criação dos grupos:

- GRP_ADM
- GRP_VEN
- GRP_SEC

### Criação dos usuários com os grupos de acordo:

- carlos:GRP_ADM
- maria:GRP_ADM
- joao:GRP_ADM
- debora:GRP_VEN
- sebastiana:GRP_VEN
- roberto:GRP_VEN
- josefina:GRP_SEC
- amanda:GRP_SEC
- rogerio:GRP_SEC

## Regras:

- O dono de todos os diretórios criados será o usuário root;
- Todos usuários terá terão permissão total dentro do diretório **/publico**;
- Os usuários de cada grupo terão permissão total dentro de seu respectivo diretório;
- Os usuário não poderão ter permissão de leitura, escrita ou execução em diretórios de departamentos que eles não pertencem;
- Subir arquivo de script para conta no GitHub;