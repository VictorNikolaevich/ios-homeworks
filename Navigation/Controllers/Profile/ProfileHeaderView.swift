import UIKit

class ProfileHeaderView: UIView {
    
    var myCatAvatar: UIImageView = {

        let  myCatAvatar = UIImageView()
        myCatAvatar.frame.size = CGSize(
            width: 100,
            height: 100
        )
        myCatAvatar.image = UIImage(named: "Cat")
        myCatAvatar.layer.cornerRadius =  myCatAvatar.bounds.height / 2
        myCatAvatar.clipsToBounds = true
        myCatAvatar.layer.borderWidth = 3
        myCatAvatar.layer.borderColor = UIColor.white.cgColor
        return myCatAvatar
        
    }()
    
    var labelTextCoderCat: UILabel = {
        
        let labelTextCoderCat = UILabel()
        labelTextCoderCat.text = "Coder cat"
        labelTextCoderCat.textColor = .black
        labelTextCoderCat.textAlignment = .center
        labelTextCoderCat.font = .systemFont(
            ofSize: 18,
            weight: .bold
        )
        labelTextCoderCat.frame.size = CGSize(
            width: 100,
            height: 20
        )
        return labelTextCoderCat
        
    }()
    
    var buttonShowStatus: UIButton = {
        
        let buttonShowStatus = UIButton()
        buttonShowStatus.setTitle("Show status", for: .normal)
        buttonShowStatus.backgroundColor = .systemBlue
        buttonShowStatus.setTitleColor(.white, for: .normal)
        buttonShowStatus.layer.cornerRadius = 4
        buttonShowStatus.layer.shadowOffset = CGSize(width: 4, height: 4)
        buttonShowStatus.layer.shadowRadius = 4
        buttonShowStatus.layer.shadowColor = UIColor.black.cgColor
        buttonShowStatus.layer.shadowOpacity = 0.7
        buttonShowStatus.addTarget(
            self,
            action: #selector(buttonPressed),
            for: .touchUpInside
        )
        return buttonShowStatus
        
    }()
    
    var labelStatus: UILabel = {
        let labelStatus = UILabel()
        labelStatus.text = "Deadline tomorrow!"
        labelStatus.textColor = .gray
        labelStatus.font = .systemFont(ofSize: 17, weight: .regular)
        labelStatus.textAlignment = .center
        return labelStatus
    }()
    
    var textFieldForInputStatus: UITextField = {
        
        let textFieldForInputStatus = UITextField()
        textFieldForInputStatus.frame.size = CGSize(width: 200, height: 40)
        textFieldForInputStatus.placeholder = "  Place holder text"
        textFieldForInputStatus.font = .systemFont(ofSize: 15, weight: .regular)
        textFieldForInputStatus.layer.cornerRadius = 12
        textFieldForInputStatus.layer.borderWidth = 1
        textFieldForInputStatus.layer.borderColor = UIColor.black.cgColor
        textFieldForInputStatus.backgroundColor = .white
        textFieldForInputStatus.textColor = .black
        textFieldForInputStatus.addTarget(
            self,
            action: #selector(statusTextChanged),
            for: .editingChanged
        )
        return textFieldForInputStatus
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .lightGray
        addSubview(myCatAvatar)
        addSubview(labelTextCoderCat)
        addSubview(buttonShowStatus)
        addSubview(labelStatus)
        addSubview(textFieldForInputStatus)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        myCatAvatar.frame.origin = CGPoint(
            x: 16,
            y: 16
        )
        
        labelTextCoderCat.frame.origin = CGPoint(
            x: bounds.width / 2 - 50,
            y: 27
        )
        
        buttonShowStatus.frame = CGRect(
            x: 16,
            y: myCatAvatar.bounds.height + 60,
            width: bounds.width - 16 * 2,
            height: 50
        )
        
        labelStatus.frame = CGRect(
            x: 105,
            y: myCatAvatar.bounds.height - 15,
            width: 200,
            height: 20
        )
        
        textFieldForInputStatus.frame.origin = CGPoint(
            x: 150,
            y: 110
        )
    }
    
    private var inputStatusText: String = ""
    
    @objc func statusTextChanged(_ textField: UITextField) {
        inputStatusText = textFieldForInputStatus.text ?? "404 not Found"
        print(inputStatusText)
    }
    
    @objc func buttonPressed() {
        
        labelStatus.text = inputStatusText
        let labelForOutputToConsole = labelStatus.text ?? "404 not Found"
        print(labelForOutputToConsole)
        
    }
}
