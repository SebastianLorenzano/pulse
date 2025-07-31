# Pulse

> 💡 Most of the information is available in the **help icon** when you open the tool.

## Overview

When exploring the system, it's useful to have a single entry point to search across different components. **Pulse** provides such an entry point and is usually available by pressing `<Meta+Enter>`.

Pulse is a **remake of Spotter**, a front-end tool for displaying results from various processors. These processors can be configured in different ways to provide flexible access options.

<p align="center">
  <img width="600" height="500" alt="image" src="https://github.com/user-attachments/assets/9005ade7-d8e1-4afc-a5b4-3c8722faad9d" />
</p>

<p align="center">
  <img width="600" height="500" alt="image" src="https://github.com/user-attachments/assets/0b9f948a-8fa7-4cdb-b51a-4538f56dc420" />
</p>

<p align="center">
  <img width="600" height="500" alt="image" src="https://github.com/user-attachments/assets/7f0c1fe2-25a3-4999-aab4-c7bd779ba0fe" />
</p>



---

## Interface Tabs

Pulse splits the traditional Spotter interface into three distinct tabs:

- **Environment** — for classes, methods, and packages  
- **Windows** — for every open window in the image  
- **Tools** — for menu items  

---

## Search Behavior

- Pulse fetches the first 25 results, but loads the first 3 results immediately via events to improve responsiveness.
- You can request the full results by using the down arrow button or `<Meta + ↓>`.
- A background service runs every **50 milliseconds** to manage the search behavior asynchronously.
  - Logic handled in: `StPulse >> processSearch`
- When typing, the service triggers the search.
- When changing tabs, a separate search is executed outside the service.
- A spinner gives visual feedback during searches.

---

## History Entries

Any class, method, or package you open (from the Environment tab) is stored as a `HistoryEntry`:

- **Classes/Methods** → contents serialized as a string  
- **Packages** → stores the package name and re-queries on retrieval  

This avoids hard references and all entries are stored in a **circular memory logger**, which auto-cleans any `nil` or invalid entries.

---

## Keyboard Navigation

Keyboard shortcuts are available at both the window level and individual presenters for full mouse-free navigation.

Multiple shortcuts allow you to open Pulse directly into a specific tab, enhancing speed and usability.

---

## UI Features

- Designed to work with **Pharo's new memory of window size**.
- Special handling was implemented for **modal resizing**, requiring Spec-level customization.
- New Spec styles were added to lists (e.g., `rowHeight`) to support this tool.

---

## Processors & Shortcuts

| Processor        | Search Keyword    | Shortcut      |
|------------------|-------------------|---------------|
| **Classes**      | `#classes`        | `<Meta+B>`    |
| **Implementors** | `#implementors`   | `<Meta+M>`    |
| **Packages**     | `#packages`       | `<Meta+P>`    |

---

## Development & Contributions

Pulse development was divided into this repository and contributions to related projects:
(At the moment, I'm developing DockPulse, an adaptation for another IDE)
### Contributions to this repository:
- https://github.com/SebastianLorenzano/pulse/commits/main/

### Contributions to [NewTools](https://github.com/pharo-spec/NewTools)

- [Small fix on NewTools-Spotter-Processors → `StQuery >> updateFromContext:`](https://github.com/pharo-spec/NewTools/pull/1146)
- [Add `stpulse`](https://github.com/pharo-spec/NewTools/pull/1164)
- [Fixing NewTools baseline](https://github.com/pharo-spec/NewTools/pull/1181)
- [Reverted deleted `stEntry` methods](https://github.com/pharo-spec/NewTools/pull/1188)
- [Fixing focus bug on `stpulse` and tests](https://github.com/pharo-spec/NewTools/pull/1200)
- [Implement `stpulse` "Find All" button](https://github.com/pharo-spec/NewTools/pull/1201)

### Contributions to [Spec](https://github.com/pharo-spec/Spec)

- [Add styling for lists (morphic backend)](https://github.com/pharo-spec/Spec/pull/1775)
- [Announce `willClose` and support resizing in modals](https://github.com/pharo-spec/Spec/pull/1776)
- [Added `disableActivationDuring` to `SpAbstractEasypresenter`](https://github.com/pharo-spec/Spec/pull/1778)
- [Fixing `SpSearchInputFieldPresenter` not appearing](https://github.com/pharo-spec/Spec/pull/1796)
