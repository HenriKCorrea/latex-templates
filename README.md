# LaTeX Templates Collection

A curated collection of LaTeX templates not available in the CTAN repository, designed for researchers and LaTeX enthusiasts who prefer working on personal machines or through cloud services.

## Overview

This project provides ready-to-use LaTeX templates with an "out of the box" solution for research articles, theses, dissertations, and presentations. The templates are specially curated for users working with TeXLive distributions on personal computers or through containerized environments like GitHub Codespaces.

### Target Audience

- Researchers and academics writing papers, theses, and dissertations
- LaTeX enthusiasts seeking specialized templates
- Students and faculty at institutions requiring specific formatting standards
- Anyone preferring local LaTeX development or cloud-based solutions

### Template Coverage

The main focus areas include:
- **Research articles** (conference and journal papers)
- **Master's and doctoral theses**
- **Thesis proposals and doctoral plans**
- **Academic presentations**
- **Other academic documents** (open to contributions)

## Available Templates

| Name | Type | Description | Original Source | Version |
|------|------|-------------|-----------------|---------|
| `iiufrgs.cls` | Document Class | UFRGS Institute of Informatics document formatting for theses, dissertations, reports, and academic documents | UFRGS TeX Users Group | v4.4.0 |
| `sa.cls` | Document Class | Template for "Seminário de Andamento" (Progress Seminar) articles | UFRGS TeX Users Group | - |
| `iiletter.cls` | Document Class | Official letters with UFRGS Institute of Informatics letterhead | UFRGS TeX Users Group | - |
| `sbc-template.sty` | Package | Brazilian Computer Society (SBC) conference paper template | SBC | 2017 |
| `beamerthemeInf.sty` | Beamer Theme | Presentation theme based on UFRGS Institute of Informatics visual identity | Bruno Menegola | 2012 |
| `abntex2.cls` | Document Class | Brazilian ABNT standards for academic documents | abnTeX2 Project | - |
| `abntex2cite.sty` | Package | Citation style following Brazilian ABNT standards | abnTeX2 Project | - |

## Installation & Setup

### Prerequisites

- **TeXLive distribution** (any recent version)
- All dependencies are included in this project for an "out of the box" solution

### Installation Methods

#### 1. Local Installation (Personal Computer)

Clone this repository to your local texmf directory:

```bash
# Find your texmf directory
_TEXMFHOME="$(kpsewhich -var-value TEXMFHOME)"

# Clone to texmf directory (usually ~/texmf)
git clone https://github.com/HenriKCorrea/texmf.git "$_TEXMFHOME"

# Update LaTeX file database
texhash "$_TEXMFHOME"
```

#### 2. Container Setup (Dev Container)

Use with the TeXLive Docker image as a Dev Container:

1. Create a `.devcontainer/devcontainer.json` file in your project:

```json
{
    "name": "LaTeX",
    "image": "texlive/texlive:latest",
    "postCreateCommand": "git clone https://github.com/HenriKCorrea/texmf.git ~/texmf && texhash ~/texmf",
    "customizations": {
        "vscode": {
            "extensions": [
                "James-Yu.latex-workshop"
            ]
        }
    }
}
```

#### 3. Remote Development (GitHub Codespaces)

1. Create a codespace from your LaTeX project repository
2. The Dev Container configuration above will automatically set up the environment
3. Work directly in your browser with full LaTeX support

### Verification

After installation, verify the templates are available:

```bash
# Check if classes are found
kpsewhich iiufrgs.cls
kpsewhich sbc-template.sty
```

## Getting Started

Here's a basic example using the IIUFRGS class for a thesis:

```latex
\documentclass[ppgc,tese]{iiufrgs}

\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}

\title{Your Thesis Title}
\author{Your Name}
\advisor{Advisor Name}

\begin{document}

\maketitle

\chapter{Introduction}

Your content here...

\end{document}
```

For SBC conference papers:

```latex
\documentclass[12pt]{article}
\usepackage{sbc-template}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}

\sloppy

\title{Paper Title}
\author{Author Name\inst{1}}
\address{Institution\\
  City -- Country
  \email{author@institution.edu}
}

\begin{document}

\maketitle

\begin{abstract}
  Your abstract here...
\end{abstract}

\section{Introduction}

Your content here...

\bibliographystyle{sbc}
\bibliography{references}

\end{document}
```

## Usage Guidelines

### Template Philosophy

The templates are designed to be used **as-is** without modifications. This ensures:
- Compliance with institutional standards
- Consistency across documents
- Easier maintenance and updates

### Best Practices

1. **Don't modify template files directly** - use the provided options and commands
2. **Check institutional requirements** - ensure the template matches current standards
3. **Keep templates updated** - pull latest changes regularly
4. **Use version control** - for your documents, not the templates

## Technical Notes

### Compatibility & Language Support

- **LaTeX Engine Compatibility**: Contact original template authors for specific engine requirements
- **Language Support**: Varies by template - refer to original documentation
- **Dependencies**: All required packages are included in this collection

## Contributing & Maintenance

### Updates

Templates are updated on-demand based on changes from original authors. To request updates:

1. **Submit an issue** describing the needed update
2. **Create a pull request** with the changes
3. **Contact original authors** for template-specific modifications

### Issues & Support

- **Bug Reports**: Use [GitHub Issues](https://github.com/HenriKCorrea/texmf/issues)
- **Feature Requests**: Submit through GitHub Issues
- **Template Modifications**: This project does not accept custom changes to template contents
  - Submit changes to original template authors first
  - This project will then incorporate approved updates

### Contribution Guidelines

1. **Template Additions**: New templates should come from reputable sources
2. **Documentation**: Include proper attribution and version information
3. **Testing**: Ensure templates work with current TeXLive distributions
4. **Licensing**: Respect original licenses and attribution requirements

## License & Attribution

Each template maintains its original license and attribution. See individual files for specific licensing terms.

- IIUFRGS templates: GNU General Public License
- SBC template: Created by Jomi Hubner & Rafael Bordini
- Beamer theme: LaTeX Project Public License (Bruno Menegola)
- abnTeX2 components: LaTeX Project Public License

## Support & Community

- **Issues**: [GitHub Issues](https://github.com/HenriKCorrea/texmf/issues)
- **Discussions**: Use GitHub Discussions for general questions
- **Original Communities**: Refer to original template authors for template-specific support

---

*This project aims to make quality LaTeX templates easily accessible for the global research community. Contributions and feedback are welcome!*
