# Licensing Scope and Intent

Dyglot Engine and Dyglot Student are distributed under the GNU General Public
License (GPL).

This choice is intentional:
- it guarantees long-term freedom of the engine,
- it prevents proprietary forks of the core system,
- it protects contributors.

## Scope of the GPL in Dyglot

The GPL applies to:
- Dyglot Engine source code,
- Dyglot Student application code,
- modifications and redistributions of those components.

The GPL does **not** apply to:
- CardSets
- Courses
- Views
- Filters
- Classrooms
- pedagogical data, media, or metadata

These elements are treated as **interpreted data**, not executable code.

## Design decision

Dyglot is architected so that:
- pedagogical content is loaded, interpreted, and rendered,
- but never linked as program code.

This clear separation ensures that:
- teachers retain full ownership of their content,
- licensing choices for classrooms remain independent,
- the GPL applies exactly where intended — no more, no less.

This is not a loophole.
It is a deliberate design decision.

## Documentation and Licensing

Dyglot documentation and the official Classroom Template Documentation
are published under the **Creative Commons CC-BY-NC-SA** license.

This means:
- you are free to reuse and adapt these documents,
- attribution is required,
- commercial use is not permitted,
- and derivative documentation must remain under the same license.

### Using the Classroom Documentation Template

If you use the Dyglot Classroom Documentation Template as a basis for your own
classroom documentation, your resulting documentation **must be published
under CC-BY-NC-SA**.

This is an intentional choice:
- documentation is considered pedagogical material,
- and its evolution benefits from shared improvements.

### Dyglot Engine, Applications, and Data

Dyglot Engine and Dyglot Student are licensed under the GNU GPL.

If you distribute an application that embeds Dyglot (for example on the
App Store or Google Play), the application code and engine are subject to
the GPL.

However, this **does not automatically apply** to:
- CardSets
- Courses
- Classrooms
- pedagogical databases
- audio, text, or media assets

These elements are treated as **data**, not executable code.

Their license remains entirely under the control of the teacher or author.

### Important clarification

Only program code derived from Dyglot is subject to the GPL.

Pedagogical content remains independent, provided it is not implemented
as executable code or engine extensions.

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