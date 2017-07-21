# Splice!
Splice is a single-player pattern matching game, based on the popular card game Set&trade;. I built this full-stack application in 4 days using Ember.js and Ruby on Rails.


# Splice! File Routes

### Authentication

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password/:id` | `users#changepw`  |
| DELETE | `/sign-out/:id`        | `users#signout`   |


### Users

| Verb | URI Pattern   | Controller#Action |
|------|---------------|-------------------|
| GET  | `/users`      | `users#index`     |
| GET  | `/users/:id`  | `users#show`      |

### Cards

| Verb | URI Pattern   | Controller#Action |
|------|---------------|-------------------|
| GET  | `/cards`      | `cards#index`     |
| GET  | `/cards/:id`  | `cards#show`      |

### Games

| Verb   | URI Pattern     | Controller#Action |
|--------|-----------------|-------------------|
| GET    | `/games`        | `games#index`     |
| GET    | `/games/:id`    | `games#show`      |
| POST   | `/games`        | `games#create`    |
| PATCH  | `/games/:id`    | `games#update`    |
| DELETE | `/games/:id`    | `games#destroy`   |


### Deployed Front-End App:
https://artpylon.github.io/splice_frontend/

### Deployed API:
https://splice-api.herokuapp.com/

### Front-End Repo:
https://github.com/artpylon/splice_frontend

### Backend Repo:
https://github.com/artpylon/splice_backend

### Wireframes:
https://drive.google.com/file/d/0BxtpRPyddhwRTGtzdFFuMHFUVzA/view?usp=sharing

### ERD:
https://drive.google.com/file/d/0BxtpRPyddhwRdjVPSk4wSmt6M3M/view?usp=sharing

### Trello (includes column for user stories--far left):
https://trello.com/b/vaCW3iqc/wdi-4-splice

## Technologies Used:
This app was built using the Ember.js frontend framework and Rails for the API. Other technologies used include:

Bootstrap, Handlebars, PostgresSql, HTML5/CSS3

## Approach/Process
I wanted to build this app because I love card games that involve interesting logic. I started the project by planning how I would represent each card and validate that that a valid set was selected. This was achieved by having each card be an object with the 4 properties of each card.

Then, I turned my attention to the Ember.js frontend frame work and mapped out how I would structure the app. I diagrammed routes and components and organized the properties and methods that each should hold. Next, I created an ERD and considered what data would be needed for the app and relationships between models. I also made simple wireframes to organize how I wanted to layout the UI.

I also created a set of detailed user stories for each of the major use cases to be covered in the app and prioritized these against my schedule for the project.

I used a kanban-style trello board to manage my work. This was incredibly helpful and kept me focused on each step. I also used the board to log bugs found and features I'd like to add later on.

## Major Hurdles

The one major hurdle for this API was seeding the card data. The CSV file I first used returned an error that there was an empty line somewhere in the document (though, it was not shown when opened in an editor). I spent time adding methods to seeds.rb to ensure that the line was stripped out before it was seeded, but to no avail. Eventually, I solved the problem by simply recreating the file and saving it again.

## Future Iterations
In the next iteration, I'd like to add game and lifetime stats for the current user, improve the UX on mobile devices, and add the capability for a simultaneous multiplayer game.
