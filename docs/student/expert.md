## Expert Mode

Expert Mode is designed for advanced students who want to better understand
how a classroom works, without modifying it.

Expert Mode does not introduce new learning features.
It relaxes some constraints imposed by the teacher-defined interface,
while preserving the pedagogical intent of the classroom.

### What Expert Mode allows

When Expert Mode is enabled, the student may:

- Inspect teacher-defined views and filters (read-only)
- Access advanced session management:
  - reset or duplicate sessions
  - inspect detailed session statistics
- Temporarily override some filters (non persistent)
- Access advanced debugging information:
  - card identifiers
  - metadata
  - source of cards (local / remote)
  - engine type used by the view

All actions performed in Expert Mode are local to the student
and never modify the classroom itself.

### What Expert Mode does NOT allow

Expert Mode never allows:

- modifying a classroom
- editing views or filters
- changing scheduling rules
- altering card structures
- publishing or sharing content

Those actions are strictly reserved to the Teacher role.

### Design philosophy

Expert Mode exists to support understanding, experimentation,
and autonomy — not to bypass pedagogical design.

A student who does not enable Expert Mode should never feel limited.
A student who enables it should never break the classroom.

✅ Ce que le mode Expert PEUT faire (légitime)

Voici une liste raisonnable, défendable, documentable.

1️⃣ Accès en lecture aux règles du Teacher

(mais sans les modifier)
	•	voir quels champs sont masqués / affichés,
	•	comprendre la logique de la vue,
	•	voir les critères exacts d’un filtre.

👉 Transparence, pas pouvoir.

⸻

2️⃣ Gestion avancée des sessions

Toujours côté Student.
	•	reset partiel d’une session,
	•	duplication d’une session,
	•	renommer une session,
	•	supprimer une session inactive,
	•	voir les statistiques détaillées.

👉 Ça n’affecte pas la pédagogie, seulement la progression personnelle.

⸻

3️⃣ Accès multi-classroom simultané (lecture seule)

Cas typique de Benoît.
	•	comparer deux classrooms,
	•	naviguer entre plusieurs sources de cartes,
	•	sans fusionner les données.

👉 Important : pas de mélange implicite, pas de Frankenstein SQL.

⸻

4️⃣ Override TEMPORAIRE de filtres

Très important : temporaire et non persistant.

Exemples :
	•	“montre-moi aussi les cartes marquées deleted”
	•	“ignore le niveau minimum”
	•	“inclure les cartes non prévues pour cette vue”

👉 Le mot clé est temporaire
👉 rien n’est enregistré comme configuration durable.

⸻

5️⃣ Debug pédagogique (lecture seule)
	•	afficher les IDs de cartes,
	•	voir les métadonnées techniques,
	•	voir la source (local / remote),
	•	voir le moteur exact utilisé (V1-like, Anki-like, etc.).

👉 Utile pour enseignants / power users
👉 Invisible pour un étudiant normal.

⸻

❌ Ce que le mode Expert NE DOIT PAS faire

Très important pour la doc.

❌ Modifier une classroom
❌ Modifier une vue
❌ Créer ou éditer des filtres persistants
❌ Modifier les règles de scheduling
❌ Changer la structure des cartes

👉 Tout ça relève exclusivement du Teacher.
