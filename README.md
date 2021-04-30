# DBZ Sinatra challenge

## Get started

1. clone the repo
2. launch a Sinatra server: run the command below and open a web browser at [http://localhost:4567](http://localhost:4567):
```bash
ruby app.rb
```

## Deploy it on Heroku

1. Install Heroku CLI:
```bash
brew tap heroku/brew && brew install heroku # for Mac
```
```bash
curl https://cli-assets.heroku.com/install-ubuntu.sh | sh # for Win/Linux
```
2. Create an Heroku app
```bash
heroku create your-app-name-here
```

2. Push your code to Heroku
```bash
git push heroku master
```

## Steps of the challenges

### Step 1: List the characters and add one
1. Build the Character Model
Build an `#initialize` it with a `name`, a `species` to start with.
Add two class methods `::load_csv` and `::save_csv(character)` to handle the `data.csv`.
Build a class method `::all` retrieving all the characters from `data.csv` 
Build a `#save` instance method saving its instance (self!) in the csv (use `::load_csv` and `::save_csv`).
2. Show a list of all the character's name and species on `index.erb`
3. Create a form to create a new character

### Step 2: Fetch data from the DBZ API
1. Get and display the DBZ characters name list from `https://dragonball-wiki-api.herokuapp.com/`
2. Create a character from of the name selected in the previous list.
3. Add more attributes to character: image (and display it!), gender, series...

### Step 3: Finish the Character CRUD
1. Build the code to delete a character
2. Build the code to edit a character

### Step 4: Add the planets
1. Create the class with the suitable methods
2. Add a planet to the characters
3. Fetch the characters planets from the API

### Step 5: Go beyond
The sky the limit, you can:
Make a fight game with the characters, build a guess-who game, create a card collection game, ...
