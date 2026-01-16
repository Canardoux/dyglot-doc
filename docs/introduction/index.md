# Dyglot v2 — Introduction & Conceptual Overview

Dyglot is a language-learning project centered around a simple idea:

> present the right card, at the right time.


## What Dyglot Is — and What It Is Not

Dyglot is **not** a language-learning application.

Dyglot is a **learning engine** designed to support a wide variety of learning domains:

- languages, 
- writing systems, 
- solfège, symbols, 
- structured vocabularies, 
- traffic laws, 
- or any domain that can be expressed as *cards*, *examples*, and *progressive practice*.

Dyglot is a **generic learning engine** designed to support structured learning using:
multiple pedagogical approaches, and multiple actors.

Core concepts are :

- cards,
- views,
- teacher-defined filters,
- and student sessions (progression over time).


Language learning is only one possible use case.

Dyglot Korean v1 was one concrete product built on top of earlier Dyglot ideas.
It was a bundled product for Korean learners.
Dyglot v2 generalizes this approach.
Dyglot v2 separates:

- the engine,
- the content,
- and the learning experience.

---

## The Three Actors

Dyglot v2 is explicitly built around three distinct actors.
Dyglot is designed around **three distinct actors**, each with clearly separated roles,
responsibilities, and tools.


They are not roles hidden in the implementation —
they are first-class concepts, visible in the design, the tools, and the documentation.

### 1. Student

The student uses **Dyglot Student** to learn.

The student experience is intentionally simple and constrained.

A successful student home screen contains only:

- a **view selector** (radio buttons)
- a **filter selector** (predefined by the teacher)
- a large **Practice** or **Browse** button

The student:

- does **not** define filters
- does **not** modify views
- does **not** design sessions
- does not configure pedagogy,
- does not decide which fields exist,

Those choices belong to the teacher.

The student:

- selects from what the teacher has defined,
- practices,
- browses,
- progresses.

A successful student UI is extremely simple.

---

### 2. Teacher

The teacher is the **creator of learning content and learning experiences**.

> **Dyglot Teacher is designed for teachers who do not know — and do not want to know —
> HTML, SQL, or programming concepts.  
> This is not a limitation. It is a design requirement.**

Responsibilities:

- defining **card data**
- defining **views** (what the student sees)
- defining **filters**
- defining **courses / classrooms**
- deciding what the student can and cannot configure

The teacher works using **Dyglot Teacher**, a **desktop studio**, not a mobile app.

The teacher thinks in terms of:

- cards
- fields
- examples
- views
- practice flows
- concepts,
- progressions,
- filters,
- pedagogy.

Not in terms of:

- tables
- schemas
- joins
- markup languages

The teacher:

- creates learning content,
- structures curricula,
- defines how knowledge is presented,
- defines what the learner sees,
- defines what is hidden and what is revealed.

The teacher:

- does not write SQL
- does not write HTML
- does not think in terms of tables, joins, or schemas

Dyglot Teacher is therefore a studio, not a runtime app.
It runs on desktop, not on a phone.

---

### 3. System Developer

The system developer designs and maintains the **Dyglot engine**.


- designs the Dyglot engine,
- defines the data model capabilities,
- defines what is possible and impossible,
- but does not define pedagogy.
- core data model
- storage formats
- APIs
- performance and scalability
- cross-platform delivery (desktop, mobile, web)

The system developer **does not design pedagogical content**, and **does not design learning UIs**.

In Dyglot v2, the system developer explicitly avoids imposing domain assumptions
(language-specific fields, fixed card structures, or pedagogical rules).

The system developer does not decide how people learn.
He builds the engine that allows teachers to decide.

The system developer:
- designs the Dyglot engine,
- defines the data model capabilities,
- defines what is possible and impossible,
- but does not define pedagogy.

The system developer does not decide how people learn.
He builds the engine that allows teachers to decide.

---

## Core Concepts

### Card

A **card** is a unit of knowledge.

In Dyglot v2, a card is:

- a collection of fields (1–1 relationships)
- a collection of lists (1–N relationships)
- optionally linked media (audio, images, etc.)
- attributes (1-to-1),
- relations (1-to-many),
- optional attributes,
- domain-specific fields.
- structured data,
- neutral,
- reusable across multiple views.

Important design decision:
A card does not embed its presentation.

The engine does not impose semantics like:

- “this field is the front”
- “this field is the back”
- “this is a language”

Those semantics belong to Views, not to Cards.

A card does **not** contain presentation logic.

This is a deliberate departure from systems where each card embeds its own HTML layout like Anki.

---

### CardSet

A **CardSet** is a **shared data source**:

- a collection of cards
- possibly multilingual
- possibly reused by multiple courses

Example:

- one CardSet containing Korean / English / Japanese data
- reused by multiple courses with different pedagogical goals

CardSets are **maintained by the teacher** and may evolve over time.

---

### Course (formerly “Classroom”)

A **Course** (previously called *Classroom*) is a **learning structure built on top of one or more CardSets**.

A course defines:

- which cards are used
- which views exist
- which filters exist
- which learning flows are available

A course is **closed and coherent**.
It is not an unbounded database.

Dyglot v2 explicitly avoids the idea of a single “giant classroom”.

The central concept in Dyglot is the course.

A course:
- is not a database (even if implemented as one),
- is not a file format,
- is not a lesson.

A course is:

a coherent body of structured knowledge, designed by a teacher, meant to be explored and practiced by students.

The term "course" is deliberately chosen because:

- it is understood by teachers,
- it is understood by developers,
- it is not tied to relational-database vocabulary.

Even though a course may be backed by SQL internally,
teachers never see it as such.

---



### Filter (Teacher-Defined)

A **Filter** is a predefined selection rule for cards.
Filters define which cards are eligible for a session.

Filters are:

- defined by the teacher
- attached to a course and a view
- selectable by the student

Examples:

- beginner cards
- verbs only
- recently failed cards
- lesson 1

The student does **not** create filters.

Key rule in Dyglot v2: Filters are defined by the teacher, not by the student.
This is a major correction compared to Dyglot v1.

The student:

- selects a filter from a list,
- does not create or edit filters.

This ensures:

- a clean, simple entry screen,
- pedagogical coherence,
- no accidental complexity for the learner.

---

### Session

A **Session** is a **temporary learning context** created when the student presses:

- Practice
- Browse

A session represents:

- a progression through a filtered set of cards
- independent of other sessions
- resumable

Sessions are student-specific and ephemeral.

A Session represents:

a learner’s progression inside a classroom, for a given view and filter.

A session:

- is created when the student starts practicing or browsing,
- persists progress,
- does not redefine pedagogy.

Sessions are student-side concepts, but:
- they operate only inside teacher-defined boundaries.

⸻

---

## Local, Downloadable, and Remote Courses

Courses may be:

- bundled locally with the application
- downloadable
- remotely hosted

Dyglot v2 supports **discovery**:

A student may see:

- local courses shipped with the app
- official courses published by Canardoux
- courses published by trusted registrars
- manually added courses (advanced users)

Teachers do **not** publish directly into a global public space.

Registrars curate and validate courses to avoid abuse and chaos.

---

## Why This Architecture Exists

Dyglot v2 exists to resolve long-standing tensions:

- between card-centric and relational thinking
- between freedom and maintainability
- between teacher control and student simplicity
- between reuse and coherence

Dyglot v2 makes these tensions **explicit**, rather than hiding them in code.

---


⸻

## Why Dyglot v2 Breaks with Dyglot v1

Dyglot v1:

- mixed views into a single conditional screen,
- allowed students to alter display logic,
- coupled UI logic tightly to code,
- was difficult to maintain and evolve.

Dyglot v2:

- separates views cleanly,
- moves pedagogical control to the teacher,
- simplifies the student experience,
- prepares the engine for domains beyond languages.

⸻


⸻

## Final Guiding Principle

In Dyglot v2, what the learner sees is part of the curriculum.

Therefore:

- the teacher defines views,
- the system enforces structure,
- the student focuses on learning.

**Design requirement:** Teachers must not need HTML, SQL, or programming.

## Licensing at a glance

Dyglot Engine and Dyglot Student are released under the GNU GPL license.

Classrooms, CardSets, courses, and pedagogical content created with Dyglot
are **not considered derivative works of the engine** and remain fully
owned and licensed by their authors.

Dyglot is designed to protect both:
- the freedom of the engine,
- and the freedom of pedagogical creators.

- Dyglot Student is released under GPL.
- Classrooms are data, not code.
- Classrooms are not subject to GPL copyleft.
- Teachers retain full control over the license of their classrooms.
- Documentation templates are provided as helpers and do not impose licensing constraints.

## The documentation

Dyglot v2 documentation is split conceptually into four parts:

### [Introduction](introduction/index.md)

This is the current part

### [Student](student/index.md)

- how students navigate learning
- what sessions are
- what views and filters mean from their perspective

### [Teacher](teacher/index.md)

- how teachers design classrooms
- how views and filters are defined
- how pedagogy is expressed without code

### [Engine](engine/index.md)

- technical specifications
- data model capabilities
- constraints and guarantees

### Documentation License

The dyglot documentation is published under the Creative Common CC-BY-NC-SA.
If the teacher use the Diglot Template Documention for his/her own classoom, he/she must publish hi/her own documentation under the same license CC-BY-NC-SA.

## Commercial Use and Classrooms

Dyglot is an open and free learning engine, but it is **not intended to be a
free backend for proprietary commercial applications**.

### Selling a classroom

Teachers may:
- distribute classrooms freely,
- share them publicly or privately,
- request financial support, subscriptions, or access fees **outside of an app store**.

This includes:
- private access to a classroom,
- paid educational content,
- courses or teaching services using Dyglot as a client.

### Commercial applications

Embedding Dyglot Engine and classroom data inside a **paid mobile application**
(iOS, Android, etc.) is **not permitted without explicit authorization** from
the Dyglot project.

This restriction exists to:
- protect the integrity of the Dyglot ecosystem,
- prevent free-riding on a community-driven engine,
- and ensure fair contribution to the project.

### The Dyglot Korean exception

Applications published by the Dyglot authors (such as Dyglot Korean)
are considered official distributions and are not subject to this restriction.

## Commercial Use and Classrooms

Dyglot is a free and open learning engine.
However, it is **not intended to be used as a free backend for proprietary
commercial applications**.

### Selling a classroom

Teachers may:
- distribute classrooms freely,
- share them publicly or privately,
- request financial support, subscriptions, or access fees **outside of app stores**.

This includes:
- private or paid access to a classroom,
- educational content,
- teaching services using Dyglot as a client.

Classroom data itself is not restricted to free distribution, but its use
must respect the Dyglot ecosystem and licenses.

### Commercial applications

Embedding Dyglot Engine together with classroom data inside a **paid mobile
application** (iOS, Android, etc.) is **not permitted without explicit authorization**.

This restriction exists to:
- protect the integrity of the Dyglot project,
- prevent free-riding on a community-driven engine,
- ensure that commercial benefits do not bypass community contribution.

Dyglot is designed as a shared educational tool, not as a commercial SDK.
---

## Summary

Dyglot v2 is:

- a learning engine
- teacher-driven
- student-friendly
- domain-agnostic
- explicit about responsibilities

Dyglot v2 is not:

- a language app
- a card HTML editor
- a free-for-all database
- a system where the student designs pedagogy

This clarity is intentional.

---

## Some possible icons for Dyglot

![Dyglot Korean icon](icons.png)
*Dyglot Teacher — conceptual icon*

<p align="center">
  <img src="../images/dyglot-korean.png" width="96">
  <img src="../images/dyglot-teacher.png" width="96">
  <img src="../images/dyglot-student.png" width="96">
</p>

## Where to go next

- [Glossary](glossary.md)
- [Student docs](../student/index.md)
- [Teacher docs](../teacher/index.md)
- [System docs](../engine/index.md)'

