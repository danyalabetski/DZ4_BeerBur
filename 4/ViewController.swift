//
//  ViewController.swift
//  4
//
//  Created by Даниэл Лабецкий on 17.06.22.
//

/* Проект «Пивной бар». Вы должны создать:
 Класс Beer - у него будут свойства:
 1) Имя
 2) Цена
 3) Cтрана
 4) Oстаток объема.
 Реализовать продажу пива через менеджер-синглтон.
 Реализовать проверку выручки в конце дня.
 * Реализовать функционал:
 1) начало новой смены - обнуление выручки
 2) проверка остатков.
 */

import UIKit

class ViewController: UIViewController {
    
    var income: Double = 0
    var incomeTwo: Double = 0
    
    var beerBotleOne = Beer(name: "Corona Extra", price: 10, county: "Mexica", remainingVolume: 10000)
    
    let beerLabel = UILabel()
    let nameLabel = UILabel()
    let priceLabel = UILabel()
    let countryLabel = UILabel()
    let remainingVolumeLabel = UILabel()
    var revenueVerificationLabel = UILabel()
    
    let checkingTheBalance: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(checkingBalanceAlert), for: .touchUpInside)
        return button
    }()
    
    let resumeButton: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(reloadData), for: .touchUpInside)
        return button
    }()
    
    let checkingRevenueAtTheEndOfTheDayButton: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(alert), for: .touchUpInside)
        return button
    }()
    
    let buttonBuyBeer: UIButton = {
        let button = UIButton()
        //      button.addTarget(self, action: #selector(alert), for: .touchUpInside)
        button.addTarget(self, action: #selector(cellBeer), for: .touchUpInside)
        return button
    }()
    
    //MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: UILabel
        revenueVerificationLabel.createLabel(labelPositionX: 20, labelPositionY: 370, labelWidth: 100, labelHeight: 100, labelTilte: "Income\(income)$")
        beerLabel.createLabel(labelPositionX: 165, labelPositionY: 0, labelWidth: 150, labelHeight: 150, labelTilte: "Beer bar")
        nameLabel.createLabel(labelPositionX: 40, labelPositionY: 100, labelWidth: 100, labelHeight: 100, labelTilte: "\(beerBotleOne.name)")
        priceLabel.createLabel(labelPositionX: 40, labelPositionY: 160, labelWidth: 100, labelHeight: 100, labelTilte: "\(beerBotleOne.price)$")
        countryLabel.createLabel(labelPositionX: 40, labelPositionY: 220, labelWidth: 100, labelHeight: 100, labelTilte: "\(beerBotleOne.country)")
        remainingVolumeLabel.createLabel(labelPositionX: 40, labelPositionY: 280, labelWidth: 100, labelHeight: 100, labelTilte: "\(beerBotleOne.remainingVolume)")
        
        //MARK: UIButton
        checkingTheBalance.createButton(buttonPositionX: 150, buttonPositionY: 750, buttonWidth: 100, buttonHeight: 50, buttonTitle: "Balance")
        resumeButton.createButton(buttonPositionX: 260, buttonPositionY: 750, buttonWidth: 120, buttonHeight: 50, buttonTitle: "Reload Data")
        checkingRevenueAtTheEndOfTheDayButton.createButton(buttonPositionX: 20, buttonPositionY: 750, buttonWidth: 120, buttonHeight: 50, buttonTitle: "Checkout")
        buttonBuyBeer.createButton(buttonPositionX: 0, buttonPositionY: 370, buttonWidth: 100, buttonHeight: 60, buttonTitle: "Cell Beer")
        buttonBuyBeer.center = self.view.center
        
        view.addSubview(nameLabel)
        view.addSubview(priceLabel)
        view.addSubview(countryLabel)
        view.addSubview(remainingVolumeLabel)
        view.addSubview(beerLabel)
        view.addSubview(buttonBuyBeer)
        view.addSubview(revenueVerificationLabel)
        view.addSubview(checkingRevenueAtTheEndOfTheDayButton)
        view.addSubview(resumeButton)
        view.addSubview(checkingTheBalance)
    }
    
    @objc func alert() {
        let alertController = UIAlertController(title: "Revenue at the end of the day", message: "Income \(incomeTwo)$", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(alertAction)
        present(alertController, animated: true, completion: nil)
    }
    
    @objc func checkingBalanceAlert() {
        let alertController = UIAlertController(title: "CheckingTheBalance", message: "Balance beer \(beerBotleOne.remainingVolume)l", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(alertAction)
        present(alertController, animated: true, completion: nil)
    }
    
    @objc func cellBeer() {
        
        income += CellBeer.Beer.cellBeer(income: 10)
        revenueVerificationLabel.text =  "\(income)"
        
        DispatchQueue.main.async {
            self.incomeTwo += CellBeer.Beer.cellBeer(income: 10)
        }
        
        beerBotleOne.remainingVolume -= CellBeer.Beer.cellBeer(income: 10)
        remainingVolumeLabel.text = "\(beerBotleOne.remainingVolume)"
        
    }
    
    @objc func reloadData() {
        
            if revenueVerificationLabel.text == "\(income = 0)" {
                resumeButton.isEnabled = false
            } else {
                resumeButton.isEnabled = true
            }
    
//        revenueVerificationLabel.text = "\(income = 0)"
//        revenueVerificationLabel.text = "\(0)"
        
    }
    
}

