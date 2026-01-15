# Teacher — Content Model  
## How You Organize Knowledge (Without Thinking Like a Database)

Dyglot Teacher is designed for teachers who do **not** know — and do **not want to know** —
databases, SQL, or programming concepts.

This is not a limitation.  
It is a **design requirement**.

This page explains how Dyglot expects you to **think about your content**, in teaching terms.

---

## What Is a Content Model?

In Dyglot, a *content model* is simply:

> The way you describe **what a card is**,  
> and **what kind of information it can contain**.

You are **not** defining tables or schemas.  
You are defining **meaningful pieces of knowledge**.

---

## Cards Are Containers of Meaning

A card is not “a row in a table”.

A card is:
- a word,
- a concept,
- a symbol,
- a note,
- a question,
- or any unit of knowledge you decide.

Each card can contain **multiple kinds of information**.

Examples:
- a Korean word
- one or more translations
- pronunciation audio
- examples
- grammatical properties
- difficulty level
- tags or categories

You decide **what matters**.

---

## One Card, Many Fields (Symmetry Matters)

Dyglot does **not** assume that:
- one field is more important than another,
- one language is “primary”,
- one answer is “the correct one”.

For example:
- Korean, English, Japanese can all be treated symmetrically
- A card may have multiple values for the same kind of information

This avoids hard-coding cultural or linguistic assumptions into the engine.

---

## Relations Are Pedagogical, Not Technical

Some information naturally comes in lists:

- example sentences
- translations
- alternative readings
- explanations

You don’t need to think about “one-to-many relations”.

Just think:
> “Can this card have more than one of these?”

If the answer is yes, Dyglot supports it.

---

## Attributes vs Content

Some card properties are:
- part of the knowledge itself (words, examples, sounds)
- part of the learning logic (difficulty, status, category)

Dyglot allows both, but keeps them conceptually distinct.

You never need to expose this distinction to the Student.

---

## What the Student Will Never See

The Student will **never** see:
- how your content is structured internally,
- how many fields exist,
- which fields are optional,
- or how relations are stored.

The Student only sees:
- Views you defined,
- Filters you designed,
- and learning sessions you enabled.

---

## One Important Principle

> If you cannot explain your content model  
> **without mentioning SQL or databases**,  
> then it is not ready.

If you can explain it to another teacher using everyday language,  
then Dyglot can handle it.

---

## Summary

- You define **what a card is**
- You define **what information matters**
- You define **how knowledge is structured**
- Dyglot handles the rest

You stay a Teacher.  
Dyglot stays a tool.