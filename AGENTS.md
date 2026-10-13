# Repository Guidelines

## Project Structure & Module Organization

The application lives in `ProjectLeadger/`, a Rails 8.1 project using Ruby 3.4.10 and SQLite. Run application commands from that directory.

- `app/`: controllers, models, jobs, mailers, helpers, ERB views, and assets; stylesheets live in `app/assets/stylesheets/`.
- `config/`: routes, environment settings, database configuration, and deployment settings.
- `db/`: seeds and database migrations as features are added.
- `test/`: Rails tests and shared setup in `test_helper.rb`.
- `public/`: static files and error pages.
- `storage/`: local SQLite databases and uploaded files.
- `bin/`: development, testing, linting, and security commands.

## Build, Test, and Development Commands

Start with `cd ProjectLeadger` and use the Ruby version specified in `.ruby-version`.

- `bin/setup --skip-server`: install gems, prepare the database, and clear logs and temporary files.
- `bin/dev`: start the Rails development server.
- `bin/rails db:prepare`: create or migrate the database.
- `bin/rails assets:precompile`: compile assets for deployment.
- `bin/rails test`: run the Rails test suite.
- `bin/rails test:system`: run browser tests using Capybara and Selenium.
- `bin/rubocop`: check Ruby style using `rubocop-rails-omakase`.
- `bin/ci`: run the checks defined in `config/ci.rb`, including security scans, tests, and test-database seed replanting. System tests must be run separately.

## Coding Style & Naming Conventions

Use two-space indentation and follow `.rubocop.yml`. Use `snake_case` for files, methods, and variables; `CamelCase` for classes and modules. Match Rails naming conventions, such as `app/models/task.rb` defining `Task`. Keep controllers focused on request handling and place reusable domain behavior in models or dedicated classes.

## Testing Guidelines

Use Rails’ Minitest integration. Name tests `*_test.rb`, mirror application areas under `test/`, and keep fixtures in `test/fixtures/`. Add regression tests for fixes and cover new behavior. No numeric coverage threshold is configured. Run an individual file with `bin/rails test test/models/task_test.rb` once it exists.

## Commit & Pull Request Guidelines

The application repository has no commits yet, so no established message convention exists. Use concise, imperative subjects such as `Add task validation`. Keep changes focused. PRs should describe the problem, affected behavior, and validation commands; link relevant issues and include screenshots for visual changes.

## Security & Configuration

Keep credential keys and secrets out of commits. Use Rails encrypted credentials or environment variables. Review database targets before running reset or seed-replant commands.
