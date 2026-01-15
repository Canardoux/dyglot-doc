# Dyglot v2 — Introduction & Conceptual Overview

## What Dyglot Is — and What It Is Not

Dyglot is **not** a language-learning application.

Dyglot is a **learning engine** designed to support a wide variety of learning domains:
languages, writing systems, solfège, symbols, structured vocabularies, or any domain
that can be expressed as *cards*, *examples*, and *progressive practice*.


Language learning is only one possible use case.
Dyglot Korean v1 is one concrete product built on top of earlier Dyglot ideas.
Dyglot v2 generalizes this approach.

Dyglot is designed around **three distinct actors**, each with clearly separated roles,
responsibilities, and tools.

---

## The Three Actors

### 1. System Developer

The system developer designs and maintains the **Dyglot engine**.

Responsibilities:
	•	designs the Dyglot engine,
	•	defines the data model capabilities,
	•	defines what is possible and impossible,
	•	but does not define pedagogy.

- core data model
- storage formats
- APIs
- performance and scalability
- cross-platform delivery (desktop, mobile, web)

The system developer **does not design pedagogical content**, and **does not design learning UIs**.

In Dyglot v2, the system developer explicitly avoids imposing domain assumptions
(language-specific fields, fixed card structures, or pedagogical rules).

The system developer does not decide how people learn.
He builds the engine that allows teachers to decide.

---

### 2. Teacher

The teacher is the **creator of learning content and learning experiences**.

> **Dyglot Teacher is designed for teachers who do not know — and do not want to know —
> HTML, SQL, or programming concepts.  
> This is not a limitation. It is a design requirement.**

Responsibilities:
- defining **card data**
- defining **views** (what the student sees)
- defining **filters**
- defining **courses / classrooms**
- deciding what the student can and cannot configure

The teacher works using **Dyglot Teacher**, a **desktop studio**, not a mobile app.

The teacher thinks in terms of:
- cards
- fields
- examples
- views
- practice flows

Not in terms of:
- tables
- schemas
- joins
- markup languages

The teacher:
	•	creates learning content,
	•	structures curricula,
	•	defines how knowledge is presented,
	•	defines what the learner sees,
	•	defines what is hidden and what is revealed.

The teacher:
	•	does not write SQL
	•	does not write HTML
	•	does not think in terms of tables, joins, or schemas

The teacher thinks in terms of:
	•	concepts,
	•	examples,
	•	views,
	•	progressions,
	•	filters,
	•	pedagogy.

Dyglot Teacher is therefore a studio, not a runtime app.
It runs on desktop, not on a phone.


---

### 3. Student

The student uses **Dyglot Student** to learn.

The student experience is intentionally simple and constrained.

A successful student home screen contains only:
- a **view selector** (radio buttons)
- a **filter selector** (predefined by the teacher)
- a large **Practice** or **Browse** button

The student:
- does **not** define filters
- does **not** modify views
- does **not** design sessions

Those choices belong to the teacher.

The student:
	•	does not configure pedagogy,
	•	does not create filters,
	•	does not decide which fields exist,
	•	does not alter views.

The student:
	•	selects from what the teacher has defined,
	•	practices,
	•	browses,
	•	progresses.

A successful student UI is extremely simple.


---

## Core Concepts

### Card

A **card** is a unit of knowledge.

In Dyglot v2, a card is:
- a collection of fields (1–1 relationships)
- a collection of lists (1–N relationships)
- optionally linked media (audio, images, etc.)

A card does **not** contain presentation logic.

This is a deliberate departure from systems where each card embeds its own HTML layout.

---

### CardSet

A **CardSet** is a **shared data source**:
- a collection of cards
- possibly multilingual
- possibly reused by multiple courses

Example:
- one CardSet containing Korean / English / Japanese data
- reused by multiple courses with different pedagogical goals

CardSets are **maintained by the teacher** and may evolve over time.

---

### Course (formerly “Classroom”)

A **Course** (previously called *Classroom*) is a **learning structure built on top of one or more CardSets**.

A course defines:
- which cards are used
- which views exist
- which filters exist
- which learning flows are available

A course is **closed and coherent**.
It is not an unbounded database.

Dyglot v2 explicitly avoids the idea of a single “giant classroom”.

---

### View

A **View** defines **what the student sees**.

Examples:
- Vocabulary view
- Hanja view
- English → Korean view
- Browse view
- Quiz view
- Listening-only view

A view is defined by the teacher.

The student only selects among existing views.

#### Question vs Answer

In Dyglot v2, a view may define:
- a **question layout**
- a **response layout**

These may be:
- the same layout with fields revealed
- or two entirely distinct layouts

This avoids hardcoding the idea that “answer = unmasking fields”.

---

### Filter

A **Filter** is a predefined selection rule for cards.

Filters are:
- defined by the teacher
- attached to a course and a view
- selectable by the student

Examples:
- beginner cards
- verbs only
- recently failed cards
- lesson 1

The student does **not** create filters.

---

### Session

A **Session** is a **temporary learning context** created when the student presses:
- Practice
- Browse

A session represents:
- a progression through a filtered set of cards
- independent of other sessions
- resumable

Sessions are student-specific and ephemeral.

---

## Local, Downloadable, and Remote Courses

Courses may be:
- bundled locally with the application
- downloadable
- remotely hosted

Dyglot v2 supports **discovery**:

A student may see:
- local courses shipped with the app
- official courses published by Canardoux
- courses published by trusted registrars
- manually added courses (advanced users)

Teachers do **not** publish directly into a global public space.

Registrars curate and validate courses to avoid abuse and chaos.

---

## Why This Architecture Exists

Dyglot v2 exists to resolve long-standing tensions:
- between card-centric and relational thinking
- between freedom and maintainability
- between teacher control and student simplicity
- between reuse and coherence

Dyglot v2 makes these tensions **explicit**, rather than hiding them in code.

---

## Terminology & Glossary

- **Card**: atomic learning unit
- **CardSet**: reusable collection of cards
- **Course**: structured learning experience built on CardSets
- **View**: teacher-defined presentation of cards
- **Filter**: teacher-defined card selection
- **Session**: student learning progression
- **Teacher**: content and pedagogy designer
- **Student**: learner
- **System Developer**: engine designer
1. The Three Actors

Dyglot v2 is explicitly built around three distinct actors.

They are not roles hidden in the implementation —
they are first-class concepts, visible in the design, the tools, and the documentation.

1.1 The System Developer

The system developer:
	•	designs the Dyglot engine,
	•	defines the data model capabilities,
	•	defines what is possible and impossible,
	•	but does not define pedagogy.

The system developer does not decide how people learn.
He builds the engine that allows teachers to decide.

⸻

1.2 The Teacher

Dyglot Teacher is designed for teachers who do not know — and do not want to know — HTML, SQL, or programming concepts.
This is not a limitation. It is a design requirement.

The teacher:
	•	creates learning content,
	•	structures curricula,
	•	defines how knowledge is presented,
	•	defines what the learner sees,
	•	defines what is hidden and what is revealed.

The teacher:
	•	does not write SQL
	•	does not write HTML
	•	does not think in terms of tables, joins, or schemas

The teacher thinks in terms of:
	•	concepts,
	•	examples,
	•	views,
	•	progressions,
	•	filters,
	•	pedagogy.

Dyglot Teacher is therefore a studio, not a runtime app.
It runs on desktop, not on a phone.

⸻

1.3 The Student


The student:
	•	does not configure pedagogy,
	•	does not create filters,
	•	does not decide which fields exist,
	•	does not alter views.

The student:
	•	selects from what the teacher has defined,
	•	practices,
	•	browses,
	•	progresses.

A successful student UI is extremely simple.

⸻

2. Core Concept: Classroom

The central concept in Dyglot is the Classroom.

A classroom:
	•	is not a database (even if implemented as one),
	•	is not a file format,
	•	is not a lesson.

A classroom is:

a coherent body of structured knowledge, designed by a teacher, meant to be explored and practiced by students.

The term “classroom” is deliberately chosen because:
	•	it is understood by teachers,
	•	it is understood by developers,
	•	it is not tied to relational-database vocabulary.

Even though a classroom may be backed by SQL internally,
teachers never see it as such.

⸻

3. Cards (Neutral, Non-Pedagogical)

A card is a unit of knowledge.

Important design decision:

A card does not embed its presentation.

A card is:
	•	structured data,
	•	neutral,
	•	reusable across multiple views.

A card may have:
	•	attributes (1-to-1),
	•	relations (1-to-many),
	•	optional attributes,
	•	domain-specific fields.

The engine does not impose semantics like:
	•	“this field is the front”
	•	“this field is the back”
	•	“this is a language”

Those semantics belong to Views, not to Cards.

This is a deliberate difference from systems like Anki.

⸻

4. Views (Teacher-Defined)

A View defines how cards are presented.

Views are defined by the teacher, not by the student.

Examples:
	•	Korean → English
	•	English → Korean
	•	Hanja-focused
	•	Browsing mode
	•	Any domain-specific view

Each view defines:
	•	what is shown on the question side
	•	what is shown on the answer side
	•	or how information is revealed progressively

Important Decision

In Dyglot v2:
	•	Question and Answer may be two distinct layouts
	•	Reveal-by-unmasking is optional, not imposed

This avoids hard-coding assumptions and allows:
	•	recto/verso models,
	•	reveal-based models,
	•	hybrid models.

  Types de vues définies par le Teacher

1. Practice View (Quiz / Training)

La vue “classique” d’apprentissage.
	•	Présente une question
	•	Attend une réponse (mentale, tapée, ou juste révélée)
	•	Gère une progression (session)
	•	Peut être utilisée avec différents filtres

⚠️ Point clé (important) :
Cette vue peut être :
	•	soit une vue unique avec des champs masqués / révélés,
	•	soit deux vues distinctes :
	•	Question View
	•	Answer View

👉 C’est un choix du Teacher, pas du moteur.

⸻

2. Browse View

Vue de consultation libre.
	•	Pas de notion de question / réponse
	•	Pas de score
	•	Pas de pression
	•	Permet d’explorer les cartes comme un dictionnaire ou un catalogue

Typiquement :
	•	voir toutes les infos d’une carte
	•	naviguer, filtrer, lire, écouter

⸻

3. Reverse Practice View

Vue de pratique “inversée”.

Exemples :
	•	Anglais → Coréen
	•	Définition → Terme
	•	Son → Mot
	•	Hanja → Hangul

👉 Ce n’est pas un “mode magique”
👉 C’est une vue différente, définie explicitement par le Teacher

⸻

4. Recognition View

Vue de reconnaissance passive.
	•	L’utilisateur voit / entend quelque chose
	•	Il évalue lui-même s’il reconnaît ou non
	•	Interaction minimale (✓ / ✗ / “je sais” / “je ne sais pas”)

Très utile pour :
	•	révisions rapides
	•	transport
	•	fatigue cognitive

⸻

5. Explained View

Vue pédagogique.
	•	La carte est présentée avec explication
	•	Le Teacher décide quels champs sont visibles
	•	Peut inclure :
	•	notes
	•	commentaires
	•	règles
	•	exemples détaillés

Souvent utilisée :
	•	avant la pratique
	•	après un échec
	•	comme support de cours

⸻

6. Audio-First View

Vue centrée sur le son.
	•	Le son est le point d’entrée
	•	Les autres champs peuvent être masqués au départ
	•	Idéal pour prononciation, écoute, rythme

⸻

7. Hanja / Script-Focused View

Vue spécialisée sur un système d’écriture ou une dimension précise.

Exemples :
	•	Hanja
	•	Kana / Kanji
	•	IPA
	•	Solfège (notation musicale, rythme)

👉 Encore une fois : vue définie par le Teacher, pas codée en dur.

⸻

8. Free / Custom View

Vue totalement libre.
	•	Le Teacher assemble les champs
	•	Décide de l’ordre
	•	Décide de ce qui est visible ou conditionnel
	•	Décide si la vue est “pratiquante” ou “consultative”

C’est là que ton moteur devient généraliste.

⸻

Ce que le Student voit (très important)

Pour le Student, tout ça se résume à :
	•	une liste de vues (boutons radio ou équivalent)
	•	une liste de filtres prédéfinis
	•	un gros bouton :
	•	Practice
	•	ou Browse

👉 Aucune création
👉 Aucune édition
👉 Aucune complexité


⸻

5. Sessions (Student Progress)

A Session represents:

a learner’s progression inside a classroom, for a given view and filter.

A session:
	•	is created when the student starts practicing or browsing,
	•	persists progress,
	•	does not redefine pedagogy.

Sessions are student-side concepts, but:
	•	they operate only inside teacher-defined boundaries.

⸻

6. Filters (Teacher-Defined)

Filters define which cards are eligible for a session.

Key rule in Dyglot v2:

Filters are defined by the teacher, not by the student.

This is a major correction compared to Dyglot v1.

The student:
	•	selects a filter from a list,
	•	does not create or edit filters.

This ensures:
	•	a clean, simple entry screen,
	•	pedagogical coherence,
	•	no accidental complexity for the learner.

⸻

7. The Student Entry Screen (Design Principle)

A successful student entry screen contains only:
	1.	View selection (radio buttons)
	2.	Filter selection (predefined)
	3.	A large Practice or Browse button

Nothing else.

No field toggles.
No pedagogy controls.
No technical options.

⸻

8. Why Dyglot v2 Breaks with Dyglot v1

Dyglot v1:
	•	mixed views into a single conditional screen,
	•	allowed students to alter display logic,
	•	coupled UI logic tightly to code,
	•	was difficult to maintain and evolve.

Dyglot v2:
	•	separates views cleanly,
	•	moves pedagogical control to the teacher,
	•	simplifies the student experience,
	•	prepares the engine for domains beyond languages.

⸻

9. Documentation Structure

Dyglot v2 documentation is split conceptually into three parts:

9.1 Dyglot Engine
	•	technical specifications
	•	data model capabilities
	•	constraints and guarantees

9.2 Dyglot Teacher
	•	how teachers design classrooms
	•	how views and filters are defined
	•	how pedagogy is expressed without code

9.3 Dyglot Student
	•	how students navigate learning
	•	what sessions are
	•	what views and filters mean from their perspective

The present document is the shared root of all three.

⸻

10. Final Guiding Principle

In Dyglot v2, what the learner sees is part of the curriculum.

Therefore:
	•	the teacher defines views,
	•	the system enforces structure,
	•	the student focuses on learning.

---

## Summary

Dyglot v2 is:
- a learning engine
- teacher-driven
- student-friendly
- domain-agnostic
- explicit about responsibilities

Dyglot v2 is not:
- a language app
- a card HTML editor
- a free-for-all database
- a system where the student designs pedagogy

This clarity is intentional.

# Dyglot Documentation

This documentation is intentionally minimal and evolving.

Dyglot is a language-learning project centered around a simple idea:

> present the right card, at the right time.

The documentation is written progressively, alongside the project itself.

---

# Dyglot v2

Dyglot is **not** a language-learning app.

Dyglot is a **generic learning engine** designed to support structured learning using:
- cards,
- views,
- teacher-defined filters,
- and student sessions (progression over time).

Dyglot v1 (Dyglot Korean) was a bundled product for Korean learners.
Dyglot v2 separates:
- the engine,
- the content,
- and the learning experience.

## The Three Actors

Dyglot supports three distinct actors:

### System Developer
Builds and maintains the engine, tools, formats, and constraints.

### Teacher
Creates learning content and defines the student experience.

**Design requirement:** Teachers must not need HTML, SQL, or programming.

### Student
Learns. Chooses among teacher-defined options (views, filters) and practices.

## Some possible icons for Dyglot

![Dyglot Korean icon](icons.png)
*Dyglot Teacher — conceptual icon*

<p align="center">
  <img src="../images/dyglot-korean.png" width="96">
  <img src="../images/dyglot-teacher.png" width="96">
  <img src="../images/dyglot-student.png" width="96">
</p>

## Where to go next
- [Glossary](glossary.md)
- Teacher docs: `teacher/`
- Student docs: `student/`
- System docs: `system/'

Dyglot is **not** a language-learning application.

Dyglot is a **learning engine** designed to support multiple domains,
multiple pedagogical approaches, and multiple actors.

## The Three Actors

- **System Developer**
- **Teacher**
- **Student**

## Pages

- **Vision & Architecture (FR)**  
  Conceptual foundations of Dyglot.

- **Vision & Architecture (EN)**  
  English version of the same document.
