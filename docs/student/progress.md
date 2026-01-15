# Student — Sessions & Progress Model

This page explains how Dyglot tracks a Student’s learning progress:
what a **Session** is, how progress is persisted, and how multiple Courses and Views coexist without confusion.

The objective is explicit:

> A Student must always understand  
> **where they are**, **what they are learning**, and **what will happen if they reset**.

---

## What Is a Session?

A **Session** represents a Student’s learning progress inside a well-defined context.

A Session is uniquely identified by the combination of:

- Classroom
- Course
- View
- Filter

In other words:

> *“I am practicing **this course**, using **this view**, with **this filter**.”*

Each such combination has **its own Session**.

---

## Why Sessions Exist

Sessions solve a simple but fundamental problem:

- The same Cards can be practiced in different ways.
- Each way needs its **own independent progress**.

Examples:
- Korean → English vs English → Korean
- Quiz mode vs Browse mode
- Beginner filter vs Advanced filter

Each of these combinations must:
- remember its own state,
- never interfere with the others.

---

## Session Lifecycle

### Creation

A Session is created automatically when:
- the Student presses **Practice** or **Browse**,
- and no existing Session matches the selected context.

There is **no explicit “Create Session” action**.

---

### Persistence

Sessions are persistent by design.

This means:
- progress is saved automatically,
- closing the App does not lose state,
- reopening the App restores the Session.

Persistence is local to the Student environment unless explicitly synchronized.

---

### Resume

When the Student selects:
- the same Classroom,
- the same Course,
- the same View,
- the same Filter,

Dyglot resumes the existing Session exactly where it was left.

No confirmation is required.

---

## Session State (Conceptual)

Internally, a Session tracks:

- which Cards have never been seen,
- which Cards are in active learning,
- which Cards are scheduled for review,
- optional engine-specific metadata.

The Student does not see these structures directly.

They experience them through:
- card order,
- repetition,
- feedback timing.

---

## Resetting a Session

A Student can **reset a Session** explicitly.

Resetting a Session means:
- all Cards return to the initial state,
- the learning history for this Session is erased,
- no data outside this Session is affected.

Important clarifications:

- Resetting a Session **does not delete Cards**.
- Resetting a Session **does not affect other Sessions**.
- Resetting is always reversible by starting again.

This feature is intentional and essential.

---

## Multiple Sessions per Course

A single Course may have:
- multiple Views,
- multiple Filters,
- therefore multiple Sessions.

Example:

- Course: *Korean Vocabulary*
  - View: *Korean → English*
    - Filter: *Beginner*
    - Filter: *Advanced*
  - View: *English → Korean*
    - Filter: *Beginner*

Each combination has its own Session.

This avoids:
- hidden coupling,
- unexpected resets,
- mixed progress.

---

## Sessions Across Courses

Courses are independent.

- Progress in one Course never affects another.
- Sessions do not span multiple Courses.

This allows:
- parallel learning tracks,
- clean mental separation,
- predictable resets.

---

## Student Control vs Teacher Control

The Teacher defines:
- which Views exist,
- which Filters exist,
- which Engines are used.

The Student controls:
- which combination they choose,
- when to start a Session,
- when to reset a Session.

This separation is deliberate.

---

## Design Constraints (Non-Negotiable)

- A Session must always be identifiable.
- A Session must always be resettable.
- No hidden or implicit merging of Sessions is allowed.
- Progress must never be ambiguous.

If a Student asks:
> “What happens if I press reset?”

The answer must always be clear.

---

## Summary

A **Session** is Dyglot’s contract with the Student.

It guarantees:
- clarity,
- isolation,
- reversibility.

Without Sessions, learning becomes opaque.
With Sessions, learning becomes predictable and safe.

# Student — Sessions & Progress  
*(Multiple Filters, Multiple Paths)*

Dyglot remembers your progress so you don’t have to.

Every time you practice, Dyglot keeps track of:
- what you have already seen,
- what you are learning,
- what should come next.

This tracking is called a **Session**.

---

## What Is a Session?

A **Session** represents your learning progress for:

- one **Course**,
- one **View**,
- one **Filter**.

You don’t create Sessions manually.
They appear automatically when you start practicing.

Think of a Session as:
> “My personal learning path for this exact way of studying.”

---

## One Filter = One Path

Each Filter has its **own Session**.

This is important.

It means:
- practicing with one Filter does not affect others,
- you can progress at different speeds,
- nothing gets mixed.

Example:
- Beginner Filter → advanced progress
- Verbs Filter → early stage
- Hanja Filter → not started

All of this can coexist safely.

---

## Switching Filters Is Safe

You can switch Filters at any time.

When you return to a Filter:
- Dyglot resumes exactly where you stopped,
- no Cards are lost,
- no progress is erased.

There is no “wrong order”.
You are free to move between paths.

---

## Sessions and Views

Sessions are also tied to the **View** chosen by the Teacher.

That means:
- the same Filter may behave differently in different Views,
- each View can have its own learning logic,
- progress is tracked consistently within that View.

From your perspective:
- you just choose a View,
- then a Filter,
- then press **Practice**.

Dyglot handles the rest.

---

## Practice vs Browse

Sessions are mainly used in **Practice** mode.

Practice:
- uses repetition and scheduling,
- tracks what you know and what you don’t,
- decides what to show next.

Browse:
- does not change your progress,
- lets you explore freely,
- is safe and non-destructive.

You can browse without fear of “messing up” a Session.

---

## Resetting a Session

Sometimes, you may want to start over.

Dyglot allows you to reset:
- one Session,
- for one Filter,
- in one Course.

Resetting means:
- all Cards in that Session are treated as new,
- other Sessions are untouched,
- the Course remains available.

This is useful if:
- you want a fresh start,
- you are revising after a long break,
- you want to try a different learning rhythm.

---

## Multiple Courses, Multiple Sessions

If you use multiple Courses:
- each Course has its own Sessions,
- progress is fully separated,
- nothing overlaps unintentionally.

You are never forced to “finish” one Course before starting another.

---

## What You Don’t Have to Worry About

You never have to:
- manage Sessions manually,
- understand scheduling algorithms,
- merge or split progress.

Dyglot is designed so that:
- learning stays simple,
- structure stays invisible,
- mistakes are reversible.

---

## Summary

- Sessions track your learning automatically.
- Each Filter creates its own learning path.
- You can switch, pause, or reset safely.
- Progress is never mixed by accident.

You focus on learning.  
Dyglot remembers the rest.