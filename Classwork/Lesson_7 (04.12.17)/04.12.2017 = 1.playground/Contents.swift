//: A UIKit based Playground for presenting user interface
  
import UIKit // фреймворк - использует ю ай элементы
import PlaygroundSupport


class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 300, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black
        
        view.addSubview(configureButton())
        view.addSubview(label)
        self.view = view
    }
    
    private func configureButton() -> UIButton {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false // убираем преобразованеи констреинтов (что бы можно было вручную редактировать - тк автоматически вызываются опреденые констреитны)
        button.centerXAnchor.constraint(equalTo: viev.centerXAnchor).isActive = true
        
        
        button.backgroundColor = .gray
        button.titleLabel?.text = "tap this"
        button.titleLabel?.textColor = .black
        button.titleLabel?.frame = button.bounds
        return button
    }
    
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
