//
//  ViewController.swift
//  TicTacToe
//
//  Created by Emily on 1/29/18.
//  Copyright © 2018 Emily Rainer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let computer = 0
    let human = 1
    var whosTurn = 1
    var move = -1
    var block = -1
    var playerChoice = 0
    
    enum GamePiece: Int {case HUMAN_PIECE; case BOT_PIECE; case EMPTY_PIECE}
    enum State: Int {case PLAYER_WINS; case BOT_WINS; case NOT_OVER; case TIE}
    var board: [GamePiece] = [.EMPTY_PIECE, .EMPTY_PIECE, .EMPTY_PIECE, .EMPTY_PIECE, .EMPTY_PIECE, .EMPTY_PIECE, .EMPTY_PIECE, .EMPTY_PIECE, .EMPTY_PIECE]
    
    var gameState: State = .NOT_OVER
    
    @IBOutlet weak var whosTurnLabel: UILabel!
    
    @IBOutlet weak var OneOutlet: UIButton!
    @IBOutlet weak var TwoOutlet: UIButton!
    @IBOutlet weak var ThreeOutlet: UIButton!
    @IBOutlet weak var FourOutlet: UIButton!
    @IBOutlet weak var FiveOutlet: UIButton!
    @IBOutlet weak var SixOutlet: UIButton!
    @IBOutlet weak var SevenOutlet: UIButton!
    @IBOutlet weak var EightOutlet: UIButton!
    @IBOutlet weak var NineOutlet: UIButton!
    
    @IBAction func One(_ sender: Any) {
        playerChoice = 0
        if(board[playerChoice] == .EMPTY_PIECE){
            OneOutlet.setTitle("👹", for: .normal)
            board[playerChoice] = .HUMAN_PIECE
            gameState = checkWin()
            whosTurn = 0
        }else{
            whosTurnLabel.text = "That spot is already taken!"
            playerChoice = -1
        }
        playTheGame(whosTurn: whosTurn)
    }
    
    @IBAction func Two(_ sender: Any) {
        playerChoice = 1
        if(board[playerChoice] == .EMPTY_PIECE){
            TwoOutlet.setTitle("👹", for: .normal)
            board[playerChoice] = .HUMAN_PIECE
            gameState = checkWin()
            whosTurn = 0
        }else{
            whosTurnLabel.text = "That spot is already taken!"
            playerChoice = -1
        }
        playTheGame(whosTurn: whosTurn)
    }
    
    @IBAction func Three(_ sender: Any) {
        playerChoice = 2
        if(board[playerChoice] == .EMPTY_PIECE){
            ThreeOutlet.setTitle("👹", for: .normal)
            board[playerChoice] = .HUMAN_PIECE
            gameState = checkWin()
            whosTurn = 0
        }else{
            whosTurnLabel.text = "That spot is already taken!"
            playerChoice = -1
        }
        playTheGame(whosTurn: whosTurn)
    }
    
    @IBAction func Four(_ sender: Any) {
        playerChoice = 3
        if(board[playerChoice] == .EMPTY_PIECE){
            FourOutlet.setTitle("👹", for: .normal)
            board[playerChoice] = .HUMAN_PIECE
            gameState = checkWin()
            whosTurn = 0
        }else{
            whosTurnLabel.text = "That spot is already taken!"
            playerChoice = -1
        }
        playTheGame(whosTurn: whosTurn)
    }
    
    @IBAction func Five(_ sender: Any) {
        playerChoice = 4
        if(board[playerChoice] == .EMPTY_PIECE){
            FiveOutlet.setTitle("👹", for: .normal)
            board[playerChoice] = .HUMAN_PIECE
            gameState = checkWin()
            whosTurn = 0
        }else{
            whosTurnLabel.text = "That spot is already taken!"
            playerChoice = -1
        }
        playTheGame(whosTurn: whosTurn)
    }
    
    @IBAction func Six(_ sender: Any) {
        playerChoice = 5
        if(board[playerChoice] == .EMPTY_PIECE){
            SixOutlet.setTitle("👹", for: .normal)
            board[playerChoice] = .HUMAN_PIECE
            gameState = checkWin()
            whosTurn = 0
        }else{
            whosTurnLabel.text = "That spot is already taken!"
            playerChoice = -1
        }
        playTheGame(whosTurn: whosTurn)
    }
    
    @IBAction func Seven(_ sender: Any) {
        playerChoice = 6
        if(board[playerChoice] == .EMPTY_PIECE){
            SevenOutlet.setTitle("👹", for: .normal)
            board[playerChoice] = .HUMAN_PIECE
            gameState = checkWin()
            whosTurn = 0
        }else{
            whosTurnLabel.text = "That spot is already taken!"
            playerChoice = -1
        }
         playTheGame(whosTurn: whosTurn)
    }
    
    @IBAction func Eight(_ sender: Any) {
        playerChoice = 7
        if(board[playerChoice] == .EMPTY_PIECE){
            EightOutlet.setTitle("👹", for: .normal)
            board[playerChoice] = .HUMAN_PIECE
            gameState = checkWin()
            whosTurn = 0
        }else{
            whosTurnLabel.text = "That spot is already taken!"
            playerChoice = -1
        }
        playTheGame(whosTurn: whosTurn)
    }
    
    @IBAction func Nine(_ sender: Any) {
        playerChoice = 8
        if(board[playerChoice] == .EMPTY_PIECE){
            NineOutlet.setTitle("👹", for: .normal)
            board[playerChoice] = .HUMAN_PIECE
            gameState = checkWin()
            whosTurn = 0
        }else{
            whosTurnLabel.text = "That spot is already taken!"
            playerChoice = -1
        }
        playTheGame(whosTurn: whosTurn)
    }
    
    @IBOutlet weak var playAgain: UIButton!
    @IBAction func playAgainBtn(_ sender: Any) {
        playAgain.isHidden = true
        playAgain.isEnabled = false
        OneOutlet.setTitle("", for: .normal)
        TwoOutlet.setTitle("", for: .normal)
        ThreeOutlet.setTitle("", for: .normal)
        FourOutlet.setTitle("", for: .normal)
        FiveOutlet.setTitle("", for: .normal)
        SixOutlet.setTitle("", for: .normal)
        SevenOutlet.setTitle("", for: .normal)
        EightOutlet.setTitle("", for: .normal)
        NineOutlet.setTitle("", for: .normal)
        for i in 0...8{
            board[i] = .EMPTY_PIECE
        }
        gameState = .NOT_OVER
        whosTurn = 1
        playTheGame(whosTurn: whosTurn)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        playAgain.isHidden = true
        playAgain.isEnabled = false
    }

    func playTheGame(whosTurn: Int){
        switch (gameState){
        case .NOT_OVER:
            switch(whosTurn){
                case 0:
                    whosTurnLabel.text = "It's the computers turn..."
                    OneOutlet.isEnabled = false
                    TwoOutlet.isEnabled = false
                    ThreeOutlet.isEnabled = false
                    FourOutlet.isEnabled = false
                    FiveOutlet.isEnabled = false
                    SixOutlet.isEnabled = false
                    SevenOutlet.isEnabled = false
                    EightOutlet.isEnabled = false
                    NineOutlet.isEnabled = false
                    computerChoice()
                    break
                case 1:
                    whosTurnLabel.text = "It's your turn!"
                    OneOutlet.isEnabled = true
                    TwoOutlet.isEnabled = true
                    ThreeOutlet.isEnabled = true
                    FourOutlet.isEnabled = true
                    FiveOutlet.isEnabled = true
                    SixOutlet.isEnabled = true
                    SevenOutlet.isEnabled = true
                    EightOutlet.isEnabled = true
                    NineOutlet.isEnabled = true
                    break
                default: break
            }
            break
        case .PLAYER_WINS:
            whosTurnLabel.text = "You win! 🎊"
            playAgain.isEnabled = true
            playAgain.isHidden = false
            break
        case .BOT_WINS:
            whosTurnLabel.text = "You lose! 💀"
            playAgain.isEnabled = true
            playAgain.isHidden = false
            break
        case .TIE:
            whosTurnLabel.text = "It's a tie! 💩"
            playAgain.isEnabled = true
            playAgain.isHidden = false
            break
        }
    }

    
    func computerChoice(){
        var compChoice = 0
        
        //Check for possible win
        move = isWinPossible(board: board, piece: .BOT_PIECE)
        if(move != -1 && board[move] == .EMPTY_PIECE){
            compChoice = move
        }
        
        //Check for blocking move
        block = isWinPossible(board: board, piece: .HUMAN_PIECE)
        if(block != -1){
            compChoice = block
        }
        
        //Get random move
        else{
            compChoice = Int(arc4random_uniform(UInt32(8)))
        }

        if(compChoice != -1 && board[compChoice] == .EMPTY_PIECE){
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                //Display computer move
            switch(compChoice){
            case 0:
                self.OneOutlet.setTitle("🤖", for: .normal);break
            case 1:
                self.TwoOutlet.setTitle("🤖", for: .normal); break
            case 2:
                self.ThreeOutlet.setTitle("🤖", for: .normal); break
            case 3:
                self.FourOutlet.setTitle("🤖", for: .normal); break
            case 4:
                self.FiveOutlet.setTitle("🤖", for: .normal); break
            case 5:
                self.SixOutlet.setTitle("🤖", for: .normal); break
            case 6:
                self.SevenOutlet.setTitle("🤖", for: .normal);break
            case 7:
                self.EightOutlet.setTitle("🤖", for: .normal);break
            case 8:
                self.NineOutlet.setTitle("🤖", for: .normal); break
            default:
                self.whosTurn = 0; break
                }
                //update board
                self.board[compChoice] = .BOT_PIECE
                self.gameState = self.checkWin()
                self.whosTurn = 1
                self.playTheGame(whosTurn: self.whosTurn)
            }
        }else{
            whosTurn = 0
            playTheGame(whosTurn: whosTurn)
        }
    }

    //Check for a possible winning move
    func isWinPossible(board: [GamePiece], piece: GamePiece) -> Int{
        
        if(board[0] == piece && board[1] == piece){ //[0,1,2]
            if(board[2] == .EMPTY_PIECE){
                move = 2
                return move
            }
        }
        else if(board[0] == piece && board[2] == piece){ //[0,1,2]
            if(board[1] == .EMPTY_PIECE){
                move = 1
                return move
            }
        }
        else if(board[1] == piece && board[2] == piece){ //[0,1,2]
            if(board[0] == .EMPTY_PIECE){
                move = 0
                return move
            }
        }
        else if(board[3] == piece && board[4] == piece){ //[3,4,5]
            if(board[5] == .EMPTY_PIECE){
                move = 5
                return move
            }
        }
        else if(board[4] == piece && board[5] == piece){ //[3,4,5]
            if(board[3] == .EMPTY_PIECE){
                move = 3
                return move
            }
        }
        else if(board[3] == piece && board[5] == piece){ //[3,4,5]
            if(board[4] == .EMPTY_PIECE){
                move = 4
                return move
            }
        }
        else if(board[6] == piece && board[7] == piece){ //[6,7,8]
            if(board[8] == .EMPTY_PIECE){
                move = 8
                return move
            }
        }
        else if(board[7] == piece && board[8] == piece){ //[6,7,8]
            if(board[6] == .EMPTY_PIECE){
                move = 6
                return move
            }
        }
        else if(board[6] == piece && board[8] == piece){ //[6,7,8]
            if(board[7] == .EMPTY_PIECE){
                move = 7
                return move
            }
        }
        else if(board[0] == piece && board[3] == piece){ //[0,3,6]
            if(board[6] == .EMPTY_PIECE){
                move = 6
                return move
            }
        }
        else if(board[3] == piece && board[6] == piece){ //[0,3,6]
            if(board[0] == .EMPTY_PIECE){
                move = 0
                return move
            }
        }
        else if(board[0] == piece && board[6] == piece){ //[0,3,6]
            if(board[3] == .EMPTY_PIECE){
                move = 3
                return move
            }
        }
        else if(board[1] == piece && board[4] == piece){ //[1,4,7]
            if(board[7] == .EMPTY_PIECE){
                move = 7
                return move
            }
        }
        else if(board[4] == piece && board[7] == piece){ //[1,4,7]
            if(board[1] == .EMPTY_PIECE){
                move = 1
                return move
            }
        }
        else if(board[1] == piece && board[7] == piece){ //[1,4,7]
            if(board[4] == .EMPTY_PIECE){
                move = 4
                return move
            }
        }
        else if(board[2] == piece && board[5] == piece){ //[2,5,8]
            if(board[8] == .EMPTY_PIECE){
                move = 8
                return move
            }
        }
        else if(board[5] == piece && board[8] == piece){ //[2,5,8]
            if(board[2] == .EMPTY_PIECE){
                move = 2
                return move
            }
        }
        else if(board[2] == piece && board[8] == piece){ //[2,5,8]
            if(board[5] == .EMPTY_PIECE){
                move = 5
                return move
            }
        }
        else if(board[2] == piece && board[4] == piece){ //[2,4,6]
            if(board[6] == .EMPTY_PIECE){
                move = 6
                return move
            }
        }
        else if(board[4] == piece && board[6] == piece){ //[2,4,6]
            if(board[2] == .EMPTY_PIECE){
                move = 2
                return move
            }
        }
        else if(board[2] == piece && board[6] == piece){ //[2,4,6]
            if(board[4] == .EMPTY_PIECE){
                move = 4
                return move
            }
        }
        else if(board[0] == piece && board[4] == piece){ //[0,4,8]
            if(board[8] == .EMPTY_PIECE){
                move = 8
                return move
            }
        }
        else if(board[4] == piece && board[8] == piece){ //[0,4,8]
            if(board[0] == .EMPTY_PIECE){
                move = 0
                return move
            }
        }
        else if(board[0] == piece && board[8] == piece){ //[0,4,8]
            if(board[4] == .EMPTY_PIECE){
                move = 4
                return move
            }
        }else{
            move = -1
        }
        return move
    }
    
    //Check to see if somone has won
    func checkWin() -> State{
        //HUMAN_WINS
        if(board[0] == .HUMAN_PIECE && board[1] == .HUMAN_PIECE && board[2] == .HUMAN_PIECE){ //[0,1,2]
            return .PLAYER_WINS
        }
        else if(board[3] == .HUMAN_PIECE && board[4] == .HUMAN_PIECE && board[5] == .HUMAN_PIECE){ //[3,4,5]
            return .PLAYER_WINS
        }
        else if(board[6] == .HUMAN_PIECE && board[7] == .HUMAN_PIECE && board[8] == .HUMAN_PIECE){ //[6,7,8]
            return .PLAYER_WINS
        }
        else if(board[0] == .HUMAN_PIECE && board[3] == .HUMAN_PIECE && board[6] == .HUMAN_PIECE){ //[0,3,6]
            return .PLAYER_WINS
        }
        else if(board[1] == .HUMAN_PIECE && board[4] == .HUMAN_PIECE && board[7] == .HUMAN_PIECE){ //[1,4,7]
            return .PLAYER_WINS
        }
        else if(board[2] == .HUMAN_PIECE && board[5] == .HUMAN_PIECE && board[8] == .HUMAN_PIECE){ //[2,5,8]
            return .PLAYER_WINS
        }
        else if(board[2] == .HUMAN_PIECE && board[4] == .HUMAN_PIECE && board[6] == .HUMAN_PIECE){ //[2,4,6]
            return .PLAYER_WINS
        }
        else if(board[0] == .HUMAN_PIECE && board[4] == .HUMAN_PIECE && board[8] == .HUMAN_PIECE){ //[0,4,8]
            return .PLAYER_WINS
        }
        
        //BOT_WINS
        if(board[0] == .BOT_PIECE && board[1] == .BOT_PIECE && board[2] == .BOT_PIECE){ //[0,1,2]
            return .BOT_WINS
        }
        else if(board[3] == .BOT_PIECE && board[4] == .BOT_PIECE && board[5] == .BOT_PIECE){ //[3,4,5]
            return .BOT_WINS
        }
        else if(board[6] == .BOT_PIECE && board[7] == .BOT_PIECE && board[8] == .BOT_PIECE){ //[6,7,8]
            return .BOT_WINS
        }
        else if(board[0] == .BOT_PIECE && board[3] == .BOT_PIECE && board[6] == .BOT_PIECE){ //[0,3,6]
            return .BOT_WINS
        }
        else if(board[1] == .BOT_PIECE && board[4] == .BOT_PIECE && board[7] == .BOT_PIECE){ //[1,4,7]
            return .BOT_WINS
        }
        else if(board[2] == .BOT_PIECE && board[5] == .BOT_PIECE && board[8] == .BOT_PIECE){ //[2,5,8]
            return .BOT_WINS
        }
        else if(board[2] == .BOT_PIECE && board[4] == .BOT_PIECE && board[6] == .BOT_PIECE){ //[2,4,6]
            return .BOT_WINS
        }
        else if(board[0] == .BOT_PIECE && board[4] == .BOT_PIECE && board[8] == .BOT_PIECE){ //[0,4,8]
            return .BOT_WINS
        }
        
        //Check to see if all the spots in board have been taken
        for i in 0...8{
            if(board[i] == .EMPTY_PIECE){
                return .NOT_OVER
            }
        }
        
        return .TIE
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

