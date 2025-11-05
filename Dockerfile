FROM registry.gitlab.com/islandoftex/images/texlive@sha256:e51e9458a2c18970d6661c3a858c4b069de45a35ff40ecc5f8a0dfb6e53aaff4

# Install project LaTeX packages
COPY texmf/ /tmp/texmf/
RUN TEXMFLOCAL="$(kpsewhich -var-value TEXMFLOCAL)" && \
    cp -r /tmp/texmf/* "$TEXMFLOCAL/" && \
    texhash "$TEXMFLOCAL" && \
    rm -rf /tmp/texmf/

# Install dependencies
RUN apt-get update && apt-get install -y \
        git-lfs \
    && apt-get clean && rm -rf /var/lib/apt/lists/*
    
# Install git LFS    
RUN git lfs install
