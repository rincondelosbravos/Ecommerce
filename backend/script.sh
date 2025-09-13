#!/usr/bin/env bash
# replace-recursive.sh
# Uso:
#   ./replace-recursive.sh                # reemplaza 'braco96' -> 'braco96'
#   ./replace-recursive.sh origen destino # reemplaza 'origen' -> 'destino'

set -euo pipefail

SEARCH="${1:-braco96}"
REPLACE="${2:-braco96}"

echo "🔎 Buscando y reemplazando: '${SEARCH}' → '${REPLACE}'"
echo "📂 Directorio raíz: $(pwd)"

changed=0
scanned=0

# Recorre TODOS los archivos dentro de TODAS las subcarpetas (incluye ocultas)
# Nota: no sigue enlaces simbólicos. Si quieres seguirlos, cambia 'find' por 'find -L'
find . -type f -print0 | while IFS= read -r -d '' file; do
  # Saltar no regulares por si acaso
  [[ -f "$file" ]] || continue

  # Saltar binarios
  if ! grep -Iq . "$file"; then
    continue
  fi

  ((scanned++))

  # Solo modificar si el archivo contiene la cadena
  if grep -q -- "$SEARCH" "$file"; then
    # Reemplazo seguro (literal) con perl
    perl -0777 -pe "s/\Q${SEARCH}\E/${REPLACE}/g" -i -- "$file"
    ((changed++))
    echo "✏️  Modificado: $file"
  fi
done

echo "✅ Archivos de texto escaneados: $scanned"
echo "✅ Archivos modificados: $changed"

