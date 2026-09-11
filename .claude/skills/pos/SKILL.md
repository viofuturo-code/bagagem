---
name: pos
description: Destila uma vivência ou estudo depois que acontece. Use quando a Nay mandar transcrição de áudio, resumo, insights, fotos, vídeo ou disser "cheguei", "acabei de estudar", "processa a entrada". Gera o vivencia.md no acervo, que é a base de todos os outputs.
---

# /pos: destilação

Leia `CLAUDE.md` e as fichas de `contexto/`. Este é o arquivo mais importante do sistema. Capriche aqui e o resto sai fácil.

## 1. Identifique a vivência

Se existe `briefing.md` correspondente em `acervo/`, use a mesma pasta. Se não, crie `acervo/<aaaa-mm-slug>/`.

## 2. Prepare o bruto

- Mova tudo de `entrada/` que for dessa vivência para `bruto/`.
- Áudio sem transcrição: pare e peça ao `tecnologo` o comando de transcrição. Não invente conteúdo de áudio.
- Fotos: escolha até 10, descreva cada uma uma única vez em `fotos.md` (o que aparece, por que importa, uso possível). Daqui em diante trabalhe só com o texto.
- Vídeo: peça ao `tecnologo` a extração de áudio e frames.
- Links e PDFs: resuma em `bruto/fontes.md` com a origem.

## 3. Escreva `vivencia.md`

Use o modelo em `acervo/_modelo/vivencia.md`. Regras:

- **Falas originais** são sagradas. Copie literalmente os melhores trechos da transcrição com `[FALA]`. Elas são a matéria prima das frases autorais.
- **Hipóteses do pré**: se houve briefing, diga para cada uma se confirmou, caiu ou mudou. O que caiu costuma ser o melhor conteúdo.
- **Contraste e o que não funcionou**: sempre procure. Sem isso vira propaganda do lugar.
- **Conexões**: para cada turma, cliente e palestra das fichas que tem ligação real, uma linha dizendo qual é a ponte. Ligação forçada não entra.
- **Tags**: poucas e reutilizáveis (tema, país, setor, conceito).

## 4. Atualize o índice

Linha em `acervo/indice.md` com status `destilado`.

## 5. Feche com

- **3 perguntas de aprofundamento** para ela responder por áudio quando puder. Perguntas que puxam opinião, não descrição ("o que isso contradiz no que você falava antes?").
- **Os 3 outputs mais fortes** dessa vivência, cada um em uma linha: qual gerador, para quem, por quê.

Sem travessão. Sem cara de IA.
