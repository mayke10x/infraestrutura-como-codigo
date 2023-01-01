## Definições do Desafio:

## Informações importantes:

```A quantidade de recursos que serão utilizados dependerá do recurso que tem na máquina que será escolhida para os testes. **Verificar os recursos: Memória e CPUs**```

## Regras:

- Criar um Vagrantfile com as definições de 4 máquinas virtuais. Sendo uma máquina com o nome de master e as outras com os nomes de node01, node02 e node03;
- Cada máquina virtual deverá ter um IP fixo;
- Todas as MV deverão possuir o Docker pré-instalado;
- A máquina com o nome de master deverá ser o nó manager do cluster;
- As demais máquinas deverão ser incluídas no cluster Swarm como Workers;