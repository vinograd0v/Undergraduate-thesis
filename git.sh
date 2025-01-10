#!/bin/bash

git add .
read -p "Describe brevemente los cambios realizados: " commit_message
git commit -m "$commit_message"
echo "Cambios locales añadidos y confirmados."

echo "Haciendo git pull para actualizar cambios del repositorio remoto en el local..."
git pull

read -p "Vas a hacer un push? (S/n): " confirm_push
if [[ "$confirm_push" == "s" || "$confirm_push" == "S" ]]; then
	git add .
	read -p "Commit del cambio que vas a subir: " push_message
    git commit -m "$push_message"
    echo "Haciendo git push..."
    git push
else
    echo "No se subieron cambios al repositorio remoto."
fi

echo "Script finalizado."
