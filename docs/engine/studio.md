Dyglot Studio

Oui — il existe des “éditeurs graphiques à la Delphi” modernes que vous pouvez forker, mais ils sont presque tous… des éditeurs Web (à embarquer ensuite dans une app Desktop via Electron/Tauri), plutôt que des éditeurs natifs Flutter.

Voici ceux qui me semblent les plus réalistes pour Dyglot Teacher (Teacher non-informaticien) :

1) GrapesJS — le plus proche d’un “Delphi pour HTML”
	•	Ce que c’est : un éditeur WYSIWYG drag-and-drop (pages / composants) qui produit du HTML/CSS.
	•	Pourquoi c’est intéressant pour vous : vous pouvez définir une bibliothèque de “blocs Dyglot” (champ, audio, furigana, exemples, etc.) et laisser le Teacher assembler l’écran sans toucher au code.
	•	Attention : l’écosystème “Studio” autour de GrapesJS comporte des briques qui peuvent nécessiter une clé de licence (selon ce que vous utilisez).  

👉 Si votre objectif est “le Teacher dessine l’UI”, c’est probablement la piste #1.

2) Silex — un builder de site “prêt à l’emploi” (forkable)
	•	Ce que c’est : un outil de création de sites avec approche visuelle (projet open-source côté Silex Labs).
	•	Pourquoi ça peut coller : ça vous donne une base “studio” complète (projet existant) à adapter, plutôt que de repartir de zéro.  
	•	Limite : c’est plus “website builder généraliste” ; vous devrez cadrer fort pour le modèle Teacher/Student.

3) Editor.js — si vous voulez surtout éditer du contenu, pas la mise en page
	•	Ce que c’est : un éditeur “block-based” (paragraphes, listes, images, etc.) qui sort du JSON propre plutôt que du HTML lourd.  
	•	Où ça brille : pour écrire des explications, cours, notes de classroom, descriptions, etc.
	•	Où ça ne suffit pas : ce n’est pas un “designer d’écran” comme Delphi (plutôt un éditeur de contenu).

⸻

Ce que je vous conseillerais (pragmatique)

Pour Dyglot Teacher (Desktop) : faites une app Electron/Tauri qui embarque un éditeur Web (typiquement GrapesJS), et vous contrôlez :
	•	une palette de composants “Dyglot” (Audio, Champ texte, Champ Furigana, Liste d’exemples…),
	•	les contraintes (zones autorisées, tailles, styles imposés),
	•	la sortie (un template + une spec JSON de mapping champs → rendu).

Ensuite, Dyglot Student n’exécute pas “du code Teacher arbitraire”, mais rend un template contrôlé (HTML/CSS dans WebView, ou rendu via votre moteur).

Si vous me donnez 2–3 exemples d’écrans “idéaux” (même décrits en texte), je peux vous proposer une structure de composants Dyglot (la palette minimale) qui rend l’éditeur vraiment utilisable pour Benoît sans qu’il voie SQL/HTML.
