//
//  ViewController.swift
//  Blackjack
//
//  Created by Amogh Kalyan on 1/20/21.
//

import UIKit

class ViewController: UIViewController {

    //score labels
    @IBOutlet weak var dealerScoreLabel: UILabel!
    @IBOutlet weak var PlayerScoreLabel: UILabel!
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var dealerSumLabel: UILabel!
    
    //dealer cards
    @IBOutlet weak var dealerCard1: UIImageView!
    @IBOutlet weak var dealerCard2: UIImageView!
    @IBOutlet weak var dealerCard3: UIImageView!
    @IBOutlet weak var dealerCard4: UIImageView!
    @IBOutlet weak var dealerCard5: UIImageView!
    
    //Outlet for buttons
    @IBOutlet weak var dealButton: UIButton!
    @IBOutlet weak var standButton: UIButton!
    
    //player cards
    @IBOutlet weak var playerCard1: UIImageView!
    @IBOutlet weak var playerCard2: UIImageView!
    @IBOutlet weak var playerCard3: UIImageView!
    @IBOutlet weak var playerCard4: UIImageView!
    @IBOutlet weak var playerCard5: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        dealerSumLabel.text = ""
        
        /*-------------------------------Player Setup-------------------------------*/
        /*-------------------------------PLAYERCARD2-------------------------------*/
        
        
        var movecard:String;
        var randomed = Int.random(in:0..<a.count); //generates a number from 0 to the number of elements in the array (simulates a deck of cards)
        movecard = a[randomed]; //takes a random card from the array
        playerCard1.image = UIImage(named: movecard)
        
        
        //if card is an Ace of any suit
        if movecard == "AH" || movecard == "AC" || movecard == "AD" || movecard == "AS"
        {
            if check == true
            {
                playerSum += 1
            }
            
            else if playerSum + 11 <= 21
            {
                playerSum += 11
                check = true
            }
            
            else if playerSum + 1 <= 21{
                playerSum += 1
                check = true
            }
        }
        
        //if card is a Jack, Queen, or King, add 10
        if movecard == "KH" || movecard == "KC" || movecard == "KD" || movecard == "KS" || movecard == "JH" || movecard == "JC" || movecard == "JD" || movecard == "JS" || movecard == "QH" || movecard == "QC" || movecard == "QD" || movecard == "QS"
        {
            playerSum += 10
        }
        
        else{
            //take the last letter off the string movecard and add the number value to playerSum
            playerSum += (String(movecard.dropLast()) as NSString).integerValue
        }
        
        combine.append(movecard) //keeps track of cards that are removed
        a.remove(at:randomed); //removes the card that was added from the previous deck
        /*-------------------------------END PLAYERCARD2-------------------------------*/
        
        
        
        
        /*-------------------------------PLAYERCARD2-------------------------------*/
        randomed = Int.random(in:0..<a.count); //generates a number from 0 to the number of elements in the array
        movecard = a[randomed]; //takes a random card from the array
        playerCard2.image = UIImage(named: movecard)
        
        //if card is an Ace of any suit
        if movecard == "AH" || movecard == "AC" || movecard == "AD" || movecard == "AS"
        {
            if check == true
            {
                playerSum += 1
            }
            
            else if playerSum + 11 <= 21
            {
                playerSum += 11
                check = true
            }
            
            else if playerSum + 1 <= 21{
                playerSum += 1
                check = true
            }
        }
        
        //if card is a Jack, Queen, or King, add 10
        if movecard == "KH" || movecard == "KC" || movecard == "KD" || movecard == "KS" || movecard == "JH" || movecard == "JC" || movecard == "JD" || movecard == "JS" || movecard == "QH" || movecard == "QC" || movecard == "QD" || movecard == "QS"
        {
            playerSum += 10
        }
        
        else{
            //take the last letter off the string movecard and add the number value to playerSum
            playerSum += (String(movecard.dropLast()) as NSString).integerValue
        }
        
        combine.append(movecard) //keeps track of cards that are removed
        a.remove(at:randomed); //removes the card that was added from the previous deck
        /*-------------------------------END PLAYERCARD2-------------------------------*/
        
        outputLabel.text = String(playerSum)
        
        /*-------------------------------End Player Setup-------------------------------*/
        
        
        
        /*-------------------------------Dealer Setup-------------------------------*/
        /*-------------------------------DEALERCARD2-------------------------------*/
        
        dealerCard2.image = UIImage(named: "blue_back")
        randomed = Int.random(in:0..<a.count); //generates a number from 0 to the number of elements in the array
        movecard = a[randomed] //takes a random card from the array
        backup2 = movecard
        
        //if card is an Ace of any suit
        if movecard == "AH" || movecard == "AC" || movecard == "AD" || movecard == "AS"
        {
            if check == true
            {
                dealerSum += 1
            }
            
            else if dealerSum + 11 <= 21
            {
                dealerSum += 11
                check = true
            }
            
            else if dealerSum + 1 <= 21{
                dealerSum += 1
                check = true
            }
        }
        
        //if card is a Jack, Queen, or King, add 10
        if movecard == "KH" || movecard == "KC" || movecard == "KD" || movecard == "KS" || movecard == "JH" || movecard == "JC" || movecard == "JD" || movecard == "JS" || movecard == "QH" || movecard == "QC" || movecard == "QD" || movecard == "QS"
        {
            dealerSum += 10
        }
        
        else{
            //take the last letter off the string movecard and add the number value to dealerSum
            dealerSum += (String(movecard.dropLast()) as NSString).integerValue
        }
        
        combine.append(movecard) //keeps track of cards that are removed
        a.remove(at:randomed); //removes the card that was added from the previous deck
        
        /*-------------------------------END DEALERCARD2-------------------------------*/

        /*-------------------------------DEALERCARD4-------------------------------*/

        randomed = Int.random(in:0..<a.count); //generates a number from 0 to the number of elements in the array
        movecard = a[randomed]; //takes a random card from the array
        dealerCard4.image = UIImage(named: movecard)
        
        //if card is an Ace of any suit
        if movecard == "AH" || movecard == "AC" || movecard == "AD" || movecard == "AS"
        {
            if check == true
            {
                dealerSum += 1
            }
            
            else if dealerSum + 11 <= 21
            {
                dealerSum += 11
                check = true
            }
            
            else if dealerSum + 1 <= 21{
                dealerSum += 1
                check = true
            }
        }
        
        //if card is a Jack, Queen, or King, add 10
        if movecard == "KH" || movecard == "KC" || movecard == "KD" || movecard == "KS" || movecard == "JH" || movecard == "JC" || movecard == "JD" || movecard == "JS" || movecard == "QH" || movecard == "QC" || movecard == "QD" || movecard == "QS"
        {
            dealerSum += 10
        }
        
        else{
            //take the last letter off the string movecard and add the number value to dealerSum
            dealerSum += (String(movecard.dropLast()) as NSString).integerValue
        }
        
        combine.append(movecard) //keeps track of cards that are removed
        a.remove(at:randomed) //removes the card that was added from the previous deck
        /*-------------------------------END DEALERCARD4-------------------------------*/

        //dealerScoreLabel.text = String(dealerSum)
        
        /*-------------------------------End Dealer Setup-------------------------------*/
    }

    
    @IBAction func dealButton(_ sender: Any) {
        
        holder += 1
        
        if holder == 3 {
        /*---------------------------Player Move-----------------------------*/
            var movecard:String;
            var randomed = Int.random(in:0..<a.count); //generates a number from 0 to the number of elements in the array
            movecard = a[randomed]; //takes a random card from the array
            playerCard3.image = UIImage(named: movecard)
            
            if movecard == "AH" || movecard == "AC" || movecard == "AD" || movecard == "AS"
            {
                if check == true
                {
                    playerSum += 1
                }
                
                else if playerSum + 11 <= 21
                {
                    playerSum += 11
                    check = true
                }
                
                else if playerSum + 1 <= 21{
                    playerSum += 1
                    check = true
                }
            }
            
            if movecard == "KH" || movecard == "KC" || movecard == "KD" || movecard == "KS" || movecard == "JH" || movecard == "JC" || movecard == "JD" || movecard == "JS" || movecard == "QH" || movecard == "QC" || movecard == "QD" || movecard == "QS"
            {
                playerSum += 10
            }
            else{
                playerSum += (String(movecard.dropLast()) as NSString).integerValue
            }
            
            outputLabel.text = String(playerSum)
            
            if (playerSum > 21)
            {
                dealerCard2.image = UIImage(named: backup2)
                dealerCard3.image = UIImage(named: backup3)
                dealerCard1.image = UIImage(named: backup1)
                dealerCard5.image = UIImage(named: backup5)
                
                dealerSumLabel.text = String(dealerSum)
                
                if(dealerSum <= 21)
                {
                    dealerWins += 1
                    dealerScoreLabel.text = String(dealerWins)
                }
                
                dealButton.isEnabled = false
                standButton.isEnabled = false
                outputLabel.font = UIFont(name: outputLabel.font.fontName, size: 15)
                outputLabel.text = "Bust! Click new game to play again! Your score was:       " + String(playerSum)
            }
            
            combine.append(movecard) //keeps track of cards that are removed
            a.remove(at:randomed); //removes the card that was added from the previous deck
            /*---------------------------End Player Move-----------------------------*/
            
            
            /*---------------------------Dealer Move-----------------------------*/
            
            //dealer knows whether player has less than 21 or more
            if dealerSum < playerSum && dealerSum <= 21 && playerSum <= 21 && dealerSum + 4 <= 21
            {
                //dealercard3 is now in use
                handswitch = 1
                
                dealerCard3.image = UIImage(named: "blue_back")
                randomed = Int.random(in:0..<a.count); //generates a number from 0 to the number of elements in the array
                movecard = a[randomed]; //takes a random card from the array
                backup3 = movecard
                
                //if card is an Ace of any suit
                if movecard == "AH" || movecard == "AC" || movecard == "AD" || movecard == "AS"
                {
                    if check == true
                    {
                        dealerSum += 1
                    }
                    
                    else if dealerSum + 11 <= 21
                    {
                        dealerSum += 11
                        check = true
                    }
                    
                    else if dealerSum + 1 <= 21{
                        dealerSum += 1
                        check = true
                    }
                }
                
                //if card is a Jack, Queen, or King, add 10
                if movecard == "KH" || movecard == "KC" || movecard == "KD" || movecard == "KS" || movecard == "JH" || movecard == "JC" || movecard == "JD" || movecard == "JS" || movecard == "QH" || movecard == "QC" || movecard == "QD" || movecard == "QS"
                {
                    dealerSum += 10
                }
                
                else{
                    //take the last letter off the string movecard and add the number value to dealerSum
                    dealerSum += (String(movecard.dropLast()) as NSString).integerValue
                }
                combine.append(movecard) //keeps track of cards that are removed
                a.remove(at:randomed); //removes the card that was added from the previous deck
            }
            
            /*---------------------------End Dealer Move-----------------------------*/
            //dealerScoreLabel.text = String(dealerSum)
        }
        
        if holder == 4
        {
            var movecard:String;
            var randomed = Int.random(in:0..<a.count); //generates a number from 0 to the number of elements in the array
            movecard = a[randomed]; //takes a random card from the array
            playerCard4.image = UIImage(named: movecard)
            
            if movecard == "AH" || movecard == "AC" || movecard == "AD" || movecard == "AS"
            {
                if check == true
                {
                    playerSum += 1
                }
                
                else if playerSum + 11 <= 21
                {
                    playerSum += 11
                    check = true
                }
                
                else if playerSum + 1 <= 21{
                    playerSum += 1
                    check = true
                }
            }
            if movecard == "KH" || movecard == "KC" || movecard == "KD" || movecard == "KS" || movecard == "JH" || movecard == "JC" || movecard == "JD" || movecard == "JS" || movecard == "QH" || movecard == "QC" || movecard == "QD" || movecard == "QS"
            {
                playerSum += 10
            }
            else{
                playerSum += (String(movecard.dropLast()) as NSString).integerValue
            }
            
            outputLabel.text = String(playerSum)
            
            if (playerSum > 21)
            {
                dealerCard2.image = UIImage(named: backup2)
                dealerCard3.image = UIImage(named: backup3)
                dealerCard1.image = UIImage(named: backup1)
                dealerCard5.image = UIImage(named: backup5)
                
                dealerSumLabel.text = String(dealerSum)
                
                if(dealerSum <= 21)
                {
                    dealerWins += 1
                    dealerScoreLabel.text = String(dealerWins)
                }
                
                dealButton.isEnabled = false
                standButton.isEnabled = false
                outputLabel.font = UIFont(name: outputLabel.font.fontName, size: 15)
                outputLabel.text = "Bust! Click new game to play again! Your score was:       " + String(playerSum)
            }
            
            combine.append(movecard) //keeps track of cards that are removed
            a.remove(at:randomed); //removes the card that was added from the previous deck
            
            /*---------------------------Dealer Move-----------------------------*/
            
            if dealerSum < playerSum && dealerSum <= 21 && playerSum <= 21 && dealerSum + 4 <= 21
            {
                if (handswitch == 0)
                {
                    dealerCard3.image = UIImage(named: "blue_back")
                }
                else{
                    dealerCard1.image = UIImage(named: "blue_back")
                    handswitch = 2
                }
                
                randomed = Int.random(in:0..<a.count); //generates a number from 0 to the number of elements in the array
                movecard = a[randomed]; //takes a random card from the array
                backup1 = movecard
                
                //if card is an Ace of any suit
                if movecard == "AH" || movecard == "AC" || movecard == "AD" || movecard == "AS"
                {
                    if check == true
                    {
                        dealerSum += 1
                    }
                    
                    else if dealerSum + 11 <= 21
                    {
                        dealerSum += 11
                        check = true
                    }
                    
                    else if dealerSum + 1 <= 21{
                        dealerSum += 1
                        check = true
                    }
                }
                
                //if card is a Jack, Queen, or King, add 10
                if movecard == "KH" || movecard == "KC" || movecard == "KD" || movecard == "KS" || movecard == "JH" || movecard == "JC" || movecard == "JD" || movecard == "JS" || movecard == "QH" || movecard == "QC" || movecard == "QD" || movecard == "QS"
                {
                    dealerSum += 10
                }
                
                else{
                    //take the last letter off the string movecard and add the number value to dealerSum
                    dealerSum += (String(movecard.dropLast()) as NSString).integerValue
                }
                
                combine.append(movecard) //keeps track of cards that are removed
                a.remove(at:randomed); //removes the card that was added from the previous deck
            }
            
            /*---------------------------End Dealer Move-----------------------------*/
            //dealerScoreLabel.text = String(dealerSum)

        }
        
        if holder == 5
        {
            dealerCard5.image = UIImage(named: "blue_back")

            var movecard:String;
            var randomed = Int.random(in:0..<a.count); //generates a number from 0 to the number of elements in the array
            movecard = a[randomed]; //takes a random card from the array
            playerCard5.image = UIImage(named: movecard)
            
            if movecard == "AH" || movecard == "AC" || movecard == "AD" || movecard == "AS"
            {
                if check == true
                {
                    playerSum += 1
                }
                
                else if playerSum + 11 <= 21
                {
                    playerSum += 11
                    check = true
                }
                
                else if playerSum + 1 <= 21{
                    playerSum += 1
                    check = true
                }
            }
            if movecard == "KH" || movecard == "KC" || movecard == "KD" || movecard == "KS" || movecard == "JH" || movecard == "JC" || movecard == "JD" || movecard == "JS" || movecard == "QH" || movecard == "QC" || movecard == "QD" || movecard == "QS"
            {
                playerSum += 10
            }
            else{
                playerSum += (String(movecard.dropLast()) as NSString).integerValue
            }
            
            outputLabel.text = String(playerSum)
            
            if (playerSum > 21)
            {
                dealerCard2.image = UIImage(named: backup2)
                dealerCard3.image = UIImage(named: backup3)
                dealerCard1.image = UIImage(named: backup1)
                dealerCard5.image = UIImage(named: backup5)
                
                dealerSumLabel.text = String(dealerSum)
                
                if(dealerSum <= 21)
                {
                    dealerWins += 1
                    dealerScoreLabel.text = String(dealerWins)
                }
                
                dealButton.isEnabled = false
                standButton.isEnabled = false
                outputLabel.font = UIFont(name: outputLabel.font.fontName, size: 15)
                outputLabel.text = "Bust! Click new game to play again! Your score was:       " + String(playerSum)
            }
            
            combine.append(movecard) //keeps track of cards that are removed
            a.remove(at:randomed); //removes the card that was added from the previous deck
            
            /*---------------------------Dealer Move-----------------------------*/
            
            if dealerSum < playerSum && dealerSum <= 21 && playerSum <= 21 && dealerSum + 4 <= 21
            {
                if (handswitch == 0)
                {
                    dealerCard3.image = UIImage(named: "blue_back")
                }
                else if (handswitch == 1){
                    dealerCard1.image = UIImage(named: "blue_back")
                }
                else if (handswitch == 2){
                    dealerCard5.image = UIImage(named: "blue_back")
                }
                
                randomed = Int.random(in:0..<a.count); //generates a number from 0 to the number of elements in the array
                movecard = a[randomed]; //takes a random card from the array
                backup5 = movecard
                
                //if card is an Ace of any suit
                if movecard == "AH" || movecard == "AC" || movecard == "AD" || movecard == "AS"
                {
                    if check == true
                    {
                        dealerSum += 1
                    }
                    
                    else if dealerSum + 11 <= 21
                    {
                        dealerSum += 11
                        check = true
                    }
                    
                    else if dealerSum + 1 <= 21{
                        dealerSum += 1
                        check = true
                    }
                }
                
                //if card is a Jack, Queen, or King, add 10
                if movecard == "KH" || movecard == "KC" || movecard == "KD" || movecard == "KS" || movecard == "JH" || movecard == "JC" || movecard == "JD" || movecard == "JS" || movecard == "QH" || movecard == "QC" || movecard == "QD" || movecard == "QS"
                {
                    dealerSum += 10
                }
                
                else{
                    //take the last letter off the string movecard and add the number value to dealerSum
                    dealerSum += (String(movecard.dropLast()) as NSString).integerValue
                }
                combine.append(movecard) //keeps track of cards that are removed
                a.remove(at:randomed); //removes the card that was added from the previous deck
            }
            
            /*---------------------------End Dealer Move-----------------------------*/
            //dealerScoreLabel.text = String(dealerSum)

        }
    }
    
    
    @IBAction func standButton(_ sender: Any)
    {
        dealButton.isEnabled = false
        standButton.isEnabled = false
        
        dealerCard2.image = UIImage(named: backup2)
        dealerCard3.image = UIImage(named: backup3)
        dealerCard1.image = UIImage(named: backup1)
        dealerCard5.image = UIImage(named: backup5)
        
        dealerSumLabel.text = String(dealerSum)
        
        //if player has 21 or less
        if (playerSum <= 21)
        {
            //if dealer has over 21
            if (dealerSum > 21)
            {
                //player wins one game
                playerWins += 1
                PlayerScoreLabel.text = String(playerWins)
                outputLabel.font = UIFont(name: outputLabel.font.fontName, size: 15)
                outputLabel.text = String("You Win! Click New Game to play again.")
            }
            
            //if dealer has 21 or less
            else if (dealerSum <= 21)
            {
                //and player has more than dealer
                if (playerSum > dealerSum)
                {
                    //player wins one game
                    playerWins += 1
                    PlayerScoreLabel.text = String(playerWins)
                    outputLabel.font = UIFont(name: outputLabel.font.fontName, size: 15)
                    outputLabel.text = String("You Win! Click New Game to play again.")
                }
                
                //else, dealer has more than player
                if (dealerSum > playerSum)
                {
                    //dealer wins one game
                    dealerWins += 1
                    dealerScoreLabel.text = String(dealerWins)
                    
                    outputLabel.font = UIFont(name: outputLabel.font.fontName, size: 15)
                    outputLabel.text = String("You Lose! Click New Game to play again.")
                }
            }
        }
        
        if (playerSum == dealerSum)
        {
            //no one wins
            outputLabel.font = UIFont(name: outputLabel.font.fontName, size: 15)
            outputLabel.text = String("Draw! Click New Game to play again.")
        }
        
        //if player has over 21
        if (playerSum > 21){
            //dealer also has over 21
            if(dealerSum > 21)
            {
                //no one wins, output Bust!
                outputLabel.font = UIFont(name: outputLabel.font.fontName, size: 15)
                outputLabel.text = String("Bust! Click New Game to play again.")
            }
            
            //else, dealer has less than 21
            if(dealerSum <= 21)
            {
                //dealer wins one game
                dealerWins += 1
                dealerScoreLabel.text = String(dealerWins)
                
                outputLabel.font = UIFont(name: outputLabel.font.fontName, size: 15)
                outputLabel.text = String("You Lose! Click New Game to play again.")
            }
            
        }
    }
    
    
    @IBAction func newGameButton(_ sender: Any) {
        
        //adds back cards into original deck (array) a
        a += combine
        
        //resets all global variables
        playerSum = 0
        dealerSum = 0
        holder = 2
        handswitch = 0
        check = false
        
        backup3 = ""
        backup1 = ""
        backup5 = ""
        
        //resets all images
        playerCard3.image = nil
        playerCard4.image = nil
        playerCard5.image = nil

        dealerCard1.image = nil
        dealerCard3.image = nil
        dealerCard5.image = nil
        
        //resets font size for outputLabel
        outputLabel.font = UIFont(name: outputLabel.font.fontName, size: 20)
        
        //resets dealerSumLabel
        dealerSumLabel.text = ""
        
        dealButton.isEnabled = true
        standButton.isEnabled = true
        
        /*-------------------------------Player Setup-------------------------------*/
        /*-------------------------------PLAYERCARD2-------------------------------*/
        
        
        var movecard:String;
        var randomed = Int.random(in:0..<a.count); //generates a number from 0 to the number of elements in the array (simulates a deck of cards)
        movecard = a[randomed]; //takes a random card from the array
        playerCard1.image = UIImage(named: movecard)
        
        
        //if card is an Ace of any suit
        if movecard == "AH" || movecard == "AC" || movecard == "AD" || movecard == "AS"
        {
            if check == true
            {
                playerSum += 1
            }
            
            else if playerSum + 11 <= 21
            {
                playerSum += 11
                check = true
            }
            
            else if playerSum + 1 <= 21
            {
                playerSum += 1
                check = true
            }
        }
        
        //if card is a Jack, Queen, or King, add 10
        if movecard == "KH" || movecard == "KC" || movecard == "KD" || movecard == "KS" || movecard == "JH" || movecard == "JC" || movecard == "JD" || movecard == "JS" || movecard == "QH" || movecard == "QC" || movecard == "QD" || movecard == "QS"
        {
            playerSum += 10
        }
        
        else{
            //take the last letter off the string movecard and add the number value to playerSum
            playerSum += (String(movecard.dropLast()) as NSString).integerValue
        }
        
        combine.append(movecard) //keeps track of cards that are removed
        a.remove(at:randomed); //removes the card that was added from the previous deck
        /*-------------------------------END PLAYERCARD2-------------------------------*/
        
        
        
        
        /*-------------------------------PLAYERCARD2-------------------------------*/
        randomed = Int.random(in:0..<a.count); //generates a number from 0 to the number of elements in the array
        movecard = a[randomed]; //takes a random card from the array
        playerCard2.image = UIImage(named: movecard)
        
        //if card is an Ace of any suit
        if movecard == "AH" || movecard == "AC" || movecard == "AD" || movecard == "AS"
        {
            if check == true
            {
                playerSum += 1
            }
            
            else if playerSum + 11 <= 21
            {
                playerSum += 11
                check = true
            }
            
            else if playerSum + 1 <= 21{
                playerSum += 1
                check = true
            }
        }
        
        //if card is a Jack, Queen, or King, add 10
        if movecard == "KH" || movecard == "KC" || movecard == "KD" || movecard == "KS" || movecard == "JH" || movecard == "JC" || movecard == "JD" || movecard == "JS" || movecard == "QH" || movecard == "QC" || movecard == "QD" || movecard == "QS"
        {
            playerSum += 10
        }
        
        else{
            //take the last letter off the string movecard and add the number value to playerSum
            playerSum += (String(movecard.dropLast()) as NSString).integerValue
        }
        
        combine.append(movecard) //keeps track of cards that are removed
        a.remove(at:randomed); //removes the card that was added from the previous deck
        /*-------------------------------END PLAYERCARD2-------------------------------*/
        
        outputLabel.text = String(playerSum)
        
        /*-------------------------------End Player Setup-------------------------------*/
        
        
        
        /*-------------------------------Dealer Setup-------------------------------*/
        /*-------------------------------DEALERCARD2-------------------------------*/
        
        dealerCard2.image = UIImage(named: "blue_back")
        randomed = Int.random(in:0..<a.count); //generates a number from 0 to the number of elements in the array
        movecard = a[randomed] //takes a random card from the array
        backup2 = movecard
        
        //if card is an Ace of any suit
        if movecard == "AH" || movecard == "AC" || movecard == "AD" || movecard == "AS"
        {
            if check == true
            {
                dealerSum += 1
            }
            
            else if dealerSum + 11 <= 21
            {
                dealerSum += 11
                check = true
            }
            
            else if dealerSum + 1 <= 21{
                dealerSum += 1
                check = true
            }
        }
        
        //if card is a Jack, Queen, or King, add 10
        if movecard == "KH" || movecard == "KC" || movecard == "KD" || movecard == "KS" || movecard == "JH" || movecard == "JC" || movecard == "JD" || movecard == "JS" || movecard == "QH" || movecard == "QC" || movecard == "QD" || movecard == "QS"
        {
            dealerSum += 10
        }
        
        else{
            //take the last letter off the string movecard and add the number value to dealerSum
            dealerSum += (String(movecard.dropLast()) as NSString).integerValue
        }
        
        combine.append(movecard) //keeps track of cards that are removed
        a.remove(at:randomed); //removes the card that was added from the previous deck
        
        /*-------------------------------END DEALERCARD2-------------------------------*/

        /*-------------------------------DEALERCARD4-------------------------------*/

        randomed = Int.random(in:0..<a.count); //generates a number from 0 to the number of elements in the array
        movecard = a[randomed]; //takes a random card from the array
        dealerCard4.image = UIImage(named: movecard)
        
        //if card is an Ace of any suit
        if movecard == "AH" || movecard == "AC" || movecard == "AD" || movecard == "AS"
        {
            if check == true
            {
                dealerSum += 1
            }
            
            else if dealerSum + 11 <= 21
            {
                dealerSum += 11
                check = true
            }
            
            else if dealerSum + 1 <= 21{
                dealerSum += 1
                check = true
            }
        }
        
        //if card is a Jack, Queen, or King, add 10
        if movecard == "KH" || movecard == "KC" || movecard == "KD" || movecard == "KS" || movecard == "JH" || movecard == "JC" || movecard == "JD" || movecard == "JS" || movecard == "QH" || movecard == "QC" || movecard == "QD" || movecard == "QS"
        {
            dealerSum += 10
        }
        
        else{
            //take the last letter off the string movecard and add the number value to dealerSum
            dealerSum += (String(movecard.dropLast()) as NSString).integerValue
        }
        
        combine.append(movecard) //keeps track of cards that are removed
        a.remove(at:randomed) //removes the card that was added from the previous deck
        /*-------------------------------END DEALERCARD4-------------------------------*/

        //dealerScoreLabel.text = String(dealerSum)
        
        /*-------------------------------End Dealer Setup-------------------------------*/
    }
    
}

