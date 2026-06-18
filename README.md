# Software QA & Testing — Assignments 7 & 8 (AITU)

![Python](https://img.shields.io/badge/python-3.x-blue)
![Selenium](https://img.shields.io/badge/tool-Selenium-43B02A)
![Behave](https://img.shields.io/badge/BDD-Behave-brightgreen)
![Gherkin](https://img.shields.io/badge/language-Gherkin-yellowgreen)

## Overview

Assignments 7 and 8 for the **Software Quality Assurance and Testing** course at Astana IT University.
Implements **Behavior-Driven Development (BDD)** using the `behave` framework with Gherkin feature files.
Tests automate a hotel search flow on [booking.com](https://www.booking.com) — destination entry,
date selection, and results verification.

## What it covers

- **BDD with Behave** — `.feature` files written in Gherkin (`Given`/`When`/`Then`)
- **Tag-based test filtering** — `@smoke` and `@regression` scenario tags
- **Scenario parametrization** — destination city passed as a step argument (`"Astana"`, `"Almaty"`)
- **Step definitions** — `@given`, `@when`, `@then` decorators mapping Gherkin steps to Selenium actions
- **Environment hooks** — `after_scenario` teardown in `environment.py` to quit the browser
- **Overlay and cookie handling** — best-effort dismissal of cookie banners and intercept overlays on real-world sites
- Screenshot capture at each test step as visual evidence
- Date calculation for dynamic check-in/check-out offsets

## Project structure

```
assignment7_8_sqat/
├── features/
│   ├── booking_search.feature    # Smoke + regression hotel-search scenarios
│   ├── booking_dates.feature     # Date selection scenarios
│   ├── environment.py            # Behave hooks (after_scenario driver teardown)
│   └── steps/
│       └── booking_steps.py      # Step definitions (Selenium + helper functions)
├── 01_home.png                   # Step screenshots (committed as run evidence)
├── 02_destination.png
├── 03_dates.png
├── 04_after_search.png
└── 05_results.png
```

## Getting started

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install behave selenium
```

Run all scenarios:

```bash
behave
```

Run only smoke tests:

```bash
behave --tags=smoke
```

Run only regression tests:

```bash
behave --tags=regression
```

> Requires Chrome and ChromeDriver available on `PATH`.

---

Adil Ormanov — [GitHub](https://github.com/Adilforest)
