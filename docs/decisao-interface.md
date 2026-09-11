# Decisão: interface de captura (Bagagem de Mão)

Data: 2026-09-11
Status: construída, aguardando publicação e primeiro uso real.

## O pedido

A Nay pediu uma interface com a cara da VIO, um app no celular para fazer os inputs
e obter os outputs sem passar pelo chat.

## O que o avaliador disse

Ele foi contra construir agora, com três argumentos que ficaram de pé:

1. **Duas fontes da verdade.** Se o app tiver banco próprio e o `/pos` não for rodado,
   em poucas semanas o acervo real vive no banco do app e o repositório continua vazio.
   Sem git, sem histórico, sem edição em editor de verdade.
2. **Ferramenta antes de requisito.** Nenhum `/pos` foi rodado ainda. Não existe uma
   fricção medida, só uma fricção imaginada. Todo campo de formulário sai de como o
   `vivencia.md` realmente fica depois de escrito.
3. **Tela de outputs aponta para o vazio.** Os geradores (`/palestra`, `/aula`,
   `/cliente`) são fase 2 e 3. Botão para função inexistente é vitrine.

Um argumento dele não se sustentou: a sugestão de sincronizar `entrada/` com iCloud.
O repositório vive num container remoto, não na máquina da Nay. Esse caminho não existe hoje.

## O que foi decidido

Construir só a porta de entrada, não a interface inteira.

**O app é caixa de entrada, não acervo.** Ele existe para ser esvaziado. A fonte da
verdade continua sendo o markdown em `acervo/<aaaa-mm-slug>/vivencia.md`, no git.

Três defesas contra o risco 1:

- A tela principal chama-se "A mala" e diz, em texto, que aquilo não é o acervo.
- Cada vivência parada há dois dias ou mais ganha um selo "parada há N dias".
- Toda vivência tem botão de exportar markdown e de marcar como desfeita, com um
  aviso para só marcar depois de conferir o `vivencia.md`.

## O que ficou de fora, de propósito

- Consulta ao acervo pelo celular. O acervo está vazio, não há o que consultar.
- Geradores de output. Não existem ainda.
- Gravação de áudio. A `assets` do artifact não aceita áudio, e transcrição exigiria
  serviço externo. O ditado nativo do teclado do celular resolve com zero manutenção.

## O que o app faz

1. Um campo de texto, com rascunho salvo no navegador para não perder o que foi digitado.
2. Fotos, reduzidas a 1600 px no lado maior antes de subir, conforme o `CLAUDE.md`.
3. Escolha da vivência, com o nome da pasta `aaaa-mm-slug` mostrado antes de salvar.
4. Uma pergunta de aprofundamento gerada na hora, que puxa detalhe concreto da nota.
   Isso existe para melhorar a matéria-prima, que é o gargalo declarado da fase 1.
5. A fila do que ainda não foi destilado.

## Como o Claude Code lê isso

O banco do artifact é lido daqui com a ação `read_db` da ferramenta Artifact,
na coleção `vivencias` e nas subcoleções `vivencias/<pasta>/capturas`.
O `/pos` deve passar a olhar essa caixa além de `entrada/`.

## O que revisar depois de três vivências reais

- Os campos do formulário batem com o que o `vivencia.md` realmente precisa?
- A mala está sendo esvaziada, ou virou acervo paralelo?
- A pergunta de aprofundamento traz detalhe útil, ou é enfeite?

Se a mala não estiver sendo esvaziada, o app é o problema, não a solução. Nesse caso,
tirar do ar em vez de melhorar.
