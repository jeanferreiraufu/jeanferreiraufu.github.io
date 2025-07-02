# Script PowerShell para criar novos posts de projetos
# Uso: .\new-project-post.ps1 "Nome do Projeto" "Descrição breve"

param(
    [Parameter(Mandatory=$true)]
    [string]$ProjectName,
    
    [Parameter(Mandatory=$true)]
    [string]$ProjectDescription
)

# Verificar se os parâmetros foram fornecidos
if (-not $ProjectName -or -not $ProjectDescription) {
    Write-Host "Uso: .\new-project-post.ps1 'Nome do Projeto' 'Descrição breve'" -ForegroundColor Red
    Write-Host "Exemplo: .\new-project-post.ps1 'Sistema de IA' 'Sistema de reconhecimento de imagens'" -ForegroundColor Yellow
    exit 1
}

# Gerar nome do arquivo baseado na data atual
$CurrentDate = Get-Date -Format "yyyy-MM-dd"
$FileName = $ProjectName.ToLower() -replace ' ', '-' -replace '[^a-z0-9-]', ''
$FilePath = "_posts\$CurrentDate-$FileName.markdown"

# Verificar se o arquivo já existe
if (Test-Path $FilePath) {
    Write-Host "Erro: O arquivo $FilePath já existe!" -ForegroundColor Red
    exit 1
}

# Gerar timestamp com timezone
$DateTime = Get-Date -Format "yyyy-MM-dd HH:mm:ss K"

# Template do post
$Template = @"
---
layout: post
title: "$ProjectName"
date: $DateTime
categories: [projeto]
tags: [projeto]
excerpt: "$ProjectDescription"
author: "Jean Ferreira"

# Metadados do projeto (edite conforme necessário)
technologies: ["Python", "Azure", "Docker"]
github: "https://github.com/jeanferreiraufu/projeto-exemplo"
demo: ""
status: "Em desenvolvimento"
duration: "2 meses"
team_size: "2 pessoas"
---

## 📋 Visão Geral do Projeto

$ProjectDescription

### 🎯 Objetivos

- [ ] Objetivo principal 1
- [ ] Objetivo principal 2
- [ ] Objetivo principal 3

## 🏗️ Arquitetura da Solução

### Componentes Principais

1. **Frontend**
   - Tecnologia utilizada
   - Principais funcionalidades

2. **Backend**
   - APIs e serviços
   - Banco de dados

3. **Infraestrutura**
   - Cloud provider
   - Containers e orquestração

## 💻 Tecnologias Utilizadas

### Backend
- **Linguagem principal**
- **Framework**
- **Banco de dados**

### Frontend
- **Framework/Library**
- **UI Components**
- **Gerenciamento de estado**

### DevOps
- **Cloud Provider**
- **CI/CD**
- **Monitoramento**

## 🚀 Funcionalidades Implementadas

### ✅ Principais Features
- [x] Feature implementada 1
- [x] Feature implementada 2
- [ ] Feature em desenvolvimento 1
- [ ] Feature planejada 1

## 📊 Resultados e Métricas

### Performance
- **Métrica 1**: Valor
- **Métrica 2**: Valor
- **Métrica 3**: Valor

### Impacto
- Benefício 1
- Benefício 2
- Benefício 3

## 🛠️ Como Executar o Projeto

### Pré-requisitos
``````bash
# Listar pré-requisitos
# Ex: Node.js, Python, Docker, etc.
``````

### Instalação
``````bash
# Clone o repositório
git clone https://github.com/jeanferreiraufu/projeto-exemplo.git
cd projeto-exemplo

# Instale dependências
npm install  # ou pip install -r requirements.txt

# Configure variáveis de ambiente
cp .env.example .env
# Edite o arquivo .env conforme necessário

# Execute o projeto
npm start  # ou python main.py
``````

## 🔧 Configuração

### Configurações principais
``````yaml
# Exemplo de configuração
configuracao:
  parametro1: valor1
  parametro2: valor2
``````

## 📈 Monitoramento

### Métricas acompanhadas
- Métrica de performance 1
- Métrica de negócio 2
- Métrica de qualidade 3

## 🔐 Segurança

### Medidas implementadas
- Autenticação e autorização
- Criptografia de dados
- Validação de entrada

## 🤝 Colaboradores

- **Jean Ferreira** - Desenvolvedor Principal
- **Nome do Colaborador** - Função (se aplicável)

## 📚 Aprendizados e Desafios

### Principais Desafios
1. **Desafio 1**: Como foi resolvido
2. **Desafio 2**: Como foi resolvido

### Lições Aprendidas
- Aprendizado importante 1
- Aprendizado importante 2

## 🔄 Próximos Passos

- [ ] Melhoria planejada 1
- [ ] Feature futura 1
- [ ] Otimização planejada 1

## 📄 Documentação Adicional

- [Link para documentação técnica](docs/)
- [Manual do usuário](docs/user-guide.md)
- [API Reference](docs/api.md)

## 📞 Contato

Para dúvidas sobre este projeto:

- **Email**: jeanalves.ferreira@ufu.br
- **LinkedIn**: [jean-ferrreira-udi](https://www.linkedin.com/in/jean-ferrreira-udi)
- **GitHub**: [jeanferreiraufu](https://github.com/jeanferreiraufu)

---

**Desenvolvido com ❤️ por Jean C. A. Ferreira**
"@

# Criar o arquivo
$Template | Out-File -FilePath $FilePath -Encoding UTF8

Write-Host "✅ Post criado com sucesso: $FilePath" -ForegroundColor Green
Write-Host ""
Write-Host "📝 Próximos passos:" -ForegroundColor Cyan
Write-Host "1. Edite o arquivo $FilePath"
Write-Host "2. Adicione imagens em images/ se necessário"
Write-Host "3. Atualize as tecnologias e links do GitHub/demo"
Write-Host "4. Teste localmente com: bundle exec jekyll serve"
Write-Host "5. Faça commit e push para publicar"
Write-Host ""

$UrlDate = Get-Date -Format "yyyy/MM/dd"
Write-Host "🌐 Para visualizar: http://localhost:4000/$UrlDate/$FileName/" -ForegroundColor Yellow
