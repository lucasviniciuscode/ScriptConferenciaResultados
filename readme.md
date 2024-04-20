# Script de Conferencia de Resultados

## Justificativa
Muitos dos problemas dos cadernos de prova da Maratona de Programação SBC, não estão em plataformas online como Beecrowd, por isso não tem como os alunos conferirem se seus resultados estão corretos ou não. A SBC após as provas fornecem um arquivo compactado com todas as entradas e os resultados esperados, este script é uma ferramenta para comparar os resultados esperados fornecidos pela SBC, com os resultados dos códigos dos alunos.

Maratonas Passadas:
https://maratona.sbc.org.br/hist/index.html


## Requisitos
- Ambiente Linux ou WSL(Ambiente usado na maratona)
- Ter uma pasta para cada problema
- Nome do arquivo fonte deve ser: `problema.c` ou `problema.py`
- Criar pasta com as entradas, com o nome: `entradas`
- Criar pasta com as saidas esperadas, com o nome: `esperado`
- Criar pasta vazia para o script inserir suas saidas, com nome: `saidas`

## Rodando o script 
1. Cole o arquivo script dentro da pasta do problema e execute
`./script.sh`

2. Digite o compilador que deseja utilizar (python3, g++ ou gcc)

3. Obtenha a lista com a comparação dos seus resultados com os resultados esperados
```
A_1 - certo
A_2 - certo
A_3 - errado
```