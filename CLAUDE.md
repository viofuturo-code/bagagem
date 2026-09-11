# Bagagem

Sistema de estudo e repertório da Nay. O pré é arrumar a mala, o pós é desfazer a mala e ver o que você trouxe. Serve pra três coisas, nessa ordem de importância:

1. Guardar bem o que a Nay vive e estuda (captura e acervo).
2. Deixar esse acervo consultável (perguntas, revisão, prompts de projeto).
3. Transformar repertório em material rápido (palestra, aula, cliente, conteúdo).

Se o 1 for fraco, o 3 sai genérico. Por isso a captura vem antes da fábrica.

## Princípio central

O acervo é a fonte da verdade. Nenhum gerador inventa repertório. Todo output parte de uma vivência registrada em `acervo/` e diz de qual vivência veio. Se não tem vivência sobre o assunto, diga isso em vez de preencher com conhecimento genérico.

## Estrutura

- `entrada/` caixa de entrada. A Nay joga aqui áudios, transcrições, fotos, PDFs, links. Nada fica aqui depois de processado.
- `acervo/<aaaa-mm-slug>/` uma pasta por vivência ou estudo.
  - `briefing.md` o pré (se houve)
  - `bruto/` transcrições, fotos, anexos originais
  - `fotos.md` descrição das fotos feita uma vez, pra não reprocessar imagem
  - `vivencia.md` a destilação (o arquivo mais importante do sistema)
  - `saidas/` tudo que foi gerado a partir dessa vivência
- `acervo/indice.md` uma linha por vivência: data, título, tags, conexões.
- `contexto/` fichas de quem recebe o material: `turmas/`, `clientes/`, `palestras/`.
- `docs/` plano e decisões do próprio sistema.

## Fluxo padrão

- Vai viver ou estudar algo: `/pre`
- Voltou ou terminou: `/pos`
- Quer consultar ou montar prompt de projeto: `/perguntar`
- Geradores (palestra, aula, cliente, LinkedIn, carrossel, podcast, slides, cortes) entram por fase, ver `docs/plano-v1.md`.

## Agentes do sistema

- `arquiteto`: quando a Nay despejar uma ideia nova sobre o sistema. Organiza e transforma em plano e em arquivos.
- `avaliador`: antes de construir algo novo e sempre que um output parecer genérico. Critica sem dó.
- `tecnologo`: quando a pergunta for "onde e como fazer isso". Indica ferramenta, custo e caminho.

Qualquer mudança estrutural passa pelo `avaliador` antes de ser construída.

## Como escrever

- Tom da Nay: natural, inteligente, direto, humano, didático e estratégico. Parece escrito por ela.
- Nunca usar travessão. Nunca.
- Sem cara de IA: sem "vale ressaltar", "no cenário atual", "genuinamente", "honestamente", sem listas de três adjetivos, sem conclusão motivacional.
- Não concordar automaticamente. Apontar ponto cego quando houver.

## Regras de autoria

- Frase autoral sai da fala da Nay, não do lugar. Extraia das transcrições e lapide.
- Marque sempre: `[FALA]` para o que ela disse literalmente, `[LAPIDADO]` para versão melhorada de algo que ela disse, `[SUGESTÃO]` para ideia sua. Nunca apresente `[SUGESTÃO]` como pensamento dela.
- Teste de genérico: se trocar "Nay" por qualquer outra palestrante e o texto continuar funcionando, está genérico. Refaça puxando detalhe da vivência.

## Confidencialidade

- Insight de cliente é material interno. Conteúdo público (LinkedIn, Instagram, palestra aberta) nunca cita cliente pelo nome nem dado interno sem autorização explícita da Nay na conversa.
- O que é confidencial de cada cliente está na ficha dele. Respeite.

## Inputs

- Texto e transcrição: direto.
- Áudio: não é lido nativamente. Transcrever antes (ver `tecnologo`). Guardar a transcrição em `bruto/`.
- Fotos: pesam em tokens. Escolher até 10 por vivência, descrever uma vez em `fotos.md`, depois trabalhar só com o texto.
- Vídeo: não é assistido. Extrair áudio para transcrição e alguns frames com ffmpeg.
- PDF e links: ler, resumir o que importa em `bruto/fontes.md` com a origem.

## GitHub e sincronização

- O repositório é privado e sincroniza sozinho: ao abrir o Claude Code ele puxa o que mudou, ao fim de cada resposta ele publica. Não precisa rodar git manualmente.
- Áudio e vídeo não vão para o GitHub (ver `.gitignore`). Guarde a transcrição em `bruto/` e anote onde está o original.
- Fotos: só as selecionadas, de preferência reduzidas (até 1600 px no lado maior).

## Integrações que já existem (reusar, não reconstruir)

- Skills do claude.ai: `brandvio`, `vivencia-para-conteudo`, `promptimagevio`. Para usar aqui, copiar as pastas para `.claude/skills/`.
- Pipeline de cortes de vídeo por transcrição com FFmpeg (`cortar.sh`), já testado.
- Fluxo de PPTX com pptxgenjs, já usado nas propostas da VIO.
