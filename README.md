# Weather app Rails
Rails 5 Application

Getting Started
---------------

### Install gems and node modules
```zsh
bundle install
yarn install --check-files
```

### Setup DB(Not needed for just api calls)
```zsh
./bin/rails db:create
./bin/rails db:schema:load
```

#### Load data from dev server

You must be connected to the VPN for this step. See [here](https://welcome.atlassian.net/wiki/spaces/ENGINEERIN/pages/128712709/Tools+Utilities+prerequisites#VPN-Client) for VPN setup.


Running the server
------------------
```
./bin/rails s -p 3000
```

Running the console
------------------
```
./bin/rails c
```

Running the Rubocop for lint
------------------
```
rubocop -A
```

Once server is running here are some sample api calls
------------------
Current weather:
```
http://localhost:3000/api/current_weather?lon=-76.5074&lat=38.3004
```

Air Quality:
```
http://localhost:3000/api/current_air_quality?lon=-76.5074&lat=38.3004
```
