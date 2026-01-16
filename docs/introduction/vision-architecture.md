# Vision & Architecture

This page explains **why Dyglot is designed the way it is**.

It is not a technical specification, and it is not a user guide.
It is a **conceptual foundation** meant to clarify long-term choices,
avoid accidental complexity, and make the project understandable to
future teachers, contributors, and system developers.

---

## Dyglot Is Not a Flashcard App

Dyglot is often compared to tools like Anki.
This comparison is understandable — but misleading.

Dyglot is **not**:
- a predefined flashcard application,
- a fixed learning workflow,
- a single pedagogy embedded in code.

Dyglot is a **learning engine** that allows teachers to define:
- what a card contains,
- how it is presented,
- how learning progresses over time.

Pedagogy is **externalized**.  
The engine does not decide how people should learn.

---

## Separation of Concerns Is a Design Requirement

Dyglot is built on a strict separation between three responsibilities:

- **System Engine**  
  The generic, reusable learning engine.

- **Teacher**  
  The designer of content, structure, views, and learning logic.

- **Student**  
  The learner who interacts with what the teacher designed.

This separation is **not negotiable**.
It is the only way to:
- avoid hard-coded pedagogies,
- support very different learning domains,
- allow long-term evolution without breaking existing classrooms.

---

## Data Is Not Pedagogy

A core principle of Dyglot is the separation between:

- **Data** (CardSets)
- **Pedagogy** (Courses, Views, Filters, Sessions)

Cards contain **information**.
Courses define **how that information is used to teach**.

This allows:
- one CardSet to be reused in multiple Courses,
- multiple learning paths for different audiences,
- updates to pedagogy without duplicating data.

---

## Teachers Do Not Need to Be Programmers

Dyglot Teacher is designed for teachers who do not know —  
and do not want to know — HTML, SQL, or programming concepts.

This is **not a limitation**.  
It is a **design requirement**.

Teachers should think in terms of:
- content,
- structure,
- views,
- learning progression,

not in terms of:
- databases,
- schemas,
- rendering engines,
- technical constraints.

---

## Views Are Defined by Teachers, Not by the Engine

In Dyglot, a *view* defines:
- what the student sees,
- which fields are visible,
- how question and answer are revealed.

The engine does **not** impose:
- a fixed question/answer model,
- a specific UI layout,
- a single interaction pattern.

Instead:
- the teacher defines the view,
- the engine executes it.

---

## Engines Are Pluggable

Different learning logics exist:
- Dyglot v1–style spaced repetition,
- Anki-like models,
- custom or domain-specific engines.

Dyglot treats these as **engines**, not as UI decisions.

This allows:
- the same view to use different engines,
- experimentation without rewriting the app,
- future extensions without breaking compatibility.

---

## A Generic App, Domain-Specific Learning

Dyglot is designed to support two distribution models:

1. **Generic Dyglot App**
   - loads classrooms dynamically,
   - allows teachers to publish content independently,
   - avoids App Store / Play Store complexity.

2. **Domain-Specific Apps**
   - engine + classroom bundled together,
   - optimized user experience,
   - heavier distribution and maintenance cost.

Both models are valid.
Dyglot does not force one over the other.

---

## Why This Architecture Matters

This architecture exists to prevent:
- gigantic, unmaintainable classrooms,
- hard-coded learning modes,
- UI logic leaking into data,
- students being exposed to unnecessary complexity.

It exists to allow:
- reuse instead of duplication,
- teacher freedom without student confusion,
- long-term evolution of the system.

---

## In Short

Dyglot is:

- engine-first,
- teacher-driven,
- student-focused,
- pedagogy-aware,
- domain-agnostic.

This page defines the **spirit** of the system.
The rest of the documentation explains how each actor works within it.
