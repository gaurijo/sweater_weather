
## Sweater Weather
![languages](https://img.shields.io/github/languages/top/gaurijo/sweater_weather?color=green)
![PRs](https://img.shields.io/github/issues-pr-closed/gaurijo/sweater_weather)
![rspec](https://img.shields.io/gem/v/rspec?color=green&label=rspec)
![simplecov](https://img.shields.io/gem/v/simplecov?color=yellow&label=simplecov) <!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/contributors-1-purple.svg?style=flat)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->

## Project Description
Build a backend application to plan road trips that will allow users to see the current weather as well as the forecasted weather at the destination.

Your team is working in a service-oriented architecture. The front-end will communicate with your back-end through an API. Your job is to expose that API that satisfies the front-end team’s requirements.

## Learning Goals
- Expose an API that aggregates data from multiple external APIs
- Expose an API that requires an authentication token
- Expose an API for CRUD functionality
- Determine completion criteria based on the needs of other developers
- Test both API consumption and exposure, making use of at least one mocking tool (VCR, Webmock, etc).

## Gems 
- faraday 
- figaro 
- jsonapi-serializer 
- bcrypt
- rspec-rails 
- factory_bot_rails 
- faker 
- pry 
- shoulda-matchers 
- webmock 
- vcr 
- simplecov



## How to Install & Run Tests 
- `Ruby version 2.7.4` and `Rails 5.2.8.1`
- fork and clone this repo to your machine 
- run `$ rails db:{drop, create, migrate, seed}`
- run `$ bundle install `
- run `$ bundle exec figaro install` 
- add a [OpenWeather API key](https://openweathermap.org/api) and [MapQuest API key](https://developer.mapquest.com/) to your `application.yml `
- run `$ bundle exec rspec` to run test suite 
- run `$ open coverage/index.html` to view SimpleCov coverage (99%)
