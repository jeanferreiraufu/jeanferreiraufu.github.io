#!/bin/bash

# Script para criar novos posts de projetos
# Uso: ./new-project-post.sh "Nome do Projeto" "descrição breve"

# Verificar se os parâmetros foram fornecidos
if [ $# -lt 2 ]; then
    echo "Uso: $0 \"Nome do Projeto\" \"Descrição breve\""
    echo "Exemplo: $0 \"Sistema de IA\" \"Sistema de reconhecimento de imagens\""
    exit 1
fi

PROJECT_NAME="$1"
PROJECT_DESCRIPTION="$2"

# Gerar nome do arquivo baseado na data atual
CURRENT_DATE=$(date +"%Y-%m-%d")
FILE_NAME=$(echo "$PROJECT_NAME" | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g' | sed 's/[^a-z0-9-]//g')
FILE_PATH="_posts/${CURRENT_DATE}-${FILE_NAME}.markdown"

# Verificar se o arquivo já existe
if [ -f "$FILE_PATH" ]; then
    echo "Erro: O arquivo $FILE_PATH já existe!"
    exit 1
fi

# Template do post
cat > "$FILE_PATH" << EOF
---
layout: post
title: "$PROJECT_NAME"
date: $(date +"%Y-%m-%d %H:%M:%S %z")
categories: [projeto]
tags: [projeto]
excerpt: "$PROJECT_DESCRIPTION"
author: "Jean Carlo Alves Ferreira"

# Metadados do projeto (edite conforme necessário)
technologies: ["Python", "Azure", "Docker"]
github: "https://github.com/jeanferreiraufu/projeto-exemplo"
demo: ""
status: "Em desenvolvimento"
duration: "2 meses"
team_size: "2 pessoas"
---

## 📋 Visão Geral do Projeto

$PROJECT_DESCRIPTION

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
\`\`\`bash
# Listar pré-requisitos
# Ex: Node.js, Python, Docker, etc.
\`\`\`

### Instalação
\`\`\`bash
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
\`\`\`

## 🔧 Configuração

### Configurações principais
\`\`\`yaml
# Exemplo de configuração
configuracao:
  parametro1: valor1
  parametro2: valor2
\`\`\`

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

- **Jean Carlo Alves Ferreira** - Desenvolvedor Principal
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

**Desenvolvido com ❤️ por Jean Carlo Alves Ferreira**
EOF

echo "✅ Post criado com sucesso: $FILE_PATH"
echo ""
echo "📝 Próximos passos:"
echo "1. Edite o arquivo $FILE_PATH"
echo "2. Adicione imagens em images/ se necessário"
echo "3. Atualize as tecnologias e links do GitHub/demo"
echo "4. Teste localmente com: bundle exec jekyll serve"
echo "5. Faça commit e push para publicar"
echo ""
echo "🌐 Para visualizar: http://localhost:4000/$(date +"%Y")/$(date +"%m")/$(date +"%d")/${FILE_NAME}/"
