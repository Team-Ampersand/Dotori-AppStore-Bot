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

# copy the source to the docker image
RUN addgroup --system --gid 1000 worker
RUN adduser --system --uid 1000 --ingroup worker --disabled-password worker
USER worker:worker
COPY . /workspace

RUN addgroup --system --gid 1000 worker
RUN adduser --system --uid 1000 --ingroup worker --disabled-password worker
USER worker:worker

RUN GITHUB_TOKEN=${GITHUB_TOKEN} GUILD_ID=${GUILD_ID} DISCORD_TOKEN=${DISCORD_TOKEN} swift build -c release --static-swift-stdlib

#------- package -------
# copy executables
FROM centos

COPY --from=builder /workspace/.build/release/DotoriAppStoreBot /

# set the entry point (DotoriAppStoreBot)
CMD ["DotoriAppStoreBot"]
