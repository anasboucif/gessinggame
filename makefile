.PHONY: all clean

all: README.md

README.md: guessinggame.sh
	echo "# Jeu de devinette de fichiers" > README.md
	echo "" >> README.md
	echo "Date et heure de génération : $$(date)" >> README.md
	echo "" >> README.md
	echo "Nombre de lignes dans guessinggame.sh : $$(wc -l < guessinggame.sh)" >> README.md

clean:
	rm -f README.md
