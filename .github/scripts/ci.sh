#!/usr/bin/env bash
set -euo pipefail

echo "[ci] Diretório de trabalho: $(pwd)"

echo "[ci] Restaurando dependências..."
dotnet restore

echo "[ci] Compilando (Release)..."
dotnet build --no-restore --configuration Release

echo "[ci] Executando testes..."
dotnet test --no-build --verbosity normal

echo "[ci] Concluído."
