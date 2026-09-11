#!/usr/bin/env bash
# Publica no GitHub tudo que mudou desde a última resposta do Claude.
# Roda sozinho ao fim de cada resposta (hook Stop). Nunca trava o Claude Code.
cd "${CLAUDE_PROJECT_DIR:-$(pwd)}" 2>/dev/null || exit 0
git rev-parse --is-inside-work-tree >/dev/null 2>&1 || exit 0
git add -A
if git diff --cached --quiet; then exit 0; fi
git commit -q -m "Bagagem: atualização $(date '+%d/%m/%Y %H:%M')" || exit 0
git pull --rebase --autostash -q >/dev/null 2>&1
git push -q >/dev/null 2>&1
exit 0
