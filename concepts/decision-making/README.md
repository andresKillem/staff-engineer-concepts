# Decision-Making Frameworks for Staff+ Engineers

## Why Decision Frameworks Matter

As a Staff+ engineer, you make decisions that affect:
- Multiple teams
- Long-term architecture
- Significant budget
- Company direction

Poor decisions are expensive. Good frameworks help you make better, faster, more consistent decisions.

## Decision Types

### Type 1: Reversible (Two-way door)
- Easy to undo
- Low cost to change
- Make quickly

**Examples:**
- Which logging library to use
- API naming conventions
- Code formatting rules

**Approach:** Make the decision and iterate.

### Type 2: Irreversible (One-way door)
- Hard/expensive to undo
- Long-term consequences
- Requires careful analysis

**Examples:**
- Database technology choice
- Cloud provider
- Programming language for new platform
- Microservices vs monolith

**Approach:** Use decision framework, gather data, get consensus.

## Decision Frameworks

### 1. DACI (Driver, Approver, Contributors, Informed)

**Roles:**
- **Driver**: Owns the decision, drives process
- **Approver**: Has final say (one person)
- **Contributors**: Provide input
- **Informed**: Need to know outcome

**Example: Choosing Message Queue**

```markdown
## Decision: Message Queue Technology

**Driver:** Sarah (Staff Engineer)
**Approver:** CTO
**Contributors:**
- Platform team
- Backend teams (users)
- SRE team (operations)
**Informed:**
- Engineering managers
- Product team

**Timeline:**
- Week 1: Gather requirements
- Week 2: Evaluate options
- Week 3: Recommendation
- Week 4: Decision

**Process:**
1. Driver creates evaluation criteria
2. Contributors provide feedback
3. Driver researches options
4. Contributors review findings
5. Driver makes recommendation
6. Approver makes final call
7. Inform stakeholders
```

### 2. Weighted Decision Matrix

Quantify trade-offs.

**Example: Database Selection**

| Criteria | Weight | PostgreSQL | DynamoDB | MongoDB |
|----------|---------|-----------|----------|---------|
| **Performance** | 30% | 7 (2.1) | 9 (2.7) | 8 (2.4) |
| **Cost** | 25% | 8 (2.0) | 6 (1.5) | 7 (1.75) |
| **Scalability** | 20% | 6 (1.2) | 10 (2.0) | 8 (1.6) |
| **Team Expertise** | 15% | 9 (1.35) | 3 (0.45) | 5 (0.75) |
| **Ecosystem** | 10% | 10 (1.0) | 7 (0.7) | 8 (0.8) |
| **Total** | 100% | **7.65** | **7.35** | **7.3** |

**Conclusion:** PostgreSQL wins slightly, but all are viable.

**Now consider:**
- Team learning curve for DynamoDB
- Long-term operational costs
- Migration complexity

### 3. Pre-Mortem Analysis

Imagine the decision failed. Why?

**Example: Migrating to Microservices**

```markdown
## Pre-Mortem: Microservices Migration

**Scenario:** 12 months from now, the migration is a disaster.

**What went wrong?**
1. Underestimated complexity
   → No one had microservices experience
   → Spent 6 months learning, not delivering

2. Distributed system problems
   → Network latency killed performance
   → Debugging became impossible
   → Cascading failures

3. Organizational unreadiness
   → Teams not structured for ownership
   → No clear service boundaries
   → Deployment coordination nightmare

4. Infrastructure gaps
   → Monitoring inadequate
   → Service mesh too complex
   → Cost explosion (10x compute)

**Prevention:**
- Hire experienced microservices engineers
- Start with 2-3 services, not all at once
- Invest in observability FIRST
- Org restructure before tech rewrite
- Run cost analysis early
- Keep monolith option open
```

### 4. Consequence Scanning

Map impacts across dimensions.

**Example: Open-Sourcing Internal Tool**

| Dimension | Positive | Negative | Mitigation |
|-----------|----------|----------|-----------|
| **Engineering** | Cleaner code, external contributions | Maintenance burden, support | Dedicated team, clear scope |
| **Recruiting** | Attracts talent, visibility | Competitors see our approach | Benefits outweigh costs |
| **Security** | More eyes on code | Expose vulnerabilities | Security review first |
| **Legal** | Community goodwill | Licensing concerns | Legal review, clear license |
| **Product** | Ecosystem growth | Competitors can use it | Not core IP, commodity tool |

**Decision:** Proceed with open source, but:
1. Security audit first
2. Choose permissive license
3. Dedicate 1 engineer part-time
4. Only non-differentiating tools

### 5. Eisenhower Matrix (Urgent vs Important)

Prioritize what to decide now vs later.

```
┌─────────────────┬─────────────────┐
│ Urgent +        │ Not Urgent +    │
│ Important       │ Important       │
│ DO NOW          │ SCHEDULE        │
│                 │                 │
│ • P0 incidents  │ • Architecture  │
│ • Security fix  │ • Tech debt     │
│ • Data breach   │ • Team growth   │
└─────────────────┼─────────────────┘
│ Urgent +        │ Not Urgent +    │
│ Not Important   │ Not Important   │
│ DELEGATE        │ ELIMINATE       │
│                 │                 │
│ • Meetings      │ • Busy work     │
│ • Interruptions │ • Bike-shedding │
└─────────────────┴─────────────────┘
```

**Application:**
- **Urgent + Important**: Decide immediately
- **Important + Not Urgent**: Most strategic work lives here
- **Urgent + Not Important**: Delegate or automate
- **Neither**: Say no

## Gathering Information

### Questions to Ask

**Technical:**
- What problem are we solving?
- What are the constraints?
- What's the timeline?
- What happens if we do nothing?
- What are the alternatives?

**Organizational:**
- Who is affected?
- What are the resource requirements?
- What skills do we have/need?
- How does this align with strategy?

**Risk:**
- What could go wrong?
- What's the blast radius?
- Can we reverse this?
- What's our rollback plan?

### Data Sources

**Quantitative:**
- Metrics and dashboards
- Load tests and benchmarks
- Cost projections
- Team velocity data

**Qualitative:**
- User feedback
- Team surveys
- Expert opinions
- Industry trends

**Mix of Both:**
- Proof of concept results
- Competitive analysis
- Case studies
- Postmortems

## Making the Call

### When You Have Enough Information

You'll never have perfect information. Decide when:
1. Marginal cost of more information > marginal benefit
2. Delay cost > decision risk
3. You have "enough" confidence (70-80%, not 100%)

### Document Your Decision

```markdown
## Decision: Migrate to Kubernetes

**Date:** 2025-10-22
**Decision Maker:** Sarah Chen (Staff Engineer)
**Status:** Approved

### Context
Current deployment on ECS is limiting our ability to...

### Problem Statement
We need to reduce deploy time from 45min to <10min and enable
zero-downtime deployments.

### Considered Options
1. Optimize ECS
2. Migrate to Kubernetes
3. Serverless (Lambda)

### Decision
Migrate to Kubernetes (EKS)

### Rationale
- Industry standard, large ecosystem
- Team has some experience
- Enables future needs (multi-region, etc)
- Managed service (EKS) reduces operational burden

### Trade-offs Accepted
- Learning curve (3 months)
- Migration effort (6 months, 3 engineers)
- Increased complexity
- Higher costs initially

### Success Criteria
- Deploy time <10min
- Zero-downtime deploys
- Team comfortable with K8s
- No production incidents during migration

### Risks and Mitigations
| Risk | Mitigation |
|------|-----------|
| Team expertise | Training + hire 1 K8s expert |
| Migration complexity | Phased approach, pilot first |
| Cost increase | Strict cost monitoring |

### Timeline
- Q1: Training + pilot service
- Q2-Q3: Migration
- Q4: Optimization

### Review Date
- 3 months: Progress check
- 6 months: Outcome assessment
```

## Common Decision Pitfalls

### 1. Analysis Paralysis
**Symptom:** Endless research, no decision
**Fix:** Set decision deadline, use "good enough" threshold

### 2. Sunk Cost Fallacy
**Symptom:** "We've invested so much already..."
**Fix:** Evaluate based on future value, not past investment

### 3. Confirmation Bias
**Symptom:** Only seeking information that supports your preferred option
**Fix:** Actively look for contradicting evidence, assign "devil's advocate"

### 4. Groupthink
**Symptom:** Everyone agrees too quickly
**Fix:** Encourage dissent, separate idea generation from decision

### 5. Recency Bias
**Symptom:** Over-weighting recent events
**Fix:** Look at longer-term data, consider historical context

## Communicating Decisions

### Announce the Decision

```markdown
# [Decision] Migrating to Kubernetes

**TL;DR:** We're migrating from ECS to Kubernetes over next 6 months.

## Why
- Reduce deploy time: 45min → <10min
- Enable zero-downtime deployments
- Support future scale (multi-region, etc)

## What This Means For You
**Backend Teams:**
- New deployment process (simpler!)
- Better observability built-in
- Training provided

**Platform Team:**
- Lead migration effort
- K8s expertise needed

**Timeline:**
- Q1: Pilot + training
- Q2-Q3: Team-by-team migration
- Q4: Full migration complete

## FAQ
Q: Do I need to learn Kubernetes?
A: Basic knowledge helps, but platform team handles complexity.

Q: Will this affect my current work?
A: Minimal impact. Migration happens in background.

Q: What if something goes wrong?
A: Phased approach, can rollback at any stage.

## Questions?
See #kubernetes-migration or ask @sarah
```

## When to Revisit Decisions

### Scheduled Reviews

Every major decision should have review dates:
- 1 month: Early check-in
- 3 months: Quarter review
- 6-12 months: Full assessment

### Triggers for Re-evaluation

- New information contradicts assumptions
- Context changed significantly
- Better alternatives emerged
- Decision not producing expected results

## Summary

**Good decisions:**
1. Have clear context and problem statement
2. Consider multiple options
3. Involve right stakeholders
4. Are documented with rationale
5. Include success criteria
6. Plan for what could go wrong
7. Have review schedule

**As a Staff+ engineer:**
- You make high-impact decisions
- You facilitate team decisions
- You set decision-making standards
- You communicate decisions effectively
- You learn from outcomes

**Key principle:**
> "Make reversible decisions quickly. Make irreversible decisions carefully."

**Remember:**
- Perfect information is impossible
- Done is better than perfect
- Document your reasoning
- Review and learn
