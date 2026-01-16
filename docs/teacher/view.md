# Teacher — Designing Views (Question vs Answer)

## Why this page exists

In Dyglot v1, Views were hard-coded by the application.
Fields were shown or hidden dynamically, depending on modes and user settings.

This approach worked, but it had serious limitations:
- Views were difficult to maintain.
- Teachers could not fully control presentation.
- Students could modify display rules, which caused confusion.
- The distinction between *question* and *answer* was implicit and rigid.

Dyglot v2 changes this model completely.

In Dyglot v2, **Views are explicitly designed by the Teacher**.

---

## What is a View?

A **View** is a way to present a card to a Student.

A View defines:
- **Which fields are visible**
- **How they are arranged**
- **What is considered a Question**
- **What is considered an Answer**
- **Which interaction model is used (Quiz, Browse, etc.)**

A View is always defined **inside a Course**.

Students never design Views.  
They only choose among the Views provided by the Teacher.

---

## Question vs Answer: Two explicit Views

One of the most important design decisions in Dyglot v2 is this:

> **A Question and an Answer are two distinct Views.**

They are *not* the same View with fields hidden or revealed.

### Why this matters

In Dyglot v1, revealing the answer meant unmasking fields.
This made it impossible to:
- Define a true “front” and “back”
- Rearrange the layout between question and answer
- Change typography or emphasis
- Create asymmetric designs

In Dyglot v2:
- A **Question View** defines what the Student sees before answering
- An **Answer View** defines what the Student sees after answering

This gives Teachers full control over pedagogy and presentation.

---
### Views (Teacher-Defined)

A **View** defines **what the student sees**.

Examples:

- Vocabulary view
- Browse view
- Quiz view
- Listening-only view
- Korean → English
- English → Korean
- Hanja-focused
- Any domain-specific view



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


A View defines how cards are presented.

Views are defined by the teacher, not by the student.

Each view defines:

- what is shown on the question side
- what is shown on the answer side
- or how information is revealed progressively

Important Decision

In Dyglot v2:

- Question and Answer may be two distinct layouts
- Reveal-by-unmasking is optional, not imposed

This avoids hard-coding assumptions and allows:

- recto/verso models,
- reveal-based models,
- hybrid models.

  Types de vues définies par le Teacher

#### Practice View (Quiz / Training)

La vue “classique” d’apprentissage.

- Présente une question
- Attend une réponse (mentale, tapée, ou juste révélée)
- Gère une progression (session)
- Peut être utilisée avec différents filtres

⚠️ Point clé (important) :
Cette vue peut être :

- soit une vue unique avec des champs masqués / révélés,
- soit deux vues distinctes :
- Question View
- Answer View

👉 C’est un choix du Teacher, pas du moteur.

⸻

#### Browse View

Vue de consultation libre.

- Pas de notion de question / réponse
- Pas de score
- Pas de pression
- Permet d’explorer les cartes comme un dictionnaire ou un catalogue

Typiquement :

- voir toutes les infos d’une carte
- naviguer, filtrer, lire, écouter

⸻

#### Reverse Practice View

Vue de pratique “inversée”.

Exemples :

- Anglais → Coréen
- Définition → Terme
- Son → Mot
- Hanja → Hangul

👉 Ce n’est pas un “mode magique”
👉 C’est une vue différente, définie explicitement par le Teacher

⸻

#### Recognition View

Vue de reconnaissance passive.

- L’utilisateur voit / entend quelque chose
- Il évalue lui-même s’il reconnaît ou non
- Interaction minimale (✓ / ✗ / “je sais” / “je ne sais pas”)

Très utile pour :

- révisions rapides
- transport
- fatigue cognitive

⸻

#### Explained View

Vue pédagogique.

- La carte est présentée avec explication
- Le Teacher décide quels champs sont visibles

Peut inclure :

- notes
- commentaires
- règles
- exemples détaillés

Souvent utilisée :

- avant la pratique
- après un échec
- comme support de cours

⸻

#### Audio-First View

Vue centrée sur le son.

- Le son est le point d’entrée
- Les autres champs peuvent être masqués au départ
- Idéal pour prononciation, écoute, rythme

⸻

#### Hanja / Script-Focused View

Vue spécialisée sur un système d’écriture ou une dimension précise.

Exemples :

- Hanja
- Kana / Kanji
- IPA
- Solfège (notation musicale, rythme)

👉 Encore une fois : vue définie par le Teacher, pas codée en dur.

---

#### Free / Custom View

Vue totalement libre.

- Le Teacher assemble les champs
- Décide de l’ordre
- Décide de ce qui est visible ou conditionnel
- Décide si la vue est “pratiquante” ou “consultative”

C’est là que ton moteur devient généraliste.

---

Ce que le Student voit (très important)

Pour le Student, tout ça se résume à :

- une liste de vues (boutons radio ou équivalent)
- une liste de filtres prédéfinis
- un gros bouton :
- Practice
- ou Browse

👉 Aucune création
👉 Aucune édition
👉 Aucune complexité

---

## Examples

### Example 1 — Korean → English Quiz

**Question View**
- Korean word
- Audio button
- No translation visible

**Answer View**
- Korean word
- English translations
- Example sentences
- Grammar tags

### Example 2 — Browse Mode

**Single View**
- All fields visible
- No question/answer logic
- No scoring

---

## View engines

Each View is associated with a **View Engine**.

The engine defines:
- How answers are evaluated
- Which buttons are shown to the Student
- How progress is updated

Examples of engines:
- **V1-like engine** (Good / Wrong / Later)
- **Anki-like engine** (Again / Hard / Good / Easy)
- **Custom engine** (defined by the Teacher)

The engine is chosen by the Teacher, not the Student.

---

## What Students can and cannot do

### Students can:
- Choose a View (via radio buttons or similar)
- Start a session using that View
- Reset a session

### Students cannot:
- Modify which fields are visible
- Change layout or typography
- Create or edit Views
- Change the underlying engine

This is a deliberate design choice.

> Pedagogy is the responsibility of the Teacher.

---

## Design principles

- Views are **explicit**, not inferred
- Question and Answer are **separate Views**
- Teachers design pedagogy
- Students focus on learning
- UI complexity is moved upstream, not exposed to Students

If a Student wonders *“why does this look like this?”*,  
the answer is always: **because the Teacher decided so**.

---

## Relationship to Dyglot Studio

Views are not expected to be written by hand.

Dyglot v2 assumes the existence of a dedicated tool:

**Dyglot Studio**

Dyglot Studio allows Teachers to:
- Design Views visually
- Arrange fields graphically
- Associate Views with engines
- Preview Question and Answer flows

Teachers are not required to know HTML, SQL, or programming concepts.

This is not a limitation.  
It is a design requirement.# Teacher — Designing Views (Question vs Answer)

This page explains how teachers design **Views** in Dyglot, and in particular how
**questions and answers** are defined.

This is a critical topic because it directly affects:
- learning efficiency,
- UI clarity,
- and long-term maintainability.

---

## What Is a View?

A **View** defines *how a card is presented* to the student during a session.

A View answers questions such as:
- What is shown first?
- What is hidden?
- What is revealed later?
- What actions are available to the student?

A View is always defined **by the Teacher**, never by the Student.

---

## Question vs Answer: Two Valid Models

Dyglot deliberately supports **two conceptual models** for question/answer.
The Teacher chooses which one to use **per View**.

---

## Model A — Reveal-Based View (V1-style)

In this model, a View is a **single screen**.

- The *question* is the initial state.
- The *answer* is revealed by unmasking fields.

### Characteristics

- One layout
- Progressive reveal
- Minimal visual change
- Simple mental model

### Example

- Question:
  - Korean word shown
  - English hidden
- Answer:
  - English translation revealed
  - Example sentences revealed

### When to use this model

- Vocabulary learning
- Flashcard-style practice
- When continuity matters more than contrast

---

## Model B — Two-Sided View (Front / Back)

In this model, **question and answer are two distinct screens**.

- Front = question layout
- Back = answer layout

Each side can have:
- different fields
- different layout
- different emphasis

### Characteristics

- Two explicit presentations
- Strong visual separation
- Greater expressive power

### Example

- Front:
  - Korean word
  - Audio button
- Back:
  - English + Japanese
  - Grammar notes
  - Hanja
  - Examples

### When to use this model

- Complex cards
- Multi-language explanations
- When the answer needs structure, not just reveal

---

## Why Dyglot Does NOT Enforce One Model

Different teachers think differently.

Some teachers think:
> “The answer is just hidden information.”

Others think:
> “The answer is a different explanation altogether.”

Both are valid.

Dyglot refuses to hard-code pedagogy.

---

## What Students Experience

Students do **not** choose the model.

They simply:
- answer,
- reveal,
- flip,
- or progress,

according to what the Teacher has designed.

This ensures:
- simplicity,
- consistency,
- no cognitive overload.

---

## Views Are Independent

In Dyglot v2:

- Each View is designed independently.
- Views do NOT share a single conditional UI.
- There is no “one view that does everything”.

This avoids:
- complex conditional layouts,
- brittle UI logic,
- maintenance nightmares.

---

## What Teachers Control Explicitly

For each View, the Teacher defines:

- Presentation model (Reveal-based or Two-sided)
- Which fields are visible on question
- Which fields are visible on answer
- Layout and emphasis
- Learning engine type
  - V1-like
  - Anki-like
  - Custom (future)

---

## What Teachers Do NOT Control

Teachers do not manage:
- session persistence logic
- low-level UI widgets
- storage mechanisms

These are handled by the Dyglot engine.

---

## Design Principle

> A View is a pedagogical decision, not a technical one.

Dyglot’s role is to **execute** the teacher’s intent,
not to reinterpret it.

---

## Summary

- A View defines how a card is presented
- Question vs Answer can be:
  - a reveal,
  - or a flip
- Both models are first-class citizens
- Teachers choose
- Students follow
- Complexity stays out of the student’s hands