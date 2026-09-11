#!/usr/bin/env bash
# Traz o que foi feito em outro lugar (celular, outra máquina) antes de começar.
# Roda sozinho ao abrir o Claude Code (hook SessionStart).
cd "${CLAUDE_PROJECT_DIR:-$(pwd)}" 2>/dev/null || exit 0
git rev-parse --is-inside-work-tree >/dev/null 2>&1 || exit 0
git pull --rebase --autostash -q >/dev/null 2>&1
exit 0
