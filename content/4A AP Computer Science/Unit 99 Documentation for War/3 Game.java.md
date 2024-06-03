Game.java includes the main method, and supporting helper methods, required to run the actual game. 

divideDeck() allows for the existing deck to be divided ( and shuffled ) into each of two existing playerDeck arrayLists. 

We suggest you use this syntax when divinding the deck:

```java
player1 = new ArrayList<Card>();
player2 = new ArrayList<Card>();
divideDeck();
```

divideDeck DOES require for a player1 and player2 variable to already exist and be an arraylist of Cards, and does modify their contents to give each of them a shuffled half of the deck

doTurn() is our logic for doing a single turn of war. It does the comparisons of cards between each player's deck, and the distribution of cards to the winners. It also prints out who won each turn, and who had what cards. 
It is not recommended that you use doTurn outside of our implementation, but if you were to, it would be done this way:

```java
while ( player1.size() > 0  && player2.size() > 0) {
    doTurn();
}

```

Then, in order to figure out who won, you can do:
```java
if ( player1.size() > player2.size() ) {
    System.out.println( "Player 1 wins!");
}
if ( player2.size() > player1.size() ) {
    System.out.println( "Player 2 wins!");
}

```

Our main method, which is what runs when you start the program, does effectively that. It just shuffles the deck between the 2 players, and uses that while loop to loop the turns, and then notifies the user which player won. 

