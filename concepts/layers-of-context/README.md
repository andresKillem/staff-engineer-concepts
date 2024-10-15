# Layers of Context

> "All interesting problems operate across a number of context layers." - Will Larson

## Overview

As you grow in your career, you gain access to more context about how the organization works. Each layer has different priorities, constraints, and perspectives that are often invisible to other layers.

## The Framework Visualized

```
┌─────────────────────────────────────────────────────────────────┐
│                    EXECUTIVE LAYER                               │
│  Concern: Business Strategy & Market Position                   │
│  Timeframe: 3-5 years                                           │
│  Questions: "Does this support our competitive advantage?"      │
│             "How does this affect our market position?"          │
└────────────────────────┬────────────────────────────────────────┘
                         │
┌────────────────────────┴────────────────────────────────────────┐
│                  DIRECTOR LAYER                                  │
│  Concern: Cross-team Efficiency & Resource Allocation           │
│  Timeframe: 1-2 years                                           │
│  Questions: "What's the operational cost?"                       │
│             "How does this affect our hiring strategy?"          │
└────────────────────────┬────────────────────────────────────────┘
                         │
┌────────────────────────┴────────────────────────────────────────┐
│                   MANAGER LAYER                                  │
│  Concern: Team Capability & Delivery                            │
│  Timeframe: 1-4 quarters                                        │
│  Questions: "Can my team execute this?"                          │
│             "How does this affect our roadmap?"                  │
└────────────────────────┬────────────────────────────────────────┘
                         │
┌────────────────────────┴────────────────────────────────────────┐
│                  ENGINEER LAYER                                  │
│  Concern: Technical Solution & Implementation                   │
│  Timeframe: Weeks to months                                     │
│  Questions: "How do we build this?"                              │
│             "What's the best technical approach?"                │
└─────────────────────────────────────────────────────────────────┘
```

## Real-World Example: Adopting a New Programming Language

### Scenario
Your team wants to adopt Rust for a new microservice instead of Python.

### How Each Layer Sees It

#### 🔧 Engineer Layer
**Perspective:**
- "Rust gives us better performance and memory safety"
- "We can handle 10x more requests with same infrastructure"
- "The type system prevents entire classes of bugs"

**Concerns:**
- Technical fit for the problem
- Developer experience
- Code quality

**Timeline:** This sprint/quarter

---

#### 👔 Manager Layer
**Perspective:**
- "Do we have Rust expertise on the team?"
- "How long will it take to become productive?"
- "What happens if the engineer who wrote this leaves?"

**Concerns:**
- Team capability
- Velocity impact
- Knowledge retention
- Hiring implications

**Timeline:** This year

**Hidden context you might miss:**
- Team already struggled to learn last new technology
- Hiring budget is frozen next quarter
- Manager committed to specific deliverables

---

#### 📊 Director Layer (Platform/Infrastructure)
**Perspective:**
- "What's the cost of running another language in prod?"
- "How many languages is too many?"
- "Can our CI/CD handle this?"

**Concerns:**
- Infrastructure costs
- Operational complexity
- Standardization across teams
- Build/deploy pipelines

**Timeline:** Multi-year

**Hidden context you might miss:**
- Already supporting 5 languages (Python, Go, Java, Node, Ruby)
- Platform team is underwater with current support load
- Company trying to reduce infrastructure spend by 20%

---

#### 🎯 Executive Layer
**Perspective:**
- "Does this align with our engineering strategy?"
- "How does this affect our ability to hire at scale?"
- "What's the opportunity cost?"

**Concerns:**
- Strategic alignment
- Talent market
- Competitive positioning
- Innovation vs stability

**Timeline:** 3-5 years

**Hidden context you might miss:**
- Company is exploring acquisition of Python-heavy company
- Board wants to see faster time-to-market
- Competitors hiring all the Rust talent

---

## The Context Gap Visualization

```
┌──────────────────────────────────────────────────────────────┐
│ What You See (Your Layer)                                    │
│ ┌────────────────────────────────────────────────────────┐  │
│ │  "Rust is technically superior for this use case"      │  │
│ └────────────────────────────────────────────────────────┘  │
└──────────────────────────────────────────────────────────────┘

                          ↓

┌──────────────────────────────────────────────────────────────┐
│ What Your Manager Sees                                        │
│ ┌────────────────────────────────────────────────────────┐  │
│ │  + All your technical points                           │  │
│ │  + Team composition and skill gaps                     │  │
│ │  + Quarterly commitments                                │  │
│ │  + Hiring pipeline challenges                          │  │
│ └────────────────────────────────────────────────────────┘  │
└──────────────────────────────────────────────────────────────┘

                          ↓

┌──────────────────────────────────────────────────────────────┐
│ What The Director Sees                                        │
│ ┌────────────────────────────────────────────────────────┐  │
│ │  + Everything above                                     │  │
│ │  + Infrastructure costs across all teams               │  │
│ │  + Platform team capacity                              │  │
│ │  + Language proliferation risks                        │  │
│ │  + Budget constraints                                   │  │
│ └────────────────────────────────────────────────────────┘  │
└──────────────────────────────────────────────────────────────┘

                          ↓

┌──────────────────────────────────────────────────────────────┐
│ What The VP/CTO Sees                                         │
│ ┌────────────────────────────────────────────────────────┐  │
│ │  + Everything above                                     │  │
│ │  + Market positioning and competitive landscape        │  │
│ │  + Board expectations                                   │  │
│ │  + M&A strategy                                         │  │
│ │  + Org-wide engineering strategy                       │  │
│ │  + Innovation budget allocation                        │  │
│ └────────────────────────────────────────────────────────┘  │
└──────────────────────────────────────────────────────────────┘
```

## Why Smart People Disagree

### The Paradox
Each person is making a **rational decision** based on **their available context**.

```
Your Boss says NO to your great idea
        ↓
You think: "They don't get it"
        ↓
Reality: They see constraints you don't
```

### Common Disconnects

| Your Layer | Your Concern | Their Layer | Their Concern |
|------------|--------------|-------------|---------------|
| "This tech is better" | Performance | "Can we hire for it?" | Talent pool |
| "We should rewrite this" | Code quality | "When can we ship?" | Customer value |
| "Let's use microservices" | Scalability | "Can we operate it?" | Ops complexity |
| "We need to pay tech debt" | Maintainability | "What about features?" | Business goals |

## How to Develop Context Awareness

### 1. Approach Disagreements with Curiosity

**Instead of:**
> "My manager doesn't understand that Rust is better"

**Try:**
> "I'm curious why my manager is hesitant. What context do they have that I don't?"

### 2. Ask Probing Questions

```markdown
To understand manager context:
- "What constraints are you working with that I should know about?"
- "How does this fit with our team's commitments?"
- "What concerns do you have that I might not be seeing?"

To understand director context:
- "How does this affect the broader platform strategy?"
- "What's the operational impact across all teams?"
- "Are there budget or resource constraints I should consider?"

To understand executive context:
- "How does this align with our engineering strategy?"
- "What's the strategic priority here?"
- "What are the opportunity costs?"
```

### 3. Rotate Through Different Teams

- Spend time with platform/infrastructure teams
- Shadow support/ops teams
- Join incident response
- Participate in hiring
- Attend planning meetings

### 4. Engage with Customers

- Join sales calls
- Read support tickets
- Participate in user research
- Attend customer meetings

### 5. Build a Broad Network

Talk to:
- Engineers at other companies
- People in different industries
- Engineers at different career stages
- People in different functions (PM, Design, Sales)

## Practical Application: Making Better Proposals

### ❌ Single-Layer Proposal

```markdown
## Proposal: Migrate to Rust

### Why
- Better performance
- Memory safety
- Strong type system

### Plan
1. Rewrite auth service
2. Measure results
3. Expand to other services
```

**Problem:** Only addresses engineering layer concerns.

---

### ✅ Multi-Layer Proposal

```markdown
## Proposal: Evaluate Rust for Performance-Critical Services

### Executive Summary
Evaluating Rust for specific high-scale services to reduce infrastructure
costs while maintaining hiring velocity.

### Problem (Business Context)
- Infrastructure costs growing 40% YoY
- Current services require 100+ servers
- Customer complaints about latency

### Proposal (Multi-Layer Approach)

**Technical Solution:**
- Pilot Rust for auth service (10x performance in benchmarks)
- Reduce server count from 100 to 10
- Improve p99 latency from 500ms to 50ms

**Team Impact:**
- 2 engineers already know Rust
- 4-week ramp-up time for others
- Rust training budget: $5K
- Continue Python for most services (minimize disruption)

**Operational Impact:**
- Use existing CI/CD (Rust support already available)
- Platform team reviewed: 2-week setup time
- Doesn't add new language (team already using Rust in tools)

**Financial Impact:**
- Infrastructure savings: $200K/year
- Training cost: $5K one-time
- ROI: 40x first year

**Risk Mitigation:**
- Pilot with one service first
- Keep Python version running in parallel
- Decision gate: If not 5x faster, stay with Python

**Timeline:**
- Month 1: Prototype and benchmarks
- Month 2: Production pilot
- Month 3: Evaluate results
- Decision gate before broader rollout

### Success Criteria
- 5x performance improvement
- <10% team velocity reduction
- Infrastructure cost reduction >30%
```

**Why this works:** Addresses concerns at every layer.

## Warning Signs You're Missing Context

1. **Everyone smart disagrees with you**
   - Maybe they see something you don't

2. **Your proposal gets ignored**
   - It might not address real constraints

3. **You're frustrated by "politics"**
   - Often just misaligned context

4. **Your manager keeps saying "it's complicated"**
   - They likely have context they can't share

5. **You think leadership is out of touch**
   - They're looking at different data

## Career Growth Through Context

```
Junior: Focus on technical execution
   ↓
Mid: Understand team dynamics
   ↓
Senior: See cross-team implications
   ↓
Staff: Navigate organizational context
   ↓
Principal: Shape organizational context
```

### Staff Engineer Superpower

**The ability to translate between context layers:**

```
Technical → Manager: "This tech debt slows velocity 30%"
Technical → Director: "This debt costs $X in inefficiency"
Technical → Executive: "This debt prevents us from entering new markets"
```

## Exercise: Map Your Proposal

For your next technical proposal, answer:

1. **Engineer layer:**
   - What's the technical benefit?

2. **Manager layer:**
   - How does this affect the team?
   - What's the impact on commitments?

3. **Director layer:**
   - What's the operational cost?
   - How does this affect other teams?

4. **Executive layer:**
   - How does this align with company strategy?
   - What's the business impact?

If you can't answer all four, seek that context before proposing.

## Summary

**Key Insights:**

1. Each organizational layer has legitimate but different concerns
2. Context increases as you go up (but you lose implementation details)
3. Disagreement often stems from context gaps, not lack of intelligence
4. Staff+ engineers bridge these context layers
5. Curiosity beats conviction when dealing with disagreement

**To Develop Context Awareness:**

- ✅ Ask questions, don't assume
- ✅ Rotate through different parts of the org
- ✅ Engage with customers and business side
- ✅ Build broad networks
- ✅ Approach disagreements with curiosity

**The Core Skill:**

> **See the same problem through multiple context layers and craft solutions that work at all levels.**

---

## Further Reading

- [Original Article by Will Larson](https://lethain.com/layers-of-context/)
- [Staff Engineer Archetype: The Right Hand](../archetypes/right-hand.md)
- [Writing Technical Strategy](../engineering-strategy/README.md)
- [Influence Without Authority](../skills/influence.md)
