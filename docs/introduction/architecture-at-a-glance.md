# Dyglot v2 — Architecture at a Glance

This page provides a high-level, conceptual overview of Dyglot.
It explains how the system is structured, who does what, and how the main concepts relate to each other.

It is intentionally non-technical.
No knowledge of programming, databases, or frameworks is required to read this page.

---

## The Three Actors

Dyglot is built around three clearly separated actors.
Each actor has a well-defined role and responsibility.

### 1. The Engine Developer

The Engine Developer designs and maintains the Dyglot core engine.

Responsibilities:
- Define what the system is capable of.
- Provide stable, generic mechanisms (cards, views, sessions, engines).
- Ensure consistency, performance, and long-term evolution.

The Engine Developer does **not**:
- Design pedagogical content.
- Define how cards should be presented.
- Decide what students learn.

In Dyglot v2, the Engine Developer is a system designer — not a content author.

---

### 2. The Teacher

The Teacher is the creator of learning content.

Responsibilities:
- Create and maintain classrooms.
- Define cards and their attributes.
- Define views (how cards are presented).
- Define filters (how cards are selected).
- Choose the learning engine used by each view.

**Dyglot Teacher is designed for teachers who do not know — and do not want to know — HTML, SQL, or programming concepts.  
This is not a limitation. It is a design requirement.**

The Teacher controls the pedagogical structure.
The Teacher defines what the student can see and how learning happens.

---

### 3. The Student

The Student is the learner.

Responsibilities:
- Choose a classroom.
- Select a view and a filter defined by the teacher.
- Practice or browse cards.
- Progress through sessions.
- Reset sessions if desired.

The Student does **not**:
- Modify cards.
- Modify views.
- Modify filters.
- Redefine the learning structure.

The Student interacts with Dyglot through a deliberately simple interface.

---

## Core Concepts

Dyglot is structured around a small number of core concepts.
These concepts are shared by all three actors.

### Classroom

A **Classroom** is a closed pedagogical space defined by a teacher.

- A classroom contains learning material.
- A classroom has clear boundaries.
- A classroom can be local, downloadable, or remote.
- A classroom is not a database exposed to the outside world.

A classroom answers the question:
> “What learning universe am I entering?”

---

### Card

A **Card** is a unit of learning data.

- A card contains information (words, examples, audio, attributes, etc.).
- A card does **not** define its presentation.
- A card does **not** embed UI or layout.

Cards are neutral data.
They become meaningful through views.

---

### View

A **View** defines how cards are presented to the student.

- A view is defined by the teacher.
- A view selects which card fields are visible.
- A view defines the interaction style (question, answer, browsing, etc.).
- A view is associated with a learning engine.

Examples of views:
- Quiz-like views
- Browse views
- Language-specific views (e.g. Korean → English, English → Korean, Hanja)

Views are **teacher-defined**.
The student only selects among available views.

---

### Filter

A **Filter** defines which cards are selected.

- Filters are defined by the teacher.
- Filters are based on card attributes.
- Filters are not editable by the student.

A filter answers the question:
> “Which subset of cards will be used in this session?”

---

### Session

A **Session** represents a student’s progression.

- A session is created for a given (Classroom × View × Filter).
- A session tracks learning state and progress.
- A student may reset a session to start over.

Sessions are personal to the student.
They never modify the classroom itself.

---

## Responsibility Boundaries

One of Dyglot’s core principles is the clear separation of responsibilities.

### Teachers define:
- Cards
- Views
- Filters
- Learning engines

### Students choose:
- A classroom
- A view
- A filter
- When to practice or browse

### Students do not:
- Create or modify cards
- Create or modify filters
- Create or modify views

This separation keeps the system powerful without becoming confusing.

---

## High-Level Flow

A typical Dyglot usage flow looks like this:

1. A teacher creates a classroom.
2. The classroom becomes available to students.
3. A student selects a classroom.
4. The student selects a view and a filter.
5. A session is created or resumed.
6. The student practices or browses cards.
7. Progress is saved inside the session.

---

## Why This Architecture Matters

This architecture allows Dyglot to:

- Support multiple pedagogical models.
- Go beyond language learning.
- Avoid hard-coded user interfaces.
- Scale to new domains without redesigning the engine.

It also protects:
- Students from unnecessary complexity.
- Teachers from technical constraints.
- The engine from pedagogical assumptions.

Dyglot is not a course.
It is a framework that allows courses to exist.

---