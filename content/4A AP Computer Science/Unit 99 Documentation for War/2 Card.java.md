Card.java is a file in which we define each of the cards that we want in the deck, and allow for a couple basic methods to interact with the cards.

You can use Card.java to create a card like this

```java
Card myCard = new Card(1, "King");
```

The only values you can pass to that constructor are an int and a string, and only in that order.

Then, you can get the associated values from that card, by using

```java
myCard.getValue(); // 1
myCard.getName(); // "King"
```

The makedeck() method is a static method which will return a shuffled array with all cards in a standard deck within it. 

in order to use makedeck() it is encouraged to use this syntax:

```java
private static ArrayList<Card> deck;
deck = Card.makeDeck();
```

this will give you a fully shuffled deck, in an ArrayList, and you can fetch any cards with deck.get(). 


