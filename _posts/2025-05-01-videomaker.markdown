---
layout: post
title: "Python: Video Maker - Processador e Gerador de Vídeos"
date: 2025-06-01 17:00:00 -0000
categories: [Computer Vision]
---

# Video Maker - Processador e Gerador de Vídeos

Este projeto é uma suíte completa de ferramentas para processamento, criação e manipulação de vídeos, incluindo download de conteúdo, geração de vídeos com IA e processamento de mídia.

## Funcionalidades

### 🎬 Processamento de Vídeos
- Extração de áudio de vídeos
- Combinação de vídeos com transições
- Aplicação de efeitos de desfoque
- Transcrição de áudio usando Whisper (OpenAI)
- Redimensionamento e renomeação de arquivos

### 📱 Download de Conteúdo
- Download de Reels do Instagram
- Download de vídeos com áudio separado
- Extração automática de metadados

### 🎨 Geração e Edição
- Criação de vídeos a partir de imagens e áudio
- Adição de texto com emojis em imagens
- Geração de vídeos com IA (Stable Video Diffusion)
- Suporte a fontes personalizadas

### 🛠️ Utilitários
- Movimentação e organização de arquivos
- Redução de tamanho de imagens
- Remoção de áudio de vídeos

## Requisitos

- Python 3.8+
- FFmpeg instalado no sistema
- OpenCV (para processamento de imagens/vídeos)
- PIL/Pillow (para manipulação de imagens)
- MoviePy (para edição de vídeos)
- yt-dlp (para download de vídeos)
- Whisper (para transcrição de áudio) - opcional
- Tesseract OCR (para extração de texto) - opcional
- GPU NVIDIA (opcional, para processamento IA mais rápido)
- CUDA Toolkit (opcional, para suporte a GPU)

## Instalação

1. Clone o repositório:
```bash
git clone [URL_DO_REPOSITÓRIO]
cd video-maker
```

2. Crie um ambiente virtual (recomendado):
```bash
python -m venv venv
# Windows:
venv\Scripts\activate
# Linux/macOS:
source venv/bin/activate
```

3. Instale as dependências básicas:
```bash
pip install -r requirements.txt
```

4. Para funcionalidades completas (opcional):
```bash
# Para transcrição de áudio
pip install openai-whisper

# Para OCR
pip install pytesseract opencv-python

# Para interface web
pip install flask

# Para IA (requer GPU NVIDIA)
pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121
pip install diffusers transformers accelerate
```

5. Instale o FFmpeg:
- Windows: Baixe do site oficial e adicione ao PATH
- Linux: `sudo apt-get install ffmpeg`
- macOS: `brew install ffmpeg`

6. (Opcional) Instale o Tesseract OCR:
- Windows: Baixe o instalador do site oficial
- Linux: `sudo apt-get install tesseract-ocr`
- macOS: `brew install tesseract`

## Uso

### 📱 Download de Reels do Instagram

```bash
cd py-tube
python baixar_reels.py
# Digite apenas o código do Reels quando solicitado
```

### 🎬 Processamento de Vídeos

#### Extração de Áudio
```bash
cd scripts
python extract_audio.py
# Extrai áudio de todos os vídeos em data/video/original/
```

#### Combinação de Vídeos
```bash
cd scripts
python combine_video.py
# Combina vídeos da pasta data/video/combine/ com transições
```

#### Aplicar Desfoque
```bash
cd scripts
python blur_to_video.py
# Aplica efeito de desfoque nos vídeos
```

### 🎨 Geração de Conteúdo

#### Criar Vídeo a partir de Imagem e Áudio
```bash
cd py-tube
python generate-video.py
# Combina uma imagem com um áudio para criar um vídeo
```

#### Adicionar Texto em Imagens
```bash
cd py-tube
python white-imagem-text.py
# Adiciona texto centralizado com suporte a emojis
```

#### Geração com IA (Requer GPU)
```bash
cd video-ai
python generate_video.py
# Gera vídeo a partir de imagem usando Stable Video Diffusion
```

### 🔧 Transcrição de Áudio (Opcional)
```bash
cd scripts
python extract_text.py
# Transcreve áudio para texto usando Whisper
```

## Estrutura do Projeto

```
video-maker/
├── 📁 data/                    # Dados de entrada e processamento
│   └── video/
│       ├── audio/              # Áudios extraídos
│       ├── combine/            # Vídeos para combinação
│       ├── final/              # Vídeos finalizados
│       ├── original/           # Vídeos originais
│       ├── output/             # Saída do processamento
│       └── output_blurred/     # Vídeos com desfoque
├── 📁 scripts/                 # Scripts de processamento
│   ├── extract_audio.py        # Extração de áudio
│   ├── combine_video.py        # Combinação de vídeos
│   ├── blur_to_video.py        # Aplicação de desfoque
│   ├── extract_text.py         # Transcrição com Whisper
│   ├── write_text_on_image.py  # Adição de texto em imagens
│   ├── move_files.py           # Organização de arquivos
│   ├── reduz_image.py          # Redimensionamento
│   └── rename_files.py         # Renomeação em lote
├── 📁 py-tube/                 # Downloads e geração
│   ├── baixar_reels.py         # Download de Reels
│   ├── baixar_reels-audio.py   # Download com áudio
│   ├── generate-video.py       # Criação de vídeos
│   ├── white-imagem-text.py    # Texto em imagens
│   ├── download_image.py       # Download de imagens
│   └── remove_audio.py         # Remoção de áudio
├── 📁 video-ai/                # Geração com IA
│   ├── generate_video.py       # Stable Video Diffusion
│   └── stability-ai.py         # Scripts de IA
├── 📁 fonts/                   # Fontes personalizadas
│   └── Caprasimo-Regular.ttf
├── 📁 output/                  # Arquivos de saída
├── 📁 uploads/                 # Uploads temporários
└── requirements.txt            # Dependências do projeto
```

## Funcionalidades Detalhadas

### 🎬 Scripts de Processamento (`scripts/`)

- **extract_audio.py**: Extrai áudio de vídeos MP4 e salva em formato AAC
- **combine_video.py**: Combina múltiplos vídeos com transições suaves (crossfade)
- **blur_to_video.py**: Aplica efeito de desfoque gaussiano em vídeos
- **extract_text.py**: Transcreve áudio para texto usando Whisper OpenAI
- **write_text_on_image.py**: Adiciona texto centralizado em imagens com suporte a emojis

### 📱 Downloads e Geração (`py-tube/`)

- **baixar_reels.py**: Download de Reels do Instagram usando yt-dlp
- **generate-video.py**: Cria vídeos combinando imagem estática com áudio
- **white-imagem-text.py**: Adiciona texto com fundo translúcido em imagens
- **remove_audio.py**: Remove faixa de áudio de vídeos

### 🤖 Geração com IA (`video-ai/`)

- **generate_video.py**: Gera vídeos a partir de imagens usando Stable Video Diffusion
- **stability-ai.py**: Scripts auxiliares para modelos de IA

### 🛠️ Utilitários

- **move_files.py**: Organização automática de arquivos
- **reduz_image.py**: Redimensionamento de imagens
- **rename_files.py**: Renomeação em lote de arquivos

## Exemplos de Uso

### Download de Reel do Instagram
```bash
cd py-tube
python baixar_reels.py
# Digite: DI4lHETJVvA (exemplo de código de Reel)
# Resultado: reels_DI4lHETJVvA.mp4 em py-tube/output/
```

### Criar Vídeo com Imagem e Áudio
```bash
cd py-tube
python generate-video.py
# Informe: imagem1.png
# Informe: audio-maloqueiro.mp4
# Resultado: vídeo-YYYYMMDD-HHMMSS.mp4
```

### Adicionar Texto em Imagem
```bash
cd py-tube
python white-imagem-text.py
# Informe: imagem1.png
# Informe: "Meu texto com emoji 😀\nSegunda linha"
# Resultado: image-text.png
```

### Combinar Vídeos
```bash
# 1. Coloque os vídeos em data/video/combine/
# 2. Execute:
cd scripts
python combine_video.py
# Resultado: video_combine_YYYY-MM-DD HH-MM-SS.mp4
```

## Limitações e Considerações

- ⚠️ O processamento de IA requer GPU NVIDIA com CUDA
- ⚠️ Arquivos grandes podem consumir muita memória
- ⚠️ A qualidade da transcrição depende da qualidade do áudio
- ⚠️ Alguns scripts requerem fontes específicas instaladas
- ⚠️ Downloads do Instagram podem estar sujeitos a limitações da plataforma 

## Verificação de Instalação

### Verificar Dependências do Sistema
```bash
# FFmpeg
ffmpeg -version

# Tesseract OCR (se instalado)
tesseract --version

# Python e PyTorch
python -c "import torch; print(f'PyTorch: {torch.__version__}'); print(f'CUDA disponível: {torch.cuda.is_available()}')"
```

### Testar Funcionalidades Básicas
```bash
# Testar MoviePy
python -c "from moviepy.editor import VideoFileClip; print('MoviePy OK')"

# Testar PIL/Pillow
python -c "from PIL import Image; print('PIL OK')"

# Testar yt-dlp
python -c "import yt_dlp; print('yt-dlp OK')"
```

## Contribuindo

Contribuições são bem-vindas! Para contribuir:

1. Fork o projeto
2. Crie uma branch para sua feature (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

## Licença

Este projeto está licenciado sob a licença MIT - veja o arquivo `LICENSE` para detalhes.

## Suporte

Se você encontrar problemas:

1. Verifique se todas as dependências estão instaladas
2. Confirme se os caminhos dos arquivos estão corretos
3. Verifique se há espaço suficiente em disco
4. Para problemas com GPU, verifique a instalação do CUDA

## Roadmap

### Próximas Funcionalidades
- [ ] Interface web completa com Flask
- [ ] Processamento em lote automatizado
- [ ] Suporte a mais formatos de vídeo
- [ ] Integração com mais plataformas de download
- [ ] Otimizações de performance
- [ ] Sistema de plugins para efeitos personalizados

## Troubleshooting

### Problemas Comuns

#### Erro: "Arquivo está em uso" ao limpar arquivos temporários
- **Causa**: O arquivo ainda está sendo usado pelo sistema ou outro processo
- **Solução**: Feche todos os players de vídeo e aguarde alguns segundos antes de tentar novamente

#### Erro: "Fonte não encontrada"
- **Causa**: Arquivo de fonte não encontrado no caminho especificado
- **Solução**: Verifique se o arquivo `Caprasimo-Regular.ttf` está na pasta `fonts/`

#### Erro: "GPU não disponível" para processamento IA
- **Causa**: CUDA não instalado ou placa gráfica incompatível
- **Solução**: 
  ```bash
  pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121
  ```

#### Erro: "FFmpeg não encontrado"
- **Causa**: FFmpeg não está no PATH do sistema
- **Solução**: Adicione o FFmpeg ao PATH ou reinstale com o instalador oficial

#### Performance lenta no processamento
- **Solução**: 
  - Use GPU para processamento IA
  - Reduza a resolução dos vídeos antes do processamento
  - Feche outros programas que consomem memória

### Configuração de Ambiente Recomendada

```bash
# Criar ambiente virtual limpo
python -m venv video-maker-env
video-maker-env\Scripts\activate  # Windows
# ou
source video-maker-env/bin/activate  # Linux/macOS

# Instalar dependências básicas
pip install --upgrade pip
pip install -r requirements.txt

# Para funcionalidades completas
pip install openai-whisper pytesseract opencv-python flask
```