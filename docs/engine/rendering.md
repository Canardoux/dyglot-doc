# View Rendering Model  
*(Runtime specification vs generated UI)*

This page clarifies a key architectural decision in Dyglot v2:

**How are views defined by Teachers rendered by Dyglot Student?**

This is a foundational choice that impacts:
- portability (Web / iOS / Android),
- openness to third-party Teachers,
- long-term maintainability,
- and the separation between pedagogy and implementation.

---

## The Core Question

When a Teacher defines a view (question, answer, layout, progression):

- Is this view **interpreted dynamically** by Dyglot Student at runtime?
- Or is it **generated as framework-specific UI code** (Svelte, Flutter, etc.) and compiled?

Dyglot v2 explicitly answers this question.

---

## Option 1 — Generated UI (Compile-Time Views)

**Principle**  
Teacher-defined views are converted into framework code (Svelte / Flutter / etc.) and compiled into an application.

### Advantages
- Full use of the framework’s power
- Native performance and tooling
- No custom rendering engine required

### Limitations
- Not compatible with dynamic or third-party classrooms
- Requires a build and signing pipeline
- Prevents runtime discovery of new courses
- Couples pedagogy to a specific technology stack

### Conclusion
This approach is only suitable for **fully bundled apps** (e.g. *Dyglot Korean v1*),  
but **not** for Dyglot v2 as an open ecosystem.

---

## Option 2 — Runtime Interpretation (Dynamic Rendering)

**Principle**  
Teachers define views as **data specifications** (not code).  
Dyglot Student interprets these specifications at runtime.

### Advantages
- Views can be loaded dynamically
- Teachers publish content without recompiling apps
- Works identically on Web, iOS, Android
- Clear separation between data, pedagogy, and engine

### Limitations
- Requires a custom rendering engine
- Views are constrained by the available specification vocabulary

### Conclusion
This approach is compatible with Dyglot’s goals **provided the spec is well designed**.

---

## The Chosen Model — Runtime Views + Engine Widgets

Dyglot v2 adopts a **hybrid but principled model**:

> **Views are interpreted at runtime, but rendered using powerful engine-provided widgets.**

---

## View Composition Model

A **View** is composed of four conceptual zones:

1. **Header**  
   Session state, progress indicators, stack information (engine-controlled)

2. **Prompt (Question)**  
   What is shown before the answer is revealed

3. **Answer**  
   What becomes visible during or after the reveal

4. **Action Bar**  
   Buttons such as *Good*, *Wrong*, *Easy*, *Again*, etc.

---

## Responsibility Split

### Teacher controls
- Which fields appear in each zone
- The order and grouping of elements
- Styling and emphasis (within allowed parameters)
- Whether the answer is:
  - a reveal of hidden elements
  - or a distinct backside

### Engine controls
- Session logic
- Scoring and scheduling
- Which action buttons are present
- Header semantics and metrics

---

## Engines and Compatibility Modes

Each View explicitly references an **Engine Type**, for example:
- `engine: v1-compatible`
- `engine: anki-compatible`
- `engine: custom`

The engine determines:
- available actions
- header behavior
- session progression rules

The **Teacher does not design algorithms** — only presentation and intent.

---

## Why This Model Was Chosen

This model ensures that:
- Teachers never write code
- Students never configure pedagogy
- The engine remains evolvable
- Courses remain portable and future-proof

It preserves the power of modern UI frameworks **without exposing them** to Teachers.

---

## Key Principle

> **Teachers design meaning and presentation.  
> Engines design behavior.  
> Students only choose and practice.**

This separation is non-negotiable in Dyglot v2.
