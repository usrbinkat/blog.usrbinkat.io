FROM ghcr.io/containercraft/devcontainer

##################################################################################
USER root

# Apt Packages
ARG APT_PKGS="\
    chromium-browser \
    "
# Apt Packages
RUN echo \
    && export TEST="gh version" \
    && bash -c "apt-get update" \
    && bash -c "apt-get install -y --no-install-recommends -o Dpkg::Options::='--force-confold' ${APT_PKGS}" \
    && ${TEST} \
    && echo

# Install hugo
EXPOSE 1313
RUN set -ex \
    && export arch=$(uname -m | awk '{ if ($1 == "x86_64") print "amd64"; else if ($1 == "aarch64" || $1 == "arm64") print "arm64"; else print "unknown" }') \
    && export urlHugoRelease="https://api.github.com/repos/gohugoio/hugo/releases/latest" \
    && export urlHugoVersion=$(curl -s ${urlHugoRelease} | awk -F '["v,]' '/tag_name/{print $5}') \
    && export urlHugoBase="https://github.com/gohugoio/hugo/releases/download" \
    && export urlHugoBin="hugo_extended_${urlHugoVersion}_Linux-${arch}.deb" \
    && export urlHugo="${urlHugoBase}/v${urlHugoVersion}/${urlHugoBin}" \
    && curl --output /tmp/${urlHugoBin} -L ${urlHugo} \
    && sudo dpkg -i /tmp/${urlHugoBin} \
    && sudo npm install -g postcss-cli \
    && which hugo \
    && hugo version \
    && rm -rf /tmp/* \
    && true

USER vscode
