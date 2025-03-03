# air-show

_Creating a video game for the Aviation Nation 25 Airshow_

## Lines of Effort

### Game 1

_A simple Flappy Bird clone with an asset swap_

Easiest game to make for the most amount of fun
Unfortunately, it doesn't have a lot to instrument

#### Things to Instrument

- How many points the player scored
- How many times they jumped
- Shortest and longest times between jumps

#### To Do

- Add sound
- Asset swap for original sprites
- Come up with more/better things to instrument
- Come up with schema for PostgreSQL
- Set up HTTP requests to send data to endpoint

---

### Game 2

_A bullet-hell/Galaga style game_

Much more interesting to play and instrument
Requires markedly more effort

#### Things to Instrument

- Score
- Path players take (Contingent on Superset visualization capabilities)
- Heat-map of where on-screen players die
- Deadliest/least deadly enemy

#### To Do

- Create game
- Play test
- Come up with more/better things to instrument
- Come up with schema for PostgreSQL
- Set up HTTP requests to send data to endpoint

---

### Game 3

_An RTS, maybe_

Will only work on this one if we have enough time

---

### Backend

_A way of collecting logs from the games and visualizing them_

A server that serves the game files, acts as an endpoint for logs, and serves visualizations

#### Images

- Cloudflared
  - Using tunnels allows container to act as web server without needing port forwarding
- Caddy
  - Acts as a file server for the game files and as a reverse proxy for the endpoint and visualizations
- Custom Golang Endpoint
  - Listens for in-bound HTTP post requests and stores them in the Superset PostgreSQL database
- Superset
  - Creates visualizations based on data in PostgreSQL server and serves them
- PgAdmin
  - Lets us interact graphically with the PostgreSQL server in Superset

#### To Do

- Figure out Cloudflared
  - Need to learn about deployment with API keys
- Figure out Caddy
  - Mr. Stone may be able to help with this
- Make Golang endpoint image
  - Could use Buildah
- Figure out Superset

---

### Set Up

_Getting the resources and setting up the booth at the air show_

#### Resources

- Tent
- Power
- Internet connection on flight line
- 1 computer & TV for visualization
- Some number of subject set-ups
  - 1 computer
  - 1 monitor
  - 1 keyboard and mouse
  - 1 chair
  - Some table space
- 1 TV to mirror a subject set up (optional)
- QR code banner to play on mobile (optional)

#### To Do

- Get all that stuff
- Practice setting it up somewhere
