#!/bin/bash
function check_guess {
    if [[ $1 -lt $2 ]]; then
        echo "Trop bas !"
    elif [[ $1 -gt $2 ]]; then
        echo "Trop haut !"
    else
        echo "Félicitations ! Vous avez deviné le bon nombre de fichiers."
        return 0
    fi
    return 1
}

file_count=$(ls -1 | wc -l)
guess_correct=false

echo "Combien de fichiers se trouvent dans le répertoire actuel ?"

while [[ $guess_correct == false ]]; do
    read -p "Votre estimation : " user_guess
    
    if ! [[ "$user_guess" =~ ^[0-9]+$ ]]; then
        echo "Veuillez entrer un nombre valide."
        continue
    fi
    
    if check_guess $user_guess $file_count; then
        guess_correct=true
    fi
done
