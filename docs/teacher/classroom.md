# Teacher — CardSet vs Course vs Classroom  
## The Conceptual Key (Without Thinking Like a Developer)

This page exists for one reason:

**So that Teachers never have to ask themselves:**
> “Am I creating a CardSet, a Course, or a Classroom?”

If you are asking that question, Dyglot has failed.

This page explains these concepts **from a Teacher point of view**, not a system one.

---

## First: One Mental Rule

> **A Teacher never starts by creating a Classroom.**

A Teacher starts with **content** and **pedagogical intent**.

Everything else follows naturally.

---

## CardSet — *“What do I know?”*

A **CardSet** is:
- a collection of cards,
- containing raw knowledge,
- without pedagogy attached.

Think of a CardSet as:
- a dictionary,
- a database of facts,
- a knowledge corpus.

Examples:
- Korean words with translations and examples
- Hanja characters with readings
- Music notes and intervals
- Medical terms

### Key idea

> **A CardSet answers: “What exists?”**

It does **not** answer:
- how to learn it,
- in which order,
- for whom.

---

## Course — *“How do I want to teach this?”*

A **Course** is:
- a pedagogical interpretation of one or more CardSets,
- designed for a specific learning goal.

A Course defines:
- Filters (what is selected),
- Views (how it is shown),
- Learning logic (quiz, browse, repetition…).

Examples:
- “Korean for English speakers — beginner”
- “Hanja recognition course”
- “Solfège — reading notes”
- “JLPT vocabulary preparation”

### Key idea

> **A Course answers: “How should this be learned?”**

Multiple Courses can use:
- the same CardSet,
- in different ways,
- for different audiences.

This is **intentional**.

---

## Classroom — *“What do I publish together?”*

A **Classroom** is:
- a published bundle,
- meant to be used by Students.

A Classroom contains:
- one or more CardSets,
- one or more Courses,
- metadata, documentation, and defaults.

Think of a Classroom as:
- a textbook,
- a learning package,
- something you give to Students.

Examples:
- “Dyglot Korean”
- “Medical Terminology — Basic”
- “Japanese Kanji Starter Pack”

### Key idea

> **A Classroom answers: “What do Students install or access?”**

---

## The Important Part: Teachers Do Not Design Hierarchies

Teachers do **not** think in trees like:

> Classroom → Course → View → Filter → Card

That is a system view.

Instead, Teachers think like this:

1. **I have knowledge** → CardSet
2. **I have a teaching goal** → Course
3. **I want to publish something usable** → Classroom

Dyglot simply formalizes this thinking.

---

## A Practical Decision Guide

If you hesitate, ask yourself:

### “Am I changing the knowledge itself?”
→ **CardSet**

### “Am I changing how it is learned?”
→ **Course**

### “Am I packaging something for Students?”
→ **Classroom**

That’s it.

---

## One CardSet, Many Courses (Very Important)

A single CardSet can support:
- multiple languages,
- multiple teaching approaches,
- multiple audiences.

Example:
- One CardSet: Korean + English + Japanese data
- Several Courses:
  - English → Korean
  - Japanese → Korean
  - Korean → English
  - Mixed advanced course

This avoids:
- gigantic monolithic Classrooms,
- duplicated data,
- impossible maintenance.

---

## Why This Matters

If everything is placed in one Classroom:
- Filters become confusing,
- Views multiply,
- Students get lost,
- Teachers lose control.

If CardSets, Courses, and Classrooms are separated conceptually:
- reuse becomes possible,
- evolution is safe,
- documentation is clearer.

---

## What the Student Sees (and What They Don’t)

Students:
- do **not** see CardSets,
- do **not** manage Courses internally,
- do **not** think about architecture.

They see:
- a Classroom,
- a Course,
- a View,
- a Filter,
- a **Practice** button.

And that’s all they need.

---

## Final Reassurance for Teachers

You do **not** need to master these concepts.

You only need to remember:

> **CardSet = knowledge**  
> **Course = pedagogy**  
> **Classroom = publication**

If Dyglot asks you more than that, it is a bug — not a feature.