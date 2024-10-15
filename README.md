# Staff Engineer Concepts

A visual and practical guide to senior/staff engineering leadership based on Will Larson's (Lethain) teachings and industry best practices.

## Overview

This repository explores the concepts, frameworks, and skills needed to operate effectively as a Staff+ engineer. Content is inspired by [Will Larson's blog](https://lethain.com/) and his books "Staff Engineer" and "An Elegant Puzzle".

## Core Frameworks

### 1. [Layers of Context](./concepts/layers-of-context.md)
Understanding how different organizational layers view the same problem differently.

### 2. [Engineering Strategy](./concepts/engineering-strategy.md)
Writing and executing on technical strategy that matters.

### 3. [System Thinking](./concepts/systems-thinking.md)
Mental models for solving complex organizational problems.

### 4. [Technical Vision](./concepts/technical-vision.md)
Creating and communicating a compelling technical future.

## Staff Engineer Archetypes

Based on Larson's research, Staff+ engineers typically fall into one of four archetypes:

### Tech Lead
- Guides technical approach for a specific team
- Deep in implementation details
- Splits time: 50% coding, 50% technical leadership

### Architect
- Designs and evolves critical systems
- Works across multiple teams
- Focus on system design and architecture

### Solver
- Tackles the hardest, most ambiguous problems
- Moves between projects as needed
- Brought in for critical initiatives

### Right Hand
- Extends executive's reach and impact
- Operates across organization
- Handles special projects and escalations

[Full Archetype Guide →](./archetypes/README.md)

## Key Concepts

### 📊 Visual Frameworks

All concepts include visual diagrams and real-world examples:

```
concepts/
├── layers-of-context/
│   ├── README.md
│   ├── visual-diagram.md
│   └── examples.md
├── engineering-strategy/
│   ├── strategy-framework.md
│   ├── vision-vs-strategy.md
│   └── case-studies.md
├── systems-thinking/
│   ├── mental-models.md
│   ├── stocks-and-flows.md
│   └── feedback-loops.md
└── technical-debt/
    ├── debt-taxonomy.md
    ├── migration-strategies.md
    └── decision-framework.md
```

## Reading List

### Essential Books
1. **Staff Engineer** - Will Larson
2. **An Elegant Puzzle** - Will Larson
3. **The Staff Engineer's Path** - Tanya Reilly
4. **A Philosophy of Software Design** - John Ousterhout

### Key Articles
- [Layers of Context](https://lethain.com/layers-of-context/)
- [Writing an Engineering Strategy](https://lethain.com/eng-strategies/)
- [Work on What Matters](https://staffeng.com/guides/work-on-what-matters)
- [Staff Projects](https://lethain.com/staff-projects/)

[Complete Reading List →](./resources/reading-list.md)

## Skills Development

### Technical Skills
- [ ] System design at scale
- [ ] Architecture patterns
- [ ] Technical writing
- [ ] Code quality and standards
- [ ] Performance optimization
- [ ] Security fundamentals

### Leadership Skills
- [ ] Influence without authority
- [ ] Building consensus
- [ ] Technical communication
- [ ] Mentoring and sponsorship
- [ ] Organizational navigation
- [ ] Strategic thinking

### Project Skills
- [ ] Scoping and estimation
- [ ] Risk management
- [ ] Stakeholder management
- [ ] Technical roadmapping
- [ ] Migration planning
- [ ] Incident leadership

[Skills Matrix →](./skills/matrix.md)

## Repository Structure

```
staff-engineer-concepts/
├── concepts/              # Core frameworks with visuals
│   ├── layers-of-context/
│   ├── engineering-strategy/
│   ├── systems-thinking/
│   ├── technical-vision/
│   └── migrations/
├── archetypes/            # Staff engineer role types
├── templates/             # Practical templates
│   ├── strategy-doc.md
│   ├── design-doc.md
│   ├── project-proposal.md
│   └── incident-postmortem.md
├── case-studies/          # Real-world examples
├── skills/                # Skill development guides
├── resources/             # Books, articles, videos
└── diagrams/              # Visual aids and frameworks
```

## Quick Start Examples

### 1. Understanding Context Layers

Imagine proposing a new programming language for your team:

**Your Layer (Engineering Team)**
- Focus: "This language solves our async problems"
- Concern: Developer productivity
- Timeframe: This quarter

**Manager's Layer (Engineering Lead)**
- Focus: "How does this affect hiring?"
- Concern: Team capability and growth
- Timeframe: This year

**Director's Layer (Platform)**
- Focus: "What's the infrastructure cost?"
- Concern: Operational efficiency
- Timeframe: Multi-year

**VP's Layer (Executive)**
- Focus: "How does this align with company strategy?"
- Concern: Business outcomes
- Timeframe: 3-5 years

[See full visualization →](./concepts/layers-of-context/README.md)

### 2. Engineering Strategy Template

```markdown
# Engineering Strategy: [Area]

## Diagnosis
What's the problem we're solving?
- Current state
- Pain points
- Why now?

## Guiding Policy
Our approach to solving it:
- Key principles
- What we will/won't do
- Trade-offs

## Coherent Actions
Concrete steps:
1. Q1: [Action]
2. Q2: [Action]
3. Q3: [Action]

## Success Metrics
How we know it's working:
- Metric 1: [Target]
- Metric 2: [Target]
```

[Full template →](./templates/strategy-doc.md)

## Visual Concepts Gallery

### Systems Thinking

**Stock and Flow Diagram:**
```
[Technical Debt] ← Creation Rate
       ↓
    Pay Down Rate
       ↓
[Clean Codebase]
```

### Organizational Layers
```
Executive (Strategy)
    ↓
Directors (Alignment)
    ↓
Managers (Execution)
    ↓
Engineers (Implementation)
```

### Decision Framework
```
Impact: High/Low
Reversibility: Easy/Hard

High Impact + Hard to Reverse = Requires careful analysis
Low Impact + Easy to Reverse = Move fast, experiment
```

## Practical Applications

### Writing Documents

- [Architecture Decision Records](./templates/adr-template.md)
- [Design Documents](./templates/design-doc.md)
- [Strategy Documents](./templates/strategy-doc.md)
- [Postmortems](./templates/postmortem.md)

### Leading Projects

- [Project Scoping Guide](./guides/project-scoping.md)
- [Stakeholder Mapping](./guides/stakeholder-mapping.md)
- [Technical Roadmapping](./guides/roadmapping.md)

### Career Development

- [Getting to Staff](./career/path-to-staff.md)
- [Staff Project Ideas](./career/staff-projects.md)
- [Promotion Packets](./career/promotion-packet.md)

## Contributing

This is a personal learning repository documenting my journey in senior technical leadership. Feedback and suggestions are welcome via issues.

## Author

**Andrés Muñoz** - Principal DevOps Architect

Applying these concepts in building and scaling infrastructure platforms. Focused on the intersection of technical leadership, cloud architecture, and organizational effectiveness.

- [GitHub](https://github.com/andresKillem)
- [LinkedIn](https://linkedin.com/in/andresmunoz)

## Acknowledgments

- **Will Larson** ([lethain.com](https://lethain.com/)) - For sharing decades of engineering leadership wisdom
- **StaffEng.com** - For the comprehensive guide and interviews
- **Tanya Reilly** - For "The Staff Engineer's Path"

---

*Last Updated: October 2025*
