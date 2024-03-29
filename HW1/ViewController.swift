import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let name = makeLabel(withText: "Имя:", textColor: .black)
        name.frame = CGRect(x: 40, y: 80, width: 60, height: 60)
        view.addSubview(name)
        
        let surname = makeLabel(withText: "Фамилия:", textColor: .black)
        surname.frame = CGRect(x: 40, y: 120, width: 100, height: 60)
        view.addSubview(surname)
        
        let flow = makeLabel(withText: "Номер потока:", textColor: .black)
        flow.frame = CGRect(x: 40, y: 160, width: 200, height: 60)
        view.addSubview(flow)
        
        let nameData = makeLabel(withText: "Name", textColor: .red)
        nameData.frame = CGRect(x: 94, y: 80, width: 80, height: 60)
        view.addSubview(nameData)
        
        let surnameData = makeLabel(withText: "Surname", textColor: .red)
        surnameData.frame = CGRect(x: 142, y: 130, width: 120, height: 40)
        view.addSubview(surnameData)
        
        let flowData = makeLabel(withText: "iOS 6", textColor: .red)
        flowData.frame = CGRect(x: 189, y: 170, width: 100, height: 40)
        view.addSubview(flowData)
        
        let addButton = UIButton()
        lazy var addBtnAction = UIAction { _ in
            nameData.text = "Павел"
            surnameData.text = "Градов"
            flowData.text = "iOS 7"
        }
        
        let resetButton = UIButton()
        lazy var resetBtnAction = UIAction { _ in
            nameData.text = "Name"
            surnameData.text = "Surname"
            flowData.text = "iOS 6"
        }
        
        addButton.frame = CGRect(x: 20, y: 650, width: 350, height: 60)
        addButton.setTitle("Добавить данные", for: .normal)
        addButton.backgroundColor = .black
        addButton.layer.cornerRadius = 20
        
        addButton.addAction(addBtnAction, for: .touchUpInside)
        
        view.addSubview(addButton)
        
        resetButton.frame = CGRect(x: 20, y: 720, width: 350, height: 60)
        resetButton.setTitle("Очистить данные", for: .normal)
        resetButton.setTitleColor(.blue, for: .normal)
        
        resetButton.addAction(resetBtnAction, for: .touchUpInside)
        
        view.addSubview(resetButton)
    }
    
    func makeLabel(withText: String?, textColor: UIColor) -> UILabel {
        let label = UILabel()
        label.text = withText ?? ""
        label.textColor = textColor
        label.font = UIFont.boldSystemFont(ofSize: 20.0)
        return label
    }
}

