# BlackJack

BlackJack is an iOS card game that is designed to simulate the real life version of the casino game "BlackJack", also known as "21". The objective of BlackJack is to get as close to 21 (using the numbers on the cards) as you can, without going over 21. All face cards (Jack, Queen, and King) have a value of 10, and the Ace card can either be used as a 1 or an 11, depending on the player. 

## Design

The player will go against the dealer, which has been desgined to know what the player has and when to start or stop dealing cards. The player is greeted with two cards to their hand, and two cards to the dealer. By pressing deal, the player is able to receive a card if they feel they are able to get closer to 21. The player has a total of 5 cards, and is able to see the total of these cards in the "Current Hand" label. 

Once the player is ready, they can hit the "Stand!" button to see who is the closest to 21. Player wins if dealer goes over 21, or if they are closer to 21. Dealer's total is also shown under their win label after each round is over.

If the player would like to play again, all they have to do is click the "New Game!" button, which resets all values and begins a new game, showing new hands for both player and dealer. If the player wants to reset all cards with addition to the player and dealer scores, they can click the "Reset!" button.




# Built With

XCode 12 Beta.

Coded with Swift.

Tested on iPhone 7 Plus.

# Authors

Amogh Kalyan - *Design and Code*
