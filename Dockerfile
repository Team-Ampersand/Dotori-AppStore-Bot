# Use an official Swift runtime as the base image
FROM swift:5.8-focal as build

ARG UID=1000
ARG GID=1000

RUN groupadd -g "${GID}" python \
  && useradd --create-home --no-log-init -u "${UID}" -g "${GID}" python
  
ARG GITHUB_TOKEN
ARG GUILD_ID
ARG DISCORD_TOKEN

ENV GITHUB_TOKEN=${GITHUB_TOKEN}
ENV GUILD_ID=${GUILD_ID}
ENV DISCORD_TOKEN=${DISCORD_TOKEN}

# set up the workspace
RUN mkdir /workspace
WORKDIR /workspace

# copy the source to the docker image
COPY . /workspace

RUN GITHUB_TOKEN=${GITHUB_TOKEN} GUILD_ID=${GUILD_ID} DISCORD_TOKEN=${DISCORD_TOKEN} swift build -c release --static-swift-stdlib

#------- package -------
FROM centos
# copy executables
RUN ls -al /
COPY --from=builder /workspace/.build/release/DotoriAppStoreBot /

# set the entry point (DotoriAppStoreBot)
CMD ["DotoriAppStoreBot"]
