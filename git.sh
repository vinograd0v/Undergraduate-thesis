#!/bin/bash

# Realiza un git pull para actualizar el repositorio local
echo "Realizando git pull..."
git pull

# Comprueba si hay cambios para hacer commit
if [[ -n $(git status --porcelain) ]]; then
    echo "Hay cambios para hacer commit."

    # Pregunta por el mensaje de commit
    read -p "Introduce el mensaje del commit: " commit_message

    # Agrega todos los archivos modificados
    git add .

    # Realiza el commit con el mensaje proporcionado
    git commit -m "$commit_message"

    # Realiza un git push para subir los cambios al repositorio remoto
    echo "Haciendo git push..."
    git push
else
    echo "No hay cambios para hacer commit."
fi
