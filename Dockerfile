# Use an official Swift runtime as the base image
FROM swift:5.8-focal as build

ARG GITHUB_TOKEN
ARG GUILD_ID
ARG DISCORD_TOKEN

ENV GITHUB_TOKEN=${GITHUB_TOKEN}
ENV GUILD_ID=${GUILD_ID}
ENV DISCORD_TOKEN=${DISCORD_TOKEN}

# # set up the workspace
# RUN mkdir /workspace
# WORKDIR /workspace
#
# # copy the source to the docker image
# COPY . /workspace
#
# RUN swift build -c release --static-swift-stdlib
#
# #------- package -------
# FROM centos
# # copy executables
# COPY --from=builder /workspace/.build/release/DotoriAppStoreBot /

# set the entry point (DotoriAppStoreBot)
CMD ["DotoriAppStoreBot"]
