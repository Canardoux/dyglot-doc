# Teacher — Designing Filters Without Confusing Students

Filters are a powerful tool.
They allow a Teacher to focus learning on a subset of Cards.

But filters can also become a major source of confusion if they are misused.

This page defines **strict design rules** for Filters in Dyglot,
with one single objective:

> A Student must *never* wonder  
> “Why am I seeing these cards?”

---

## What a Filter Is (Teacher Perspective)

A **Filter** is a named rule that selects Cards from a Course.

Examples:
- Beginner vocabulary
- Hanja only
- Verbs and adjectives
- Lesson 3
- JLPT N5

A Filter:
- does **not** modify Cards,
- does **not** modify the Course,
- only limits *which Cards participate* in a Session.

---

## What a Filter Is NOT

A Filter is **not**:
- a learning strategy,
- a difficulty algorithm,
- a Student preference editor,
- a technical query language.

If a Filter needs explanation to be used correctly, it is already too complex.

---

## Filters Are Defined by the Teacher — Always

In Dyglot v2:

> **Students cannot create or modify Filters.**

This is a deliberate design decision.

Why?

Because:
- Filters shape Sessions.
- Sessions define progress.
- Progress must be predictable.

Allowing Students to invent Filters creates:
- accidental data loss,
- invisible resets,
- broken learning continuity.

---

## Filters Must Be Finite and Named

A Teacher must define:
- a **finite list** of Filters,
- each with a **clear human-readable name**.

Bad examples:
- “Custom”
- “Advanced stuff”
- “Misc”
- “Try this”

Good examples:
- “Beginner (Top 500 words)”
- “Lesson 1–5”
- “Hanja with frequency ≥ 3”
- “Irregular verbs”

If you cannot name it clearly, do not expose it as a Filter.

---

## Filters Must Be Stable Over Time

Once published, a Filter should be **stable**.

This means:
- do not silently redefine its meaning,
- do not change its selection logic without warning.

Why?

Because a Filter defines Sessions.
Changing a Filter retroactively alters existing Sessions.

Acceptable evolution:
- adding new Cards that match the Filter,
- fixing clear mistakes.

Dangerous evolution:
- redefining selection rules,
- excluding Cards previously included.

---

## One Filter = One Learning Intention

A Filter should express **one idea only**.

Bad:
- “Beginner verbs except irregular ones from lesson 4”
- “All cards except those I don’t like”

Good:
- “Beginner”
- “Verbs”
- “Irregular verbs”

Complex learning strategies must be expressed by:
- multiple Filters,
- not by one opaque Filter.

---

## Filters Are Not Difficulty Levels

Difficulty is handled by:
- the learning Engine,
- repetition logic,
- feedback timing.

Filters are about **scope**, not difficulty.

Do not try to encode learning intelligence inside Filters.

---

## Filters and Views

Filters are independent of Views.

The same Filter can be used with:
- different Views,
- different Engines.

Example:
- Filter: “Beginner”
  - View: Korean → English
  - View: English → Korean

Each combination creates a different Session.

This is correct and expected.

---

## Filters and First Launch

Filters play a crucial role in first impressions.

The first screen a Student sees should present:
- a small number of Filters,
- chosen intentionally by the Teacher.

Too many Filters at first launch is overwhelming.

A good rule of thumb:
- 1 default Filter,
- 2 or 3 optional Filters maximum.

---

## Filters Must Be Documented (Lightly)

A Teacher is encouraged to provide:
- a short description for each Filter.

This description should answer:
- What does this Filter include?
- Who is it for?

No technical explanation is required.

Example:
> “Beginner: the most frequent words, suitable for first-time learners.”

---

## Design Anti-Patterns (Avoid at All Costs)

❌ Letting Students edit Filters  
❌ Filters that change meaning silently  
❌ Filters that encode multiple unrelated ideas  
❌ Filters that depend on hidden technical fields  
❌ Filters that require Teacher intervention to understand  

If a Filter needs a manual, it is not a Filter anymore.

---

## Summary

Filters are **pedagogical promises**.

When a Student selects a Filter, they trust the Teacher.

Your responsibility as a Teacher is to ensure that:
- Filters are simple,
- Filters are stable,
- Filters are meaningful.

A small number of well-designed Filters is always better
than unlimited freedom.

# Teacher — Designing Filters Without Confusing Students

Filters are powerful.  
They can also be dangerous.

In Dyglot, Filters are a **Teacher responsibility**.
They shape how Students enter learning — often before they understand what they are learning.

This page explains how to design Filters that are:
- useful,
- understandable,
- and safe for Students.

---

## What a Filter Is (and Is Not)

A **Filter** is:
- a predefined selection of Cards,
- created by the Teacher,
- presented as a simple choice to the Student.

A Filter is **not**:
- a query language,
- a technical condition,
- something the Student must understand.

If a Student has to *think* about a Filter, it is already too complex.

---

## Filters Are Student Entry Points

For the Student, the first learning screen is usually:

1. Choose a **View**
2. Choose a **Filter**
3. Press **Practice** or **Browse**

This means:
- Filters are part of the **UI contract**,
- not an internal implementation detail.

A bad Filter design creates friction **before learning even starts**.

---

## Design Rule #1 — Filters Must Be Predefined

Students must **not** create or edit Filters.

Why:
- it increases cognitive load,
- it introduces mistakes,
- it blurs the Teacher’s pedagogical intent.

Dyglot assumes:
> *The Teacher knows why a Filter exists.  
The Student should only choose among meaningful options.*

---

## Design Rule #2 — One Filter, One Intention

Each Filter should answer **one simple question**:

> “Why would I choose this?”

Good examples:
- “Beginner vocabulary”
- “Common verbs”
- “Hanja — basic set”
- “Lesson 3”

Bad examples:
- “Level ≥ 2 AND verb OR adjective”
- “Cards not seen in last 14 days”
- “Everything except irregular forms”

If a Filter needs an explanation longer than one sentence, it is too complex.

---

## Design Rule #3 — Filters Must Be Stable

Once published, a Filter should be:
- stable over time,
- predictable,
- rarely redefined.

Why:
- each Filter creates Sessions,
- Students build progress on them,
- changing Filters changes meaning.

If the content changes:
- add a **new Filter**,
- do not silently modify an existing one.

---

## Design Rule #4 — Filters Are Not Difficulty Levels

Difficulty is often **implicit**.

Avoid:
- “Easy / Medium / Hard” without context,
- numeric scales that mean nothing to Students.

Prefer:
- semantic groupings,
- lesson-based filters,
- conceptual boundaries.

Let progress emerge naturally through Sessions.

---

## Filters and Card Types

A Filter usually applies to:
- one type of Card,
- one pedagogical intent.

Avoid Filters that mix:
- different learning goals,
- incompatible card structures,
- unrelated content domains.

If you feel tempted to mix too much:
- you probably need multiple Courses,
- or multiple CardSets.

---

## Filters vs Views

Filters select **what** is studied.  
Views define **how** it is studied.

Keep them orthogonal.

Good design:
- same Filter, multiple Views,
- same View, multiple Filters.

Avoid:
- encoding View logic inside Filters,
- creating Filters that only exist for one View unless necessary.

---

## Naming Filters Matters

Students see Filter names **every day**.

Good names are:
- short,
- concrete,
- domain-specific.

Avoid:
- internal jargon,
- abbreviations,
- technical language.

If needed, provide:
- a short description,
- visible in an info panel or tooltip.

---

## When in Doubt: Fewer Filters

More Filters ≠ better learning.

If you hesitate:
- remove a Filter,
- merge it with another,
- or postpone it.

A Student faced with 3 good choices learns faster than one faced with 12 confusing ones.

---

## Summary for Teachers

- Filters are part of the learning UI.
- Students choose Filters, but never define them.
- Each Filter must have a clear pedagogical purpose.
- Stability matters more than cleverness.
- Simplicity is a feature, not a limitation.

Design Filters as doors — not puzzles.