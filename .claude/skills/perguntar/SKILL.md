---
name: perguntar
description: Responde perguntas da Nay a partir do acervo, faz revisão de temas e gera prompt de projeto autocontido. Use quando ela perguntar algo sobre o que viveu ou estudou, pedir revisão de um tema, ou pedir "um prompt de projeto sobre X" para usar em outro lugar.
---

# /perguntar: consulta ao acervo

## Responder

1. Busque em `acervo/indice.md` e depois com grep nos `vivencia.md` pelas tags e palavras do tema.
2. Responda citando de onde veio: `(acervo/2026-09-slug)`.
3. Separe com clareza o que está no acervo do que é conhecimento geral seu. Se o acervo não tem nada, diga isso primeiro.

## Revisar

Quando ela pedir revisão de um tema: junte as vivências relacionadas e entregue o que ela aprendeu, o que mudou de opinião ao longo do tempo, as falas mais fortes dela sobre o tema e o que ainda está em aberto. Termine com 5 perguntas de autoteste.

## Prompt de projeto

Quando ela pedir um prompt sobre um tema para usar em outro lugar (projeto no claude.ai, outro agente): gere um arquivo em `docs/prompts/<tema>.md` que funcione sozinho, sem acesso ao acervo. Inclua contexto de quem ela é em duas linhas, o repertório destilado sobre o tema com as falas dela, as conexões com turmas e clientes relevantes (sem dado confidencial se for uso externo), e as regras de tom. Sem travessão.
