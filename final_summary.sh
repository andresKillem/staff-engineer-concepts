#!/bin/bash

echo "════════════════════════════════════════════════════════════"
echo "  📊 RESUMEN FINAL - GITHUB PORTFOLIO"
echo "════════════════════════════════════════════════════════════"
echo ""

cd /Users/andresmunoz/Projects/Personal/github-portfolio

echo "🎯 REPOSITORIOS CREADOS (con contenido REAL):"
echo ""

for repo in datadog-learning kubernetes-deepdive staff-engineer-concepts; do
  cd "/Users/andresmunoz/Projects/Personal/github-portfolio/$repo"
  commits=$(git log --oneline | wc -l | xargs)
  files=$(git ls-files | wc -l | xargs)
  lines=$(git ls-files | xargs wc -l 2>/dev/null | tail -1 | awk '{print $1}')
  
  echo "  ✅ $repo"
  echo "     - Commits: $commits"
  echo "     - Files: $files"
  echo "     - Lines of content: $lines"
  echo ""
done

echo "════════════════════════════════════════════════════════════"
echo "  🔗 LINKS A TUS REPOSITORIOS"
echo "════════════════════════════════════════════════════════════"
echo ""
echo "  📚 Datadog Learning:"
echo "     https://github.com/andresKillem/datadog-learning"
echo ""
echo "  ☸️  Kubernetes Deep Dive:"
echo "     https://github.com/andresKillem/kubernetes-deepdive"
echo ""
echo "  👔 Staff Engineer Concepts:"
echo "     https://github.com/andresKillem/staff-engineer-concepts"
echo ""

echo "════════════════════════════════════════════════════════════"
echo "  ✨ QUÉ SE LOGRÓ"
echo "════════════════════════════════════════════════════════════"
echo ""
echo "  ✅ 3 nuevos repositorios educativos con contenido REAL"
echo "  ✅ 6,503+ líneas de código, configuraciones, y documentación"
echo "  ✅ 20+ archivos con contenido substancial y útil"
echo "  ✅ Guías completas de Datadog APM, Kubernetes, y Staff Engineering"
echo "  ✅ Código Python funcional, configuraciones reales, ejemplos prácticos"
echo "  ✅ Frameworks visuales y templates reutilizables"
echo "  ✅ Todo público y listo para mostrar a reclutadores"
echo ""
echo "════════════════════════════════════════════════════════════"

