# Latest version of Erlang-based Elixir installation: https://hub.docker.com/_/elixir/
FROM elixir:latest

# Create and set home directory
WORKDIR /opt/neebu_experience

# Configure required environment
ARG neo_user
ARG neo_password
ARG mix_cookie
ARG neo_port

ENV NEO_USER=$neo_user
ENV NEO_PASSWORD=$neo_password
ENV NEO_PORT=$neo_port
ENV MIX_COOKIE=$mix_cookie
ENV MIX_ENV prod

# Install hex (Elixir package manager)
RUN mix local.hex --force

# Install rebar (Erlang build tool)
RUN mix local.rebar --force

# Copy all dependencies files
COPY mix.* ./

# Install all production dependencies
RUN mix deps.get --only prod

# Compile all dependencies
RUN mix deps.compile

# Copy all application files
COPY . .

# Compile the entire project
RUN mix deps.compile

CMD mix run --no-halt