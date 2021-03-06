# Timothee Chalamet API

#### _Rails API for Timothee Chalamet_

#### Created By: Morgan Waites

## Technologies Used

* _Ruby_
* _Gems_
* _Bundler_
* _Postgres_
* _SQL_
* _Rails_
* _ActiveRecord_
* _Postman_
* _Heroku_

## Description

This API uses a database with tables for quotes and pictures of famous beautiful actor Timothee Chalamet It has full CRUD functionality. All users can post, update, delete, and retrieve the endpoints of the API.

Hosted on Heroku at https://timothee-chalamet-api.herokuapp.com/. The front end to this app is built with React, the repo can be found [here](https://github.com/mellowmorgan/react-chalamet-frontend). And hosted [here](https://chalamet-api.netlify.app/) with Netlify.

## System Requirements

* Ruby v2.6.5 recommended
* Postgres 12.9  
* Postman (for testing API endpoints and creating new data in API)
_(Note: Ruby gem dependencies will be installed automatically by Bundler.)_

## Setup/Installation Requirements

* Clone the GitHub repository: https://github.com/mellowmorgan/timothee-chalamet-api.git 
* From the main project directory, enter `bundle install` in the terminal to populate gems.
* To create a database, type in your terminal: 
      `rake db:setup`
* Run `rails s -p 3001` to start server.
* Can use Postman to access endpoints, outlined below.

## Endpoints Quotes

|Usage | METHOD       | URL       | Params |
| :--------|:------------| :---------| :------|
|See all quotes | GET    | `localhost:3001/quotes` | |
|See a specific quote| GET    | `localhost:3001/quotes/:id` | |
|See a random quote | GET    | `localhost:3001/quotes/random` | |
|Add/create a quote | POST    | `localhost:3001/quotes` | content |
|Update a quote | PUT    | `localhost:3001/quotes/:id?content=QUOTE` | content |
|Delete a quote | DELETE    |`localhost:3001/quotes/:id`| |  

## Endpoints Photos

|Usage | METHOD       | URL       | Params |
| :--------|:------------| :---------| :------|
|See all photos | GET    | `localhost:3001/photos` | |
|See a specific photo| GET    | `localhost:3001/photos/:id` | |
|See a random photo | GET    | `localhost:3001/photos/random` | |
|Add/create a photo | POST    | `localhost:3001/photos` | file_path |
|Update a photo | PUT    | `localhost:3001/photos/:id?file_path=URL` | file_path |
|Delete a quote | DELETE    |`localhost:3001/photos/:id`| | 

## Known Bugs

* _None at this time._

## License

_[MIT](https://opensource.org/licenses/MIT)_
Copyright (c) 2022 Morgan Waites