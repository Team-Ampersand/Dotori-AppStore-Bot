# Use an official Swift runtime as the base image
FROM swift:latest

# Set the working directory in the container
WORKDIR /app

ARG GITHUB_TOKEN
ARG GUILD_ID
ARG DISCORD_TOKEN

# Copy the entire contents of the Swift package to the container
COPY . /app

# Build the Swift package
RUN swift build

# Specify the default command to run when the container starts
CMD [ \
  "GITHUB_TOKEN=${GITHUB_TOKEN}}", \
  "GUILD_ID=${GUILD_ID}", \
  "DISCORD_TOKEN=${DISCORD_TOKEN}", \
  "swift", \
  "run" \
]
