# Publishing & Distributing Classrooms

This document describes how a **Dyglot Classroom** can be published and distributed so that it becomes accessible to students, while preserving quality, safety, and long-term maintainability.

It is written for **Teachers** and **System Developers**.  
Students are only indirectly concerned.

---

## Terminology

To avoid ambiguity, Dyglot uses the following terms:

- **CardSet**  
  A collection of cards (data only).  
  A CardSet may be reused by multiple Courses.

- **Course**  
  A pedagogical path defined by a Teacher.  
  A Course references one or more CardSets and defines:
  - views,
  - filters,
  - learning logic (engine),
  - default parameters for the Student.

- **Classroom**  
  A bundle that groups:
  - one or more CardSets,
  - one or more Courses,
  - metadata (language, author, version, license, etc.).

A Classroom is the **unit of distribution** in Dyglot.

---

## Publishing vs Distributing

In Dyglot, the distinction between *publishing* and *distributing* is intentionally minimal.

> A Classroom is considered **published** as soon as it is made accessible to Students, regardless of the technical channel used.

In practice, publishing and distributing are treated as the same operation.

---

## The Three Supported Publication Models

A Teacher who has created a Classroom may choose **one (or more)** of the following publication models.

### 1. Downloadable Classroom Bundle

The Classroom is published as a downloadable bundle (for example a ZIP file).

Characteristics:
- Hosted on a static location (GitHub, personal website, Drive, etc.).
- Downloaded once by the Student.
- Stored locally on the Student’s device.
- Updates are explicit (the Student chooses to download a new version).

Advantages:
- Simple to implement.
- Works offline.
- No server required.

Limitations:
- Updates are not automatic.
- Large Classrooms may take time to download.

---

### 2. Remote Classroom Registered via a Registrar

The Classroom is hosted by the Teacher (or an institution) and **registered** with one or more Registrars.

Characteristics:
- The Classroom remains under the Teacher’s control.
- A Registrar provides a curated list of known Classrooms.
- Students discover Classrooms via the Registrar.
- Data may be fetched on demand.

Advantages:
- No central public write access.
- Prevents spam, abuse, or inappropriate content.
- Allows curated discovery.

Limitations:
- Requires minimal server infrastructure.
- Slightly more complex to set up.

---

### 3. Embedded Classroom in a Dedicated App

The Classroom is bundled directly inside an application (iOS / Android / Desktop).

Characteristics:
- The App contains both:
  - the Dyglot engine,
  - one or more Classrooms.
- This is the **Dyglot v1 model** (e.g. Dyglot Korean).

Advantages:
- Zero friction for Students.
- Perfect for turnkey, domain-specific apps.
- Fully offline by default.

Limitations:
- App Store / Play Store complexity.
- Updating the Classroom requires an app update.
- Tight coupling between engine and content.

---

## Registrars

A **Registrar** is a trusted entity that publishes a list of available Classrooms.

A Registrar:
- does **not** host Classroom data,
- only references verified Classroom sources,
- may reference other Registrars.

This creates a controlled “discovery network” without a single central authority.

Example:
- Canardoux may operate an official Registrar.
- Universities, schools, or communities may operate their own.

---

## Safety and Moderation

Dyglot explicitly **does not allow** unrestricted public write access to a central repository.

This is a deliberate design decision to prevent:
- spam,
- abuse,
- illegal or inappropriate content.

Teachers always retain ownership and responsibility for their Classrooms.

---

## First Launch and Student Experience

A Student must never be dropped into a complex “Classroom management” screen at first launch.

Depending on the context:

- **Turnkey App (e.g. Dyglot Korean)**  
  A default Classroom and Course are predefined by the Teacher.  
  The Student can immediately press **Practice**.

- **Generic Dyglot App (Web / Desktop)**  
  A simple Classroom selector is presented:
  - preinstalled Classrooms (if any),
  - official Classrooms,
  - private Classrooms added by the Student.

Advanced management remains accessible but hidden behind secondary menus.

---

## Private Classrooms

A Student may access a private Classroom by:
- importing a bundle manually,
- or adding a direct reference (URL) provided by a Teacher.

Private Classrooms are **not discoverable** unless explicitly registered.

---

## Design Principles (Non-Negotiable)

- A Classroom is a **closed bundle**.
- A Course always belongs to exactly one Classroom.
- CardSets may be reused inside a Classroom.
- Publication must never require Students to trust unknown parties blindly.
- The system must scale without assuming global success.

---

## Summary

Dyglot supports multiple publication strategies without forcing a single model.

This flexibility allows:
- small personal Classrooms,
- institutional teaching,
- curated ecosystems,
- and turnkey learning apps,

while keeping Students safe and the system maintainable.
