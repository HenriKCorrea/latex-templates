FROM registry.gitlab.com/islandoftex/images/texlive@sha256:e51e9458a2c18970d6661c3a858c4b069de45a35ff40ecc5f8a0dfb6e53aaff4

# Install project LaTeX packages
COPY texmf/ "$(kpsewhich -var-value TEXMFLOCAL)"/
RUN texhash "$(kpsewhich -var-value TEXMFLOCAL)"
