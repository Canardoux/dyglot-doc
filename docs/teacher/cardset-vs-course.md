# CardSet vs Course

This page introduces one of the most important concepts in Dyglot v2.
Understanding this distinction is key to designing clean classrooms, avoiding duplication,
and allowing multiple learning paths on the same data.

This distinction exists primarily **for teachers**.
Students are intentionally shielded from it.

---

## Why this distinction exists

In Dyglot v1, a classroom mixed together:
- data (cards),
- pedagogy (views, filters, progression),
- and sometimes even UI decisions.

This worked for a single, tightly controlled use case (Dyglot Korean),
but it became a limitation as soon as:
- multiple languages were involved (KR / EN / JP),
- multiple learning goals appeared,
- or teachers wanted different ways to teach the *same* material.

Dyglot v2 separates **what is learned** from **how it is learned**.

---

## CardSet

### Definition

A **CardSet** is a structured collection of cards.
It is purely **data**.

A CardSet answers the question:
> *What information exists?*

### What a CardSet contains

A CardSet may contain:
- words, symbols, notes, or concepts,
- multiple languages (e.g. Korean, English, Japanese),
- audio, examples, annotations,
- arbitrary attributes defined by the teacher.

A CardSet **does not define** how learning happens.

### What a CardSet does NOT contain

A CardSet does **not** contain:
- views,
- filters,
- sessions,
- progression rules,
- quizzes or scoring logic,
- UI decisions.

It is intentionally neutral and reusable.

### Examples

- A Korean vocabulary CardSet with:
  - Hangul,
  - Hanja,
  - English meanings,
  - Japanese glosses.
- A music theory CardSet with:
  - notes,
  - intervals,
  - chords,
  - audio samples.

The same CardSet can support multiple teaching approaches.

---

## Course (formerly Classroom)

> In Dyglot v2, **Course** replaces the overloaded notion of “classroom”.

### Definition

A **Course** defines **how a CardSet is taught**.

A Course answers the question:
> *How should this data be learned?*

A Course always refers to **one CardSet**.

### Relationship to a CardSet

- One CardSet → many Courses
- A Course never owns data
- A Course interprets and presents data

This avoids duplication and inconsistency.

### What a Course defines

A Course may define:

#### Views
- How cards are presented (question / answer, browse, quiz, etc.)
- Which fields are shown or hidden
- What “revealing the answer” means

#### Filters
- Predefined selections of cards
- Pedagogical groupings
- Difficulty levels or learning stages

Filters are **defined by the teacher**, not by the student.

#### Session behavior
- How progress is tracked
- How cards move between states (untested, wrong, mastered, etc.)
- Reset rules and repetition logic

Different Courses can apply different learning engines
(V1-like, Anki-like, or custom).

---

## One CardSet, multiple Courses

### Example: Kengdic

A single CardSet may contain:
- Korean terms,
- English meanings,
- Japanese equivalents.

From this single CardSet, a teacher can create:
- a course for English speakers learning Korean,
- a course for Japanese speakers learning Korean,
- a mixed KR/EN/JP comparative course,
- a Hanja-focused course.

### Why this avoids duplication

- No need to duplicate 7,000 cards
- No risk of data divergence
- Updates propagate naturally

### Why this helps teachers

- Teachers focus on pedagogy, not data plumbing
- One shared knowledge base, many teaching styles
- Cleaner mental model

---

## What students see

Students **do not see CardSets**.

Students interact with:
- Courses,
- Views defined by the teacher,
- Filters chosen from a short, curated list.

This is intentional.

The student experience remains:
- simple,
- guided,
- non-technical.

---

## Design principles

- **Teachers control structure**
  - pedagogy belongs to the teacher
- **Students do not design pedagogy**
  - choice without confusion
- **Data and pedagogy are separated**
  - reuse without chaos
- **The same data can support multiple learning paths**
  - without duplicating content

This separation is one of the core ideas of Dyglot v2.

# Teacher — CardSet vs Course vs Classroom  
*(The Key Concept)*

This page explains the most important conceptual distinction in Dyglot.

If this distinction is understood, everything else becomes simpler.  
If it is misunderstood, teachers will feel lost.

---

## Why This Distinction Exists

Dyglot separates **content**, **pedagogy**, and **delivery**.

This separation exists to solve real problems:

- Reusing the same data in multiple learning contexts
- Avoiding gigantic, unmaintainable databases
- Allowing different audiences (KR/EN/JP, beginner/advanced, etc.)
- Letting teachers design learning paths without duplicating content

To achieve this, Dyglot introduces **three concepts**:

- CardSet
- Course
- Classroom

They are not equally visible to students — and that is intentional.

---

## CardSet — The Learning Data

A **CardSet** is a structured collection of cards.

It represents **what is learned**, not **how it is learned**.

### What a CardSet contains

- Cards
- Fields and attributes
- Relations (examples, translations, audio, etc.)
- Linguistic or domain data (Korean, English, Japanese, music theory, etc.)

### What a CardSet does NOT contain

- Views
- Filters
- Learning logic
- Sessions
- Progress rules

A CardSet is **pure data**.

> Think of a CardSet as a *dictionary*, not a *course*.

### Example

- A CardSet containing:
  - Korean word
  - English translations
  - Japanese equivalents
  - Hanja
  - Pronunciation audio

This CardSet can be reused in many different learning contexts.

---

## Course — The Pedagogical Layer

A **Course** defines **how students learn from a CardSet**.

It is the teacher’s pedagogical design.

### A Course defines

- Which CardSet(s) it uses
- Available Views
- Available Filters
- Learning engines per view  
  (V1-like, Anki-like, etc.)
- Session behavior
- Reset rules
- Default paths

A Course answers questions like:

- *What is the question?*
- *What is hidden?*
- *What is revealed?*
- *How does the student progress?*

### What a Course does NOT do

- It does not store card data
- It does not define global distribution
- It does not manage storage or hosting

---

## One CardSet, Multiple Courses

This is the **core design strength** of Dyglot.

The same CardSet can support multiple Courses.

### Example: Kengdic

One CardSet:
- Korean
- English
- Japanese
- Hanja

Multiple Courses:
- English → Korean
- Japanese → Korean
- Korean → English
- Hanja-focused course
- Beginner vs Advanced paths

No duplication of data.  
Only different pedagogical designs.

---

## Classroom — The Distribution Bundle

A **Classroom** is a **bundle**.

It is what gets distributed, downloaded, shared, or registered.

A Classroom contains:
- One or more CardSets
- One or more Courses
- Metadata
- Versioning information

> A Classroom is what a student *accesses*.  
> A Course is what a student *chooses*.

---

## What Students Actually See

Students do **not** see CardSets.

They see:
- Courses
- Views
- Filters

This is intentional.

> Students should never ask:  
> *“Am I editing a CardSet or a Course?”*

That question belongs to teachers and developers — not learners.

---

## Design Principles (Teacher Perspective)

- CardSets are reusable
- Courses express pedagogy
- Classrooms package and distribute
- Teachers design structure
- Students follow structure
- Complexity is absorbed by the system, not the learner

---

## A Note on Terminology

The term **Course** is preferred over *Classroom* when talking about pedagogy.

- *Course* = learning path
- *Classroom* = distribution container

This distinction helps teachers reason clearly about their work.

---

## Summary

- **CardSet** = data
- **Course** = pedagogy
- **Classroom** = distribution

Understanding this separation is essential to designing clean, reusable, and scalable learning experiences in Dyglot.