# Math Game

## Description

Create a 2-Player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

## Extract nouns for classes

- Player
- Game
- Turn
- Question

## Roles

### Player

App will create 2 of these, one for each player to track the state of how many lives each player has left. This instance variable (`lives`) will be exposed to the public. There will be a "lose_life" method that will reduce the `lives` instance variable by 1 each time they incorrectly answer a question.

### Game

Will contain an array of `@players` to cycle through when it is a new turn. It will also have a variable called `@current_player` and have a method called `other_player` which will return whichever player is not passed in.

`Game` will also have a `lose_life` method which will take in a player, delegate to the given player's `lose_life` method but then check if the game should be over. If not, it will simply return `null`; if so, end the game with the stat line.

`Game` will also have a method called status that will return a stat line including how many lives each player has.

Finally, `Game` will have a `next_turn` function which will determine whose turn it is, and then generate a new `Turn` for them.

### Turn

This class will encapsulate the logic for performing an entire turn. It will be created with two parameters: the current player, and the game. This initialization will create a new `Question` and store the question and correct answer as instance variables.

When the `next` method is called, it will display the question, prompt the player for input, and then compare the entered response against the known correct answer.

If the answer is correct, it will display a success message; if not, it will display a failure message and call the `Game`'s `lose_life` method to reduce the number of lives of the player and check if the game is over.

If the game can continue, it will call the `Game`'s `status` function to display how many lives each player has left, and then begin a new turn by calling `Game`'s `new_turn` method.

### Question

This class will not contain any state but will contain a single method `generate` which generates a question and answer using 2 separate random numbers between 1 and 20, and return them in the form of an array, to be destructured by a `Turn`'s constructor.
