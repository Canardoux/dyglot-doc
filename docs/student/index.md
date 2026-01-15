# Student Overview

Dyglot Student is intentionally simple.

A successful home screen contains only:
1) a View selector
2) a Filter selector
3) a big Practice / Browse button

Students learn.
Teachers define the experience.

1) Écran d’accueil (mode Simple, par défaut)

Contenu minimal :
	•	Course/Classroom (un seul choix visible : la current course ; un bouton discret “Change…”)
	•	View (radio)
	•	Filter (liste)
	•	Practice (gros bouton)
	•	Browse (gros bouton)

Optionnel : un petit résumé “Session: in progress / new”.

But : en 5 secondes, le student comprend et peut agir.

2) Menu hamburger (écrans secondaires)

Vous avez listé exactement les bons. Je vous propose cette hiérarchie (avec wording Student-friendly) :

A) Settings
	•	✅ Expert mode (toggle)
	•	Language / UI prefs (plus tard)
	•	About / Help

Expert mode ne doit pas ajouter des options partout : il déverrouille des pages ou des actions avancées.

B) Sessions

Page “Sessions” (lisible même en simple) :
	•	Liste groupée par Course/Classroom
	•	View + Filter
	•	status (New / In progress / Completed)
	•	last played date
	•	actions : Resume, Reset

En bas :
	•	Reset all sessions (this course)
	•	(Expert) Reset all sessions (everything)

C) Courses / Classrooms

Page “Courses” orientée usage :
	•	Installed (local / downloaded)
	•	Official (catalog Canardoux)
	•	Registrars (catalogues externes)
	•	Add by link… (URL / QR code)
	•	(Expert) Add private course… (local file, Drive-like, etc.)

Actions par course :
	•	Open / Set as default
	•	Update
	•	Remove (ne supprime pas forcément les sessions → ou au moins avertir)

D) Expert (visible seulement si Expert = ON)

C’est ici qu’on met les “trucs qui font peur” :
	•	afficher les IDs techniques (CourseId / ViewId / FilterId)
	•	diagnostics (sync status, storage usage)
	•	import/export sessions
	•	logs

3) “Smart mais simple” : la clé, c’est le premier lancement

Le piège, c’est votre inquiétude : ne pas tomber sur un écran de gestion vide.

Je propose un flow très léger :
	1.	Premier lancement → écran d’accueil, mais Course = Starter Course (pack minimal)
	2.	Un bandeau discret : “Get more courses” → ouvre Courses page
	3.	Lorsqu’il installe une course, elle devient “current course”.

Ainsi :
	•	pas de mur “gestion de courses” au début,
	•	mais découverte possible immédiatement.

4) Deux niveaux de complexité

Simple (par défaut)
	•	Le student ne peut pas créer de filtres.
	•	Il choisit parmi ceux du Teacher.
	•	Il peut reset une session.
	•	Il peut installer/ouvrir des courses.

Expert (opt-in)
	•	plus d’actions (reset global, import/export, gestion fine)
	•	mais toujours pas de création de filtres si c’est un concept Teacher (à discuter, mais vous penchez clairement vers “Teacher-only”, et je suis d’accord).

