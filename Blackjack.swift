//
//  Blackjack.swift
//  Blackjack
//
//  Created by Amogh Kalyan on 1/24/21.
//

import Foundation
import UIKit

//holder goes to each card checking the values of the numbers
var holder:Int = 2

//handswitch checks where dealer card should be placed
var handswitch = 0

//wins for player and dealer
var playerWins = 0
var dealerWins = 0

//totals for player and dealer
var playerSum = 0
var dealerSum = 0

//used for player, if Ace is 21 or not
var check:Bool = false

//used for showing dealer cards once stand button is clicked
var backup2:String = ""
var backup1:String = ""
var backup3:String = ""
var backup5:String = ""


//a is an array with all cards in a deck
var a:Array = ["2C","2D","2H","2S","3C","3D","3H","3S","4C","4D","4H","4S","5C","5D","5H","5S","6C","6D","6H","6S","7C","7D","7H","7S","8C","8D","8H","8S","9C","9D","9H","9S","10C","10D","10H","10S","AC","AD","AH","AS","JC","JD","JH","JS","KC","KD","KH","KS","QC","QD","QH","QS"];

//empty array used for combining and keeping old cards
var combine:Array = [String]()



