//
//  ViewController.swift
//  Counter
//
//  Created by Максим on 03.11.2026.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Counter: UILabel!
    @IBOutlet weak var MainButton: UIButton!
    
    @IBOutlet weak var blueMinus: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var redPlus: UIButton!
    
    @IBOutlet weak var historyText: UITextView!
    
    private var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        Counter.text = "Значение счётчика: \(count)"
        redPlus.tintColor = .systemRed
        historyText.text = "История изменений:"
        // Do any additional setup after loading the view.
    }
    private func addToHistory(_ message: String) {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
        let date = formatter.string(from: Date())
        historyText.text += "\n[\(date)]: \(message)"
    }
    @IBAction func buttonDidTap(_ sender: Any) {
        count += 1
        addToHistory("значение изменено на +1")
        Counter.text = "Значение счётчика: \(count)"
    }
    @IBAction func resetDidTap(_ sender: Any) {
        count = 0
        addToHistory("значение сброшено")
        Counter.text = "Значение счётчика: \(count)"
    }
    @IBAction func redPlusDidTap(_ sender: Any) {
        count += 1
        addToHistory("значение изменено на +1")
        Counter.text = "Значение счётчика: \(count)"
    }
    @IBAction func blueMinusDidTap(_ sender: Any) {
        if count > 0 {
            count -= 1
            addToHistory("значение изменено на -1")
            Counter.text = "Значение счётчика: \(count)"
        } else {
            addToHistory("попытка уменьшить значение счётчика ниже 0")
        }
    }
    

    
    
}

