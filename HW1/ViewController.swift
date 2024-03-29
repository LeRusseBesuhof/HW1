import UIKit

class ViewController: UIViewController {

    lazy var name = makeLabel(withText: "Имя:", textColor: .black, place: CGRect(x: 40, y: 80, width: 60, height: 60))
    lazy var surname = makeLabel(withText: "Фамилия:", textColor: .black, place: CGRect(x: 40, y: 120, width: 100, height: 60))
    lazy var flow = makeLabel(withText: "Номер потока:", textColor: .black, place: CGRect(x: 40, y: 160, width: 200, height: 60))
    
    lazy var nameData = makeLabel(withText: "Name", textColor: .red, place: CGRect(x: 94, y: 80, width: 80, height: 60))
    lazy var surnameData = makeLabel(withText: "Surname", textColor: .red, place: CGRect(x: 142, y: 130, width: 120, height: 40))
    lazy var flowData = makeLabel(withText: "iOS 6", textColor: .red, place: CGRect(x: 189, y: 170, width: 100, height: 40))
    
    lazy var addButton = makeButton(withTitle: "Добавить данные", titleColor: .white, backgroundColor: .black, place: CGRect(x: 20, y: 650, width: 350, height: 60))
    
    lazy var addBtnAction = UIAction { _ in
        self.nameData.text = "Павел"
        self.surnameData.text = "Градов"
        self.flowData.text = "iOS 7"
    }
    
    lazy var resetButton = makeButton(withTitle: "Очистить данные", titleColor: .blue, place: CGRect(x: 20, y: 720, width: 350, height: 60))
    lazy var resetBtnAction = UIAction { _ in
        self.nameData.text = "Name"
        self.surnameData.text = "Surname"
        self.flowData.text = "iOS 6"
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        view.addSubview(name)
        view.addSubview(surname)
        view.addSubview(flow)
        
        view.addSubview(nameData)
        view.addSubview(surnameData)
        view.addSubview(flowData)
        
        addButton.addAction(addBtnAction, for: .touchUpInside)
        view.addSubview(addButton)
        
        resetButton.addAction(resetBtnAction, for: .touchUpInside)
        view.addSubview(resetButton)
    }
    
    func makeLabel(withText text: String? = "", textColor: UIColor, place: CGRect) -> UILabel {
        let label = UILabel(frame: place)
        label.text = text
        label.textColor = textColor
        label.font = UIFont.boldSystemFont(ofSize: 20.0)
        return label
    }
    
    func makeButton(withTitle title: String? = "", titleColor: UIColor? = .black, backgroundColor: UIColor? = .white, place: CGRect) -> UIButton {
        let button = UIButton(frame: place)
        button.setTitle(title, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.backgroundColor = backgroundColor
        button.layer.cornerRadius = 20.0
        return button
    }
}

