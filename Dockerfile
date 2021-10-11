FROM ruby:2.6.5
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /what_to_bring_backend
WORKDIR /what_to_bring_backend
COPY Gemfile /what_to_bring_backend/Gemfile
COPY Gemfile.lock /what_to_bring_backend/Gemfile.lock
RUN bundle install
COPY . /what_to_bring_backend

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 2000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]