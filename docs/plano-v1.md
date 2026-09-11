# Bagagem: plano v1

## A ideia em uma frase

Um lugar onde tudo que eu vivo e estudo vira repertório organizado, consultável e pronto para virar aula, palestra, insight de cliente e conteúdo sem começar do zero.

## Arquitetura

Pré e pós são momentos. O coração é o acervo. Os geradores são transformações do acervo para um público.

1. **Contexto**: fichas de turmas, clientes, palestras e marcas. Dizem para quem o repertório serve.
2. **Captura**: `/pre` (briefing de ida) e `/pos` (destilação da volta).
3. **Acervo**: uma pasta por vivência, com `vivencia.md` como fonte da verdade.
4. **Consulta**: `/perguntar` para perguntas, revisão e prompt de projeto.
5. **Geradores**: cada output é uma skill que lê vivência + ficha e entrega no formato certo.

O loop que diferencia: o `/pre` gera hipóteses, o `/pos` confere o que se confirmou e o que caiu. Passeio vira pesquisa.

## Mapa dos geradores

| Gerador | Lê | Entrega | Até onde vai |
|---|---|---|---|
| /palestra | vivências + ficha da palestra | trecho de palestra, história estruturada, onde encaixa | pronto para ensaiar |
| /frases | falas originais das vivências | frases autorais lapidadas, com a fala de origem | pronto |
| /aula | vivência + ficha da turma | conteúdo de aula adaptado, exemplos, dinâmica, perguntas | rascunho forte |
| /cliente | vivência + ficha do cliente | 3 a 5 insights aplicados ao setor, o que fazer na segunda-feira | pronto (uso interno) |
| /linkedin | vivência + ficha de palestra | post e artigo no tom da Nay, sugestão de imagem | pronto + prompt de imagem |
| /carrossel | vivência + marca | roteiro card a card | roteiro + montagem no Canva |
| /instagram | vivência | roteamento nos 3 perfis | usa a skill vivencia-para-conteudo |
| /podcast | vivência ou tema | roteiro em diálogo | voz no ElevenLabs ou pacote NotebookLM |
| /slides | vivência + ficha da turma ou palestra | estrutura de slides e texto | arquivo pptx ou HTML |
| /cortes | transcrição de vídeo | cortes com começo, meio e fim | pipeline cortar.sh |

## Avaliação (o que muda do desenho original)

1. **São três produtos juntos**: diário de campo, segundo cérebro e fábrica de conteúdo. Tudo bem juntar, mas a ordem importa. Captura fraca gera fábrica genérica. Por isso a fase 1 é só captura e consulta.
2. **Frase autoral não sai do lugar, sai do meu olhar sobre o lugar.** O gerador de frases lapida o que eu falei no áudio. Se ele inventa, deixa de ser autoral. Regra `[FALA]`, `[LAPIDADO]`, `[SUGESTÃO]`.
3. **Metade disso já existe**: vivencia-para-conteudo (captura e Instagram), brandvio, promptimagevio, pipeline de cortes, fluxo de pptx. O sistema integra, não reconstrói.
4. **Dez geradores de uma vez não sai do papel.** Construir por fase e só avançar quando a anterior estiver em uso real.
5. **Turma e cliente só funcionam com ficha boa.** Sem ficha, "adaptar para a turma" vira trocar o título. As fichas são o trabalho chato que faz o sistema ser bom.
6. **Cliente e conteúdo público não se misturam.** Regra de confidencialidade no CLAUDE.md.
7. **Captura precisa caber no celular.** Nota de voz de 3 frases resolve 80%. O resto é bônus.

## Fases

**Fase 0: montar (uma tarde)**
- Clonar a estrutura, abrir no Claude Code, rodar `git init`.
- Preencher fichas: as turmas ativas, os clientes ativos, a palestra principal.
- Copiar as skills existentes do claude.ai para `.claude/skills/`.

**Fase 1: captura e consulta**
- Usar `/pre`, `/pos` e `/perguntar` em 2 ou 3 vivências reais.
- Critério para avançar: os `vivencia.md` estão ricos o suficiente para eu querer consultar.

**Fase 2: geradores de maior valor**
- `/palestra`, `/frases`, `/aula`, `/cliente`.
- Critério: usei pelo menos um output de cada em trabalho real.

**Fase 3: conteúdo**
- `/linkedin`, `/carrossel`, `/instagram` integrando a skill existente.

**Fase 4: mídia**
- `/podcast`, `/slides`, `/cortes`. Aqui entra transcrição, ElevenLabs, Canva, ffmpeg.

## Mapa de inputs

| Input | Como entra | Observação |
|---|---|---|
| Texto, resumo, transcrição | direto | o melhor custo benefício |
| Áudio | transcrever antes | celular para curto, Whisper local ou ElevenLabs para longo |
| Foto | até 10, descritas uma vez | depois só texto, economiza tokens |
| Vídeo | áudio + frames via ffmpeg | Claude não assiste vídeo |
| PDF, artigo, link | leitura e resumo com origem | vai para bruto/fontes.md |
| Gravação de podcast ou aula | transcrição | vira insumo para cortes e para o acervo |

## Decisões

- Acervo em markdown local com git. Motivo: Claude Code trabalha melhor com arquivos, custo zero, histórico de tudo.
- Busca por texto, sem banco vetorial, até o acervo passar de algumas centenas de vivências. Motivo: simples resolve por muito tempo.
- Toda mudança estrutural passa pelo agente avaliador.

## Em aberto

- [CONFIRMAR] nomes das turmas e clientes citados no áudio original.
- Onde consultar o acervo pelo celular: Claude Code remoto no app, Obsidian com sync, ou projeto no claude.ai alimentado por prompt de projeto.
