import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let text = UILabel()
        var nameData = UILabel(); var surnameData = UILabel(); var flowData = UILabel()
        let defaultData = ("Name", "Surname", "iOS 6");
        let myData = ("Павел", "Градов", "iOS 7")
        
        let addButton = UIButton()
        lazy var addBtnAction = UIAction { _ in (nameData.text, surnameData.text, flowData.text) = myData }
        
        let resetButton = UIButton()
        lazy var resetBtnAction = UIAction { _ in (nameData.text, surnameData.text, flowData.text) = defaultData }
        
        text.frame = CGRect(x: 40, y: 80, width: 200, height: 100)
        text.numberOfLines = 3
        text.text = "Имя: \nФамилия: \nНомер потока: "
        text.font = UIFont.boldSystemFont(ofSize: 20.0)
        
        // как внутри одного текста настроить пространство между строками?
        view.addSubview(text)
        
        nameData.frame = CGRect(x: 94, y: 77, width: 80, height: 60)
        nameData.textColor = .red
        nameData.font = UIFont.boldSystemFont(ofSize: 20.0)
        
        surnameData.frame = CGRect(x: 142, y: 111, width: 120, height: 40)
        surnameData.textColor = .red
        surnameData.font = UIFont.boldSystemFont(ofSize: 20.0)
        
        flowData.frame = CGRect(x: 189, y: 134, width: 120, height: 40)
        flowData.textColor = .red
        flowData.font = UIFont.boldSystemFont(ofSize: 20.0)
        
        (nameData.text, surnameData.text, flowData.text) = defaultData
        
        view.addSubview(nameData)
        view.addSubview(surnameData)
        view.addSubview(flowData)
        
        addButton.frame = CGRect(x: 20, y: 650, width: 350, height: 60)
        addButton.setTitle("Добавить данные", for: .normal)
        addButton.backgroundColor = .black
        addButton.layer.cornerRadius = 20
        
        addButton.addAction(addBtnAction, for: .touchUpInside)
        
        // ошибка: Argument of '#selector' does not refer to an '@objc' method, property, or initializer
        //addButton.addTarget(self, action: #selector(setMyData(nameData, surnameData, flowData)), for: .touchUpInside)
        view.addSubview(addButton)
        
        resetButton.frame = CGRect(x: 20, y: 720, width: 350, height: 60)
        resetButton.setTitle("Очистить данные", for: .normal)
        resetButton.setTitleColor(.blue, for: .normal)
        
        resetButton.addAction(resetBtnAction, for: .touchUpInside)
        
        view.addSubview(resetButton)
    }
}

