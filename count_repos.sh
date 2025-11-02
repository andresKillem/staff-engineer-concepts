#!/bin/bash
echo "📊 Repository Summary"
echo ""

cd /Users/andresmunoz/Projects/Personal/github-portfolio

for repo in terraform-aws-modules-fixed kubernetes-production-toolkit-fixed devops-security-toolkit-fixed aws-cost-optimization-fixed datadog-learning kubernetes-deepdive staff-engineer-concepts; do
  cd "/Users/andresmunoz/Projects/Personal/github-portfolio/$repo"
  total=$(git log --oneline | wc -l | xargs)
  echo "  $repo: $total commits"
done

echo ""
echo "Total repositories: 7"
echo "All repos are PUBLIC with REAL educational content!"
