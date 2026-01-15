# Teacher — Designing Views (Question vs Answer)

This page explains **what a Teacher designs** when defining a learning experience in Dyglot,  
and **what is deliberately handled by the Engine**.

This distinction is essential to keep Dyglot:
- simple for students,
- usable by non-technical teachers,
- and extensible for future engines (V1-like, Anki-like, others).

## The student screen is built with 4 areas

- The header
- The question (if any)
- The answer
- The button bar

---

## Core Principle

**Teachers design what is displayed.  
Engines design how a session is executed.**

In practical terms:

- The **Teacher** defines:
  - what information is shown to the student,
  - how it is visually arranged,
  - what changes between *question* and *answer*.

- The **Engine** defines:
  - how a session progresses,
  - how answers are evaluated,
  - how cards are scheduled,
  - which actions are available to the student.

This separation is a **design requirement**, not a limitation.

---

## What a Teacher Designs: Views

A **View** defines how a card is presented to the student.

Each view is composed of two parts:

### 1. Question View
The Question View defines:
- which card fields are visible,
- how they are laid out,
- what the student sees *before* revealing the answer.

Typical examples:
- Korean word only
- English translation hidden
- Hanja hidden
- Audio button visible or hidden

### 2. Answer View
The Answer View defines:
- what becomes visible after the answer is revealed,
- which additional fields appear,
- how explanations are shown.

Typical examples:
- Reveal translation
- Reveal pronunciation
- Reveal examples
- Reveal grammar hints

⚠️ Important  
The Answer View is **not** required to be a simple “unmasking” of fields.  
A Teacher is free to design a **different layout** for the answer if desired.

---

## What a Teacher Does NOT Design

Certain elements are **never designed by the Teacher**, even visually.

This is intentional.

### Action Buttons (OK / WRONG / EASY / etc.)

- These buttons are **not placed by the Teacher**.
- They are **automatically provided by the Engine**.

Why:
- Their meaning depends on the engine logic.
- Their behavior affects scheduling and progress.
- They must remain consistent across views.

Examples:
- V1-like engine → `Good / Wrong`
- Anki-like engine → `Again / Hard / Good / Easy`

The Teacher may choose:
- whether the button bar is visible,
- when it appears (after answer, always visible),
- a presentation style (compact, large, icons).

But the **actions themselves** are engine-defined.

---

## Header / Progress Indicators

Some engines provide progress indicators (for example:
stacks, queues, learning state, due counts).

- These indicators are **engine-owned**.
- Their meaning depends on the engine type.

The Teacher may:
- enable or disable the header,
- select a preset:
  - `Simple`
  - `Standard`
  - `Expert`

The Teacher does **not** design the header contents.

This prevents:
- confusing students with internal mechanics,
- hard-coding engine internals into views.

---

## Choosing an Engine for a View

Each view explicitly declares which engine it uses.

Examples:
- `V1-compatible`
- `Anki-compatible`
- `Custom engine`

This choice determines:
- available buttons,
- scheduling behavior,
- progress indicators,
- session logic.

The same card content can be reused across views with different engines.

---

## Why This Matters

This design ensures that:

- Teachers do **not** need to understand scheduling algorithms.
- Students are not exposed to unnecessary complexity.
- Engines can evolve without breaking existing views.
- Documentation remains clear and stable.

Most importantly:

> **Teachers control pedagogy.  
> Engines control mechanics.  
> Students focus on learning.**

---

## Summary

- Teachers design **Question and Answer views**.
- Engines provide **buttons, scheduling, and progression**.
- Headers and controls are engine-owned but configurable.
- Views remain engine-agnostic in content, engine-specific in behavior.

This separation is the foundation that allows Dyglot to scale beyond a single language, a single method, or a single teacher.
