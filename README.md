# ShortyLink
ShortyLink is a URL shortening service that allows users to convert long and complicated URLs into short and easy-to-remember links. The service is built on Ruby on Rails framework, and makes use of several other gems and technologies to provide an optimal user experience.

## Features
- User authentication and authorization
- Short link generation for long URLs
- Short link redirection to the original URL
- Link tracking and statistics
- User dashboard to view link information
- API support for programmatic access to ShortyLink services

## Technologies

- Ruby on Rails
- PostgreSQL
- Redis
- Puma
- Propshaft
- Turbo-Rails
- Stimulus-Rails
- TailwindCSS-Rails
- JBuilder
- DelayedJobActiveRecord
- CounterCulture
- Nokogiri
- Open-URI
- RQRCode
- TZInfo-Data
- Bootsnap

## Requirements

- Ruby version 3.2.0 or higher
- Rails version 7.0.4 or higher
- PostgreSQL version 1.1 or higher
- Redis version 4.0 or higher

## Getting Started
To get started with ShortyLink, follow these steps:

- Clone the repository git clone https://github.com/edugonch/ShortyLink.git
- Navigate to the project directory cd ShortyLink
- Install required dependencies using bundler bundle install
- Install required dependencies for the front end using npm install
- Setup the database using rails db:setup, rails db:migrate
- Start the application using rails s

## License
ShortyLink is released under the MIT License.
