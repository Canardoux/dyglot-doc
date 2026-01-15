# The Teacher Actor
# Teacher Overview

!!! note
Dyglot Teacher is designed for people who do not know — and do not want to know —
HTML, SQL, or programming concepts.

This is not a limitation. It is a design requirement.

Teachers:
- define classrooms (courses),
- define views (what students see),
- define filters (what students can choose),
- publish classrooms for students.

Teachers do not manage schemas or databases.
Teachers work with concepts: cards, attributes, views, filters.
!!! important
    Dyglot Teacher is designed for people who do not know —  
    and do not want to know — SQL, HTML, or programming.

    # Teacher — What You Do in Dyglot

Dyglot is designed for teachers who want to create learning experiences  
**without** dealing with HTML, SQL, or programming concepts.

This is **not** a limitation.  
It is a **design requirement**.

A Dyglot Teacher does exactly **three things** — no more, no less.

---

## 1. Define the Classroom Parameters

The teacher defines the **pedagogical framework** in which students will learn.

This includes:

- Selecting one or more **CardSets** (the learning data)
- Defining one or more **Courses**
- Choosing which **Views** are available to students
- Defining **Filters** offered to students
- Selecting the **learning engine** for each view  
  (V1-like, Anki-like, or other)
- Defining default behaviors:
  - default course
  - default view
  - default filter
  - reset policy
  - session persistence rules

This step defines *how learning is structured*, not how it is coded.

---

## 2. Define Presentation Screens (Views)

Dyglot is fundamentally different from flashcard tools that hardcode presentation.

In Dyglot:

> **The teacher defines the presentation.  
> The student does not customize it.**

For each View, the teacher defines:

- Which card information is visible
- How a question is presented
- How the answer appears  
  (reveal, transition, separate screen, etc.)
- Which actions are available to the student  
  (Good / Wrong / Again / Review later, etc.)

Important design principle:

- Question and answer **may be two distinct views**
- Or the answer may be a **progressive reveal** of the same view
- This choice belongs to the **teacher**, not the system

---

## 3. Enter and Maintain Card Data

The teacher is responsible for the **learning content itself**.

This includes:

- Creating and maintaining cards
- Defining fields and attributes
- Managing relations (examples, translations, audio, etc.)
- Updating content over time without breaking sessions

### Data Entry Methods

Dyglot supports **multiple workflows**:

#### Spreadsheet-based workflow
- Supported for import and export
- Familiar to many teachers
- Useful for bulk editing

However:

> Spreadsheets are a **supported format**,  
> not the **conceptual model** of Dyglot.

#### Dyglot-native editing
- The reference and authoritative model
- Validated structure
- Explicit relations
- Future-proof and extensible

---

## Dyglot Studio (Teacher Tool)

Dyglot provides a teacher-facing tool called **Dyglot Studio**.

Dyglot Studio is used to:

- Design Views
- Define presentation logic
- Manage Courses and Filters
- Edit and maintain CardSets

Without requiring:

- HTML
- SQL
- Programming knowledge

> Dyglot Studio exists to let teachers focus on **pedagogy**,  
> not implementation.

---

## Design Principles

- Teachers design pedagogy
- Students follow pedagogy
- Data and presentation are separated
- UI choices are intentional, not accidental
- Simplicity for students is enforced by design