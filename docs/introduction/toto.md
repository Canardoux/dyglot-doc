# Dyglot v2 — Introduction & Conceptual Overview

Dyglot is a learning project built around a simple idea:

> **Present the right card, at the right time.**

Dyglot v2 is not a language-learning app.  
It is a **general learning engine** designed to support structured learning across many domains.

---

## What Dyglot Is — and What It Is Not

Dyglot is **not** a ready-made course.
Dyglot is **not** limited to languages.
Dyglot is **not** a flashcard HTML editor.

Dyglot **is** a learning engine that supports:

- languages and writing systems  
- solfège and musical notation  
- structured vocabularies  
- symbolic systems
- traffic laws, 
- any domain expressible as cards, examples, and progressive practice  

Core concepts are :

- cards,
- views,
- teacher-defined filters,
- and student sessions (progression over time).

Language learning is only one possible use case.

Dyglot Korean v1 was a **bundled product** built on earlier Dyglot ideas.  
Dyglot v2 generalizes this approach by **separating**:

- the engine  
- the content  
- the learning experience  

---

## The Three Actors

Dyglot v2 is explicitly designed around **three distinct actors**.

These actors are **not hidden roles**.
They are first-class concepts, visible in the design, tools, and documentation.

### 1. Student

The student uses **Dyglot Student** to learn.

The student experience is intentionally **simple and constrained**.

A successful student home screen contains only:

- a **view selector**
- a **filter selector** (predefined by the teacher)
- a large **Practice** or **Browse** button

The student:

- does **not** create filters
- does **not** modify views
- does **not** design sessions
- does **not** configure pedagogy

The student selects from what the teacher has defined, then practices and progresses.

A successful student UI is extremely simple.

---

### 2. Teacher

The teacher is the **designer of learning content and pedagogy**.

> **Dyglot Teacher is designed for teachers who do not know — and do not want to know —  
> HTML, SQL, or programming concepts.  
> This is not a limitation. It is a design requirement.**

The teacher defines:

- card data
- views
- filters
- courses
- learning flows
- what students can and cannot configure

The teacher works using **Dyglot Teacher**, a **desktop studio**, not a mobile app.

The teacher thinks in terms of:

- cards
- fields
- examples
- views
- progression
- pedagogy

Not in terms of:

- tables
- schemas
- joins
- markup languages

The teacher does **not** write SQL.  
The teacher does **not** write HTML.

---

### 3. System Developer

The system developer designs and maintains the **Dyglot engine**.

Responsibilities include:

- core data model
- storage formats
- APIs
- performance and scalability
- cross-platform delivery (desktop, mobile, web)

The system developer **does not design pedagogy**  
and **does not design learning content**.

The engine provides **capabilities**, not rules.

---

## Core Concepts

### Card

A **Card** is a unit of knowledge.

In Dyglot v2, a card is:

- a set of 1-to-1 fields
- a set of 1-to-many relations
- optional media (audio, images)
- structured, neutral data

A card **does not embed presentation logic**.

There is no concept of:
- “front”
- “back”
- “language”

Those semantics belong to **Views**, not Cards.

This is a deliberate departure from systems where cards embed HTML layouts.

---

### CardSet

A **CardSet** is a shared data source:

- a collection of cards
- reusable by multiple courses
- possibly multilingual

Example:

- one CardSet containing Korean, English, and Japanese
- reused by multiple courses with different goals

CardSets are maintained by teachers and may evolve over time.

---

### Course (formerly “Classroom”)

A **Course** is a **coherent learning structure** built on top of one or more CardSets.

A course defines:

- which cards are used
- which views exist
- which filters exist
- which learning flows are available

A course is **closed and coherent**.

Dyglot v2 explicitly avoids the idea of a single “giant classroom”.

The term *course* is used because it is:
- understandable by teachers
- understandable by students
- not tied to database vocabulary

---

### Views (Teacher-Defined)

A **View** defines what the student sees.

Examples:

- Practice view
- Browse view
- Quiz view
- Listening-first view
- Reverse practice view
- Script-focused view (Hanja, Kana, IPA)
- Domain-specific custom views

Views are defined **by the teacher**.
Students only select among existing views.

#### Question and Answer

A view may define:

- a question layout
- a response layout

These may be:
- the same layout with fields revealed
- or two completely distinct layouts

Dyglot v2 does **not** force “answer = unmasking”.

---

### Filters (Teacher-Defined)

A **Filter** is a predefined selection rule for cards.

Filters are:

- defined by the teacher
- attached to a course and a view
- selectable by the student

Examples:

- beginner cards
- verbs only
- lesson 1
- recently failed cards

Students **do not** create filters.

This is a major correction compared to Dyglot v1.

---

### Session

A **Session** is a temporary learning context created when the student presses:

- Practice
- Browse

A session represents:

- a progression through a filtered set of cards
- resumable progress
- student-specific state

Sessions exist **inside** teacher-defined boundaries.

---

## Local, Downloadable, and Remote Courses

Courses may be:

- bundled with the app
- downloadable
- remotely hosted

Dyglot supports **discovery**:

- official courses
- curated registrars
- manually added courses (advanced users)

Teachers do not publish directly into a global public space.

---

## Why Dyglot v2 Exists

Dyglot v2 resolves long-standing tensions:

- data vs pedagogy
- flexibility vs maintainability
- teacher control vs student simplicity
- reuse vs coherence

These tensions are made **explicit**, not hidden in code.

---

## Guiding Principle

> **What the learner sees is part of the curriculum.**

Therefore:

- the teacher defines views
- the system enforces structure
- the student focuses on learning

---

## Documentation Structure

Dyglot documentation is split into four parts:

- **Introduction** — shared concepts  
- **Student** — learning and progression  
- **Teacher** — designing content and pedagogy  
- **Engine** — technical specifications  

---

## Summary

Dyglot v2 is:

- a learning engine
- teacher-driven
- student-friendly
- domain-agnostic
- explicit about responsibilities

Dyglot v2 is **not**:

- a language app
- a card HTML editor
- a free-for-all database
- a system where students design pedagogy

This clarity is intentional.
