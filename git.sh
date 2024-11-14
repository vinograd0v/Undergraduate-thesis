echo "Git pull..."
git pull

echo "Limpiando..."
latexmk -c

if [[ -n $(git status --porcelain) ]]; then
    echo "Hay cambios para hacer commit."

    read -p "Mensaje del commit: " commit_message

    git add .

    git commit -m "$commit_message"

    echo "Git push..."
    git push
else
    echo "No hay cambios para hacer commit."
fi
