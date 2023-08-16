# Use an official Swift runtime as the base image
FROM swift:5.8-focal as builder
  
ARG GITHUB_TOKEN
ARG GUILD_ID
ARG DISCORD_TOKEN

ENV GITHUB_TOKEN=${GITHUB_TOKEN}
ENV GUILD_ID=${GUILD_ID}
ENV DISCORD_TOKEN=${DISCORD_TOKEN}

# set up the workspace
RUN mkdir /workspace
WORKDIR /workspace

COPY . /workspace

ARG GID=1000
ARG UID=1000

USER root:root

# RUN chown -R worker:worker /workspace
RUN GITHUB_TOKEN=${GITHUB_TOKEN} GUILD_ID=${GUILD_ID} DISCORD_TOKEN=${DISCORD_TOKEN} swift build -c release --static-swift-stdlib

#------- package -------
FROM centos

RUN pwd
COPY --from=builder /workspace/.build/release/DotoriAppStoreBot /

# set the entry point (DotoriAppStoreBot)
CMD ["DotoriAppStoreBot"]
