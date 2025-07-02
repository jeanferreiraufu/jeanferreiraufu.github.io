# 🌐 Jean Carlo Alves Ferreira - Portfolio Pessoal

[![Jekyll](https://img.shields.io/badge/Jekyll-4.3.4-red?logo=jekyll)](https://jekyllrb.com/)
[![GitHub Pages](https://img.shields.io/badge/GitHub-Pages-green?logo=github)](https://pages.github.com/)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

Portfolio pessoal e blog técnico de **Jean Carlo Alves Ferreira**, Analista de Sistemas Sênior especializado em Cloud Azure, Arquitetura de Dados e desenvolvimento Full Stack.

🔗 **Site**: [https://jeanferreiraufu.github.io](https://jeanferreiraufu.github.io)

## 📋 Sobre o Projeto

Este site foi desenvolvido com Jekyll e hospedado no GitHub Pages, servindo como:

- **Portfolio profissional** com projetos desenvolvidos
- **Blog técnico** com artigos sobre tecnologia
- **Página de apresentação** profissional
- **Central de contato** e networking

### 🎯 Funcionalidades

- ✅ Página inicial responsiva com destaque para projetos
- ✅ Seção dedicada de projetos com filtros e categorias
- ✅ Blog com artigos técnicos
- ✅ Página de contato com informações profissionais
- ✅ Design moderno e mobile-first
- ✅ SEO otimizado
- ✅ Performance otimizada

## 🚀 Como Executar Localmente

### Pré-requisitos

- Ruby 2.7+ e Bundler
- Git

### Instalação

```bash
# Clone o repositório
git clone https://github.com/jeanferreiraufu/jeanferreiraufu.github.io.git
cd jeanferreiraufu.github.io

# Instale as dependências
bundle install

# Execute o servidor local
bundle exec jekyll serve

# Acesse http://localhost:4000
```

### Configuração de Desenvolvimento

```bash
# Para desenvolvimento com livereload
bundle exec jekyll serve --livereload

# Para gerar o site para produção
bundle exec jekyll build
```

## 📝 Como Criar Novos Posts

### Método 1: Script Automático (Recomendado)

**Windows (PowerShell):**
```powershell
.\new-project-post.ps1 "Nome do Projeto" "Descrição breve do projeto"
```

**Linux/Mac (Bash):**
```bash
./new-project-post.sh "Nome do Projeto" "Descrição breve do projeto"
```

### Método 2: Manual

1. Crie um arquivo em `_posts/` com o formato: `YYYY-MM-DD-titulo-do-post.markdown`
2. Use o template fornecido nos scripts

### Tipos de Posts

#### Posts de Projetos
- Use a categoria `projeto`
- Inclua metadados como tecnologias, GitHub, demo
- Adicione seções: Visão Geral, Tecnologias, Resultados, Como Executar

#### Posts de Blog/Artigos
- Use categorias técnicas relevantes
- Foque no conteúdo educativo
- Inclua exemplos de código quando aplicável

## 🗂️ Estrutura do Projeto

```
.
├── _config.yml          # Configurações do Jekyll
├── _includes/           # Componentes reutilizáveis
│   ├── analytics.html
│   ├── author-profile.html
│   ├── head.html
│   ├── masthead.html
│   └── ...
├── _layouts/            # Templates de páginas
│   ├── default.html
│   ├── home.html
│   ├── page.html
│   └── post.html
├── _posts/              # Posts do blog e projetos
├── _sass/               # Estilos SCSS
├── _site/               # Site gerado (ignorado no git)
├── assets/              # CSS, JS, fontes e imagens
│   ├── css/
│   ├── fonts/
│   └── js/
├── images/              # Imagens do site
├── google_scholar_crawler/ # Scripts do Google Scholar
├── .github/             # Configurações do GitHub
├── 404.html             # Página de erro 404
├── index.html           # Página inicial
├── Gemfile              # Dependências Ruby
├── new-project-post.ps1 # Script para criar posts (Windows)
├── new-project-post.sh  # Script para criar posts (Linux/Mac)
├── GUIA-INICIO-RAPIDO.md # Guia de uso do projeto
└── README.md           # Este arquivo
```

## 📞 Contato

**Jean Carlo Alves Ferreira**

- 📧 Email: jeanalves.ferreira@ufu.br
- 💼 LinkedIn: [jean-ferrreira-udi](https://www.linkedin.com/in/jean-ferrreira-udi)
- 🐙 GitHub: [jeanferreiraufu](https://github.com/jeanferreiraufu)
- 🌐 Website: [jean-ferreira-website.web.app](https://jean-ferreira-website.web.app/)
- 🌐 github.io: [jeanferreiraufu.github.io](https://jeanferreiraufu.github.io)

---