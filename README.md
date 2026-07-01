[README.md](https://github.com/user-attachments/files/29550045/README.md)
# NyxOS

**Uma distribuição Linux baseada em Debian, construída para performance e uma experiência desktop refinada em torno do KDE Plasma 6.**

<p align="center">
  <img src="https://img.shields.io/badge/base-Debian%2013%20Trixie-A81D33?style=flat-square&logo=debian&logoColor=white" alt="Base: Debian 13 Trixie">
  <img src="https://img.shields.io/badge/DE-KDE%20Plasma%206-1D99F3?style=flat-square&logo=kde&logoColor=white" alt="DE: KDE Plasma 6">
  <img src="https://img.shields.io/badge/kernel-XanMod-2E8B57?style=flat-square&logo=linux&logoColor=white" alt="Kernel: XanMod">
  <img src="https://img.shields.io/badge/build-live--build-c62828?style=flat-square" alt="Build: live-build">
  <img src="https://img.shields.io/badge/installer-Calamares-F9A825?style=flat-square" alt="Installer: Calamares">
  <img src="https://img.shields.io/badge/license-GPLv3-blue?style=flat-square" alt="License: GPLv3">
</p>

---

## 🌙 Sobre o NyxOS

NyxOS é uma distribuição Linux baseada em **Debian 13 "Trixie"**, com foco em unir a estabilidade e a previsibilidade do Debian a uma experiência de desktop moderna e coesa em torno do **KDE Plasma 6**.

O projeto nasceu originalmente em cima do Arch Linux e agora migra para uma base Debian, mantendo a mesma essência — identidade visual própria, kernel voltado a performance e instalação simples via Calamares — mas apoiado na robustez dos lançamentos estáveis do Debian e num ciclo de manutenção mais previsível.

O nome vem de **Nyx**, a deusa grega da noite: a ideia é um sistema rápido, discreto e elegante, que "simplesmente funciona" no dia a dia.

## 🧱 Base do sistema

| Componente | Escolha | Motivo |
|---|---|---|
| **Base** | Debian 13 (Trixie) | Estável, e já disponibiliza o KDE Plasma 6 diretamente nos repositórios oficiais |
| **Ferramenta de build** | [`live-build`](https://wiki.debian.org/DebianLive) | Ferramenta oficial do Debian para gerar imagens live/instaláveis — equivalente ao `archiso` no mundo Arch |
| **Ambiente Desktop** | KDE Plasma 6 | Mantém a identidade visual e de UX do NyxOS |
| **Kernel** | [XanMod](https://xanmod.org/) | Kernel focado em performance/desktop; a alternativa mais próxima do `linux-cachyos`, já que o scheduler BORE não está disponível nativamente nos repositórios do Debian |
| **Instalador** | [Calamares](https://calamares.io/) | O mesmo instalador de sempre, agora empacotado e integrado via `apt` em vez de `pacman` |

## ✨ Principais características

- 🖥️ **KDE Plasma 6** pré-configurado e tematizado com a identidade visual do NyxOS
- ⚡ **Kernel XanMod** para melhor responsividade em desktop, multimídia e jogos
- 🐧 Base **Debian 13 (Trixie)** — estabilidade sem abrir mão de pacotes recentes
- 🛠️ Build reprodutível via `live-build`, direto a partir deste repositório
- 💿 Instalação guiada e simples com o **Calamares**

## 📸 Capturas de tela

> _Em breve — desktop padrão, tema, Calamares em ação, etc._

## 💻 Requisitos mínimos

| Recurso | Mínimo | Recomendado |
|---|---|---|
| CPU | x86_64 (64 bits) | x86_64 multi-core |
| RAM | 2 GB | 4 GB ou mais |
| Armazenamento | 20 GB | 30 GB ou mais |
| Boot | UEFI ou BIOS/Legacy | UEFI |

> Valores estimados — ajuste conforme os testes reais da sua build.

## 📁 Estrutura do repositório

```
nyxos/
├── config/               # Configuração do live-build
│   ├── package-lists/    # Listas de pacotes (base, kde, xanmod, calamares...)
│   ├── includes.chroot/  # Arquivos injetados no sistema final
│   └── hooks/            # Scripts executados durante o build
├── branding/              # Wallpapers, tema Plasma, splash screen, logo
├── calamares/              # Configuração dos módulos do Calamares
└── docs/                   # Documentação adicional
```

> Estrutura de referência baseada no padrão do `live-build` — adapte para refletir a organização real do repositório.

## 🔧 Compilando o NyxOS

### Pré-requisitos

Recomenda-se compilar em uma máquina (ou container) com **Debian 13 (Trixie)**.

```bash
sudo apt update
sudo apt install live-build git
```

### Build

```bash
git clone https://github.com/<seu-usuario>/nyxos.git
cd nyxos

# Limpa builds anteriores (opcional)
sudo lb clean --purge

# Baixa os pacotes e monta a imagem
sudo lb build
```

Ao final, a imagem `.iso` é gerada na raiz do projeto.

## 💿 Instalação

As imagens ISO serão publicadas na aba **Releases** deste repositório assim que as builds estáveis estiverem disponíveis.

1. Grave a imagem `.iso` em um pendrive (`dd`, Rufus, Ventoy, etc.)
2. Dê boot no modo live
3. Abra o **Calamares** e siga o assistente de instalação

## 🗺️ Roadmap

- [ ] Tematização padrão do Plasma 6 (ícones, cursores, splash screen)
- [ ] Repositório `apt` próprio para atualizações e pacotes do NyxOS
- [ ] Pipeline de CI para builds automatizadas
- [ ] Variantes da ISO (minimal / full)

## 🤝 Contribuindo

Contribuições são bem-vindas! Abra uma *issue* para bugs e sugestões, ou envie um *pull request*.

```bash
git checkout -b minha-feature
# commits...
git push origin minha-feature
```

## 📜 Créditos

O NyxOS não existiria sem estes projetos:

- [Debian Project](https://www.debian.org/)
- [KDE Plasma](https://kde.org/plasma-desktop/)
- [XanMod Kernel](https://xanmod.org/)
- [Calamares](https://calamares.io/)
- [Debian Live / live-build](https://wiki.debian.org/DebianLive)

## 📄 Licença

Este repositório (scripts de build, configurações e branding) é distribuído sob a licença [GPLv3](LICENSE), salvo indicação em contrário. Os componentes de terceiros mantêm suas respectivas licenças originais.

---

<p align="center"><i>Feito para quem gosta de um sistema rápido, estável e com cara própria.</i></p>
