# Application Dashboard

The purpose of this application is to allow logged in users to add/remove various predefined application links to/from their dashboard.  Users can also sort their application links via drag and drop.

## Local Setup
These steps assume you already have Ruby and Ruby on Rails installed.

1. Clone this repo
1. cd in the repo's directory: `cd application-dashboard`
1. Create a `.env` file by copying `.env.example`: `cp .env.example .env`
1. Edit the new `.env` file and set `SEED_PASSWORD`, which will be used by all of the users created by the seeder
1. Install gems: `bundle install`
1. Create the database: `rails db:create`
1. Run the database migrations: `rails db:migrate`
1. Run the database seeder: `rails db:seed`
1. Start the server: two options
    1. If you're going to be doing development work:
        1. Install node dependencies: `yarn install`
        1. Start the server: `./bin/dev`
    1. If you won't be doing development work and don't need the build scripts, precompile the assets before starting the server:
        1. Precompile assets: `rails assets:precompile`
        1. Start the server: `rails s`
