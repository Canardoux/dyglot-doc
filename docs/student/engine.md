# Practice Engines

This document defines **Practice Engines** in Dyglot v2.

A Practice Engine specifies **how a learning session behaves**:
- how cards are presented,
- how the student interacts with them,
- which actions are available,
- and how these actions affect the session state.

A Practice Engine is **chosen by the Teacher** when defining a View.
The Student uses the engine but does not configure it.

---

## 1. What a Practice Engine Is (and Is Not)

### Is
A Practice Engine is:
- a **behavioral contract**,
- a **user interaction model**,
- a **set of guarantees** about progression and scheduling.

### Is Not
A Practice Engine is **not**:
- a database schema,
- a UI layout,
- a specific algorithm implementation,
- a promise of mathematical equivalence with another system.

> A Practice Engine is defined by what the user can do  
> and what the system guarantees afterward.

---

## 2. Core Concepts

### Card
A Card is a unit of knowledge.
It contains **data only** (no presentation logic).

### View
A View defines:
- which fields of the Card are visible,
- how they are arranged visually,
- which Practice Engine is used.

### Session
A Session represents the student’s progression **inside a View and a Filter**.

Sessions:
- are persistent,
- can be reset by the student,
- are isolated from other views and filters.

---

## 3. Engine Responsibilities

Every Practice Engine MUST define:

1. **Interaction Flow**
   - Question phase
   - Answer reveal phase
   - Evaluation phase

2. **Available Actions**
   - Buttons or controls shown to the student

3. **Action Semantics**
   - Meaning of each action

4. **Session Effects**
   - How actions affect the state of the session

5. **Scheduling Guarantees**
   - Relative ordering of future reviews

---

## 4. Engine Type: V1-like

This engine reproduces the behavior of Dyglot v1.

### Interaction Model
1. Card is presented (question)
2. Student reveals the answer
3. Student evaluates himself

### Available Actions
- `Wrong`
- `Good`

### Action Semantics
- **Wrong**
  - The card remains active in the current session
- **Good**
  - The card progresses toward completion

### Session Guarantees
- Each (View, Filter) pair has its own session
- Cards move through deterministic internal states
- Resetting a session restores all cards to *Untested*

This engine is:
- deterministic,
- simple,
- fully compatible with Dyglot v1 mental model.

---

## 5. Engine Type: Anki-like

This engine is **behaviorally compatible** with Anki-style spaced repetition.

> Anki-like does **not** mean Anki-identical.

### Interaction Model
1. Card is presented (question)
2. Answer is revealed
3. Student performs a self-assessment

### Available Actions (minimum contract)
- `Again`
- `Hard`
- `Good`
- `Easy`

Labels may be localized or renamed by the Teacher.

### Action Semantics (conceptual)
- **Again** → review very soon
- **Hard** → review soon
- **Good** → review later
- **Easy** → review much later

### Scheduling Guarantees
The engine guarantees **monotonic spacing**:
Again < Hard < Good < Easy

Exact delays are **implementation-defined**.

The engine guarantees:
- increasing intervals over time,
- stability of relative ordering,
- persistence across sessions.

---

## 6. Engine Type: Custom

Teachers may define custom engines.

A Custom Engine MUST declare:
- interaction phases,
- available actions,
- action semantics,
- session guarantees.

Custom engines may be experimental and classroom-specific.

---

## 7. Student Experience

From the student’s perspective:
- the **presentation** is defined by the Teacher,
- the **engine** defines which buttons are available,
- the **meaning** of buttons is consistent within a View.

The student does not configure:
- algorithms,
- scheduling rules,
- card selection logic.

---

## 8. Resetting Sessions

Students MAY reset:
- a single session,
- all sessions in a classroom.

Resetting a session restores:
- all cards to their initial state,
- no data is deleted.

---

## 9. Design Principle

> A Dyglot specification is considered valid  
> when a developer can implement a compatible engine  
> without consulting any external documentation.

This document intentionally specifies:
- **what must happen**,
- not **how it is implemented**.

---

A Practice Engine defines:
	1.	The interaction model (question → answer → feedback)
	2.	The user actions available at each step
	3.	The meaning of each action
	4.	The effect on the session state
	5.	The expected scheduling behavior

Aucune ligne sur comment c’est codé.

⸻
Practice Engine Types (v2)
	1.	V1-like
	•	Binary evaluation
	•	Deterministic stacks
	•	Session-centric
	2.	Anki-like
	•	Multi-level self-assessment
	•	Progressive spacing
	•	Review-centric
	3.	Custom
	•	Defined by the Teacher
	•	Must declare:
	•	available actions
	•	action semantics
	•	session guarantees
⸻

3️⃣ Moteur V1-like (référence maîtrisée)

Celui-ci est votre baseline.

Interaction model
	•	Question
	•	User reveals answer
	•	User evaluates himself

Available actions
	•	Wrong
	•	Good

Meaning
	•	Wrong
→ la carte est remise dans le stack actif
	•	Good
→ la carte progresse vers un état “acquired”

Session guarantees
	•	Every (View, Filter) pair has its own session
	•	Cards move through deterministic stacks
	•	Resetting a session restores all cards to Untested

👉 Celui-ci, vous pouvez le documenter complètement et coder les yeux fermés.

⸻

4️⃣ Moteur Anki-like (sans connaître Anki)

Voici le point crucial :
👉 vous ne documentez pas Anki
👉 vous documentez un moteur compatible avec la perception utilisateur d’Anki

Ce que vous devez spécifier (et rien de plus)

Interaction model
	•	Question
	•	Answer reveal
	•	User chooses a self-assessment

Available actions (minimum contract)
	•	Again
	•	Hard
	•	Good
	•	Easy

(les libellés peuvent être localisés / renommés par le teacher)

Meaning (conceptuel)
	•	Again → revoir très bientôt
	•	Hard → revoir bientôt
	•	Good → revoir plus tard
	•	Easy → revoir beaucoup plus tard

“Anki-like does not mean Anki-identical.”