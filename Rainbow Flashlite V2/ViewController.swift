//
//  ViewController.swift
//  Rainbow Flashlite V2
//
//  Created by Serega on 26.03.2022.
//

import UIKit




class ViewController: UIViewController {
    
//    Убираем status bar с main view controller
    override var prefersStatusBarHidden: Bool {
        return true
    }

//    Создаем переменную, которой будем присваивать значения цветов радуги
    var colorOfScreen: Int = 0
    
//    Создаем функцию, которая будет изменять цвет нашего background в зависимости от цифры в переменной colorOfScreen к о ж з г с ф
    func colorChanged(){
        
        switch colorOfScreen{
        case 0 :
            view.backgroundColor = .red
        case 1:
            view.backgroundColor = .orange
        case 2:
            view.backgroundColor = .yellow
        case 3:
            view.backgroundColor = .green
        case 4:
            view.backgroundColor = .cyan
        case 5:
            view.backgroundColor = .blue
        default:
            view.backgroundColor = .purple
        }
        colorOfScreen += 1
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //    Вызываем метод colorChanged
            colorChanged()
    }

    
    @IBAction func buttonPressed() {
        print(#line, #function)
        colorChanged()
    }
    
    

}

