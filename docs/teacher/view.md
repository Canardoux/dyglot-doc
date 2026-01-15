# Teacher — Designing Views (Question vs Answer)

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