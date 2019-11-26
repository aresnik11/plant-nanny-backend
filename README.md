# Plant Nanny

Plant Nanny is a plant app for users to keep track of their plants and add notes about them.

The backend repo is deployed via Heroku, and the frontend repo ([here](https://github.com/aresnik11/plant-nanny-frontend)) is deployed via Netlify. Visit the site at [https://plant-nanny.netlify.com](https://plant-nanny.netlify.com).

[![Netlify Status](https://api.netlify.com/api/v1/badges/40d963ad-14c3-4fa3-ac2b-f529a7ce90a4/deploy-status)](https://app.netlify.com/sites/plant-nanny/deploys)

![Plant Nanny](https://user-images.githubusercontent.com/8761638/69591015-5bb54d00-0fbf-11ea-8bc3-47d08e74aac8.png)

## Demo

You can watch a live demo of the app [here](#) or visit the site at [https://plant-nanny.netlify.com](https://plant-nanny.netlify.com).

## Technology Used

* React
* React Router
* Semantic UI
* Custom CSS
* JWT Authentication
* Ruby on Rails
* PostgreSQL database
* ActiveModel Serializer

The GitHub repo for the frontend can be found [here](https://github.com/aresnik11/plant-nanny-frontend).

## Features

Plant Nanny allows users to:

* Create an account
* Securely log in to an existing account
* Add a new plant
* Search through their plants
* Add a new note associated with a plant
* See notes associated with a specific plant
* See all of their notes
* Search through their notes
* Delete a plant
* Delete a note
* Securely log out

## How To Use

Visit the site at [https://plant-nanny.netlify.com](https://plant-nanny.netlify.com).

To test on your own machine:
1. Clone this repository
2. Switch to Ruby version `2.6.1`
3. Make sure `postgreSQL` is running on your computer, if not, download and run it
4. Create an `.env` file in the top level directory
5. In the `.env` file, create a constant variable `JWT_SECRET_KEY` and set it equal to whatever you want your secret key to be. Ex:
```
JWT_SECRET_KEY=test123
```
6. In terminal run
```
bundle install
rails db:migrate
rails s
```
7. Follow instructions [here](https://github.com/aresnik11/plant-nanny-frontend) to run the frontend
8. You will need to update `config/initializers/cors.rb` to accept origin requests from wherever your frontend will be hosted

## Enjoy!
