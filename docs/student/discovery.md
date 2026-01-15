# Student — First Launch & Discovery Flow

This page describes what a **Student experiences when launching Dyglot for the first time**, and how they discover and access Classrooms over time.

The goal is simple and explicit:

> A Student must be able to start learning immediately,  
> without understanding what a Classroom, Course, or CardSet is.

Complexity exists — but it must stay **out of the way**.

---

## Core Principle

**The Student experience is always learning-first, not configuration-first.**

At no point should a Student be forced to:
- manage databases,
- understand publication models,
- or configure infrastructure.

Those concerns belong to Teachers and System Developers.

---

## First Launch — Two Possible Contexts

Dyglot supports two fundamentally different launch contexts.

### 1. Turnkey App (Domain-Oriented)

Example:
- *Dyglot Korean*
- Any App built by a Teacher and published with its own Classroom

In this case:

- The App already contains:
  - a default Classroom,
  - a default Course.
- No discovery step is required.
- The Student sees immediately:
  - a View selector (radio buttons),
  - a Filter selector (teacher-defined),
  - a **Practice** button.

> The Student can start learning in less than 5 seconds.

There is **no Classroom management screen** at first launch.

---

### 2. Generic Dyglot App (Web / Desktop)

Example:
- Dyglot Web
- Dyglot Desktop Studio (Student side)

In this case, the App contains **no predefined Classroom**.

The Student is gently guided through a minimal discovery step.

---

## The Discovery Screen (First Launch Only)

On first launch, the Student sees a **simple discovery screen**, not a configuration panel.

This screen may include:

### A. Preinstalled Classrooms (Optional)

- Classrooms shipped with the App.
- Ready to use immediately.
- Marked as *official*.

### B. Official Classrooms

- Curated Classrooms provided by trusted sources (e.g. Canardoux).
- Clearly identified.
- One-click access.

### C. Registered Classrooms

- Classrooms published by third-party Teachers.
- Discovered via Registrars.
- Read-only access unless explicitly stated otherwise.

### D. Private Classroom Access

- A simple field:
  - “Add a private Classroom”
- The Student pastes:
  - a link,
  - or imports a bundle provided by a Teacher.

No account creation is required by default.

---

## After a Classroom Is Selected

Once a Classroom is selected:

- The Student enters the **standard learning screen**.
- The App remembers this Classroom.
- Future launches skip the discovery step.

From this point on, the experience is identical to a turnkey App.

---

## Classroom Management (Secondary Screen)

Classroom management is **never the first screen**.

It is accessible via a secondary menu (e.g. hamburger menu).

Possible actions:
- list accessible Classrooms,
- open another Classroom,
- remove a Classroom,
- update a Classroom (if applicable).

This screen is optional for most Students.

---

## Sessions and Progress

A Student’s learning state is tracked via **Sessions**.

- A Session represents progress within:
  - one Course,
  - one View,
  - one Filter.
- Sessions persist across launches.
- Sessions can be reset by the Student.

Resetting a Session:
- clears learning progress,
- does **not** delete data,
- restores the Course to its initial state.

This is a deliberate feature.

---

## Design Constraints (Explicit)

- The Student never edits:
  - Views,
  - Filters,
  - Engines.
- These are defined by the Teacher.
- The Student only selects among predefined options.

Any “expert” functionality must remain optional and hidden by default.

---

## Summary

Dyglot’s Student onboarding follows one rule:

> **Start learning first.  
> Understand the system later — if ever.**

Discovery exists, but it is:
- progressive,
- optional,
- and never blocking.

This approach preserves both:
- pedagogical clarity,
- and long-term scalability.