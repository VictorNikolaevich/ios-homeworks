import UIKit

class ProfileHeaderView: UIView {
    
    var myCatAvatar: UIImageView = {
        let catImage = UIImage(named: "Cat")
        let myCatAvatar:UIImageView = UIImageView()
        myCatAvatar.translatesAutoresizingMaskIntoConstraints = false
        myCatAvatar.contentMode = UIView.ContentMode.scaleAspectFit
        myCatAvatar.frame = CGRect(origin: CGPoint(x: 16, y: 16), size: CGSize(width: 100, height: 100 ))
        myCatAvatar.image = catImage
        myCatAvatar.layer.cornerRadius = myCatAvatar.bounds.height / 2
        myCatAvatar.clipsToBounds = true
        myCatAvatar.layer.borderWidth = 3
        myCatAvatar.layer.borderColor = UIColor.white.cgColor
        return myCatAvatar
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .lightGray
        addSubview(myCatAvatar)
    
}
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        
        
    }
    
    
}
