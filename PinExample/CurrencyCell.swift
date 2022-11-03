import UIKit
import Pin

class CurrencyCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(bodyView)
        bodyView.addSubviews([flagLabel, titleLabel, codeLabel])
        
        Pin.activate([
            bodyView.pin.horizontally(offset: 15).vertically(),
            flagLabel.pin.start().size(36).centerY(),
            titleLabel.pin.after(flagLabel, offset: 15).vertically(),
            codeLabel.pin.after(titleLabel, offset: 15).end().vertically()
        ])
    }
    
    let bodyView = UIView()
    
    let flagLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .secondarySystemBackground
        label.clipsToBounds = true
        label.textAlignment = .center
        label.layer.cornerRadius = 18
        return label
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.font = .systemFont(ofSize: 16)
        label.setContentHuggingPriority(.defaultLow, for: .horizontal)
        return label
    }()
    
    let codeLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 14)
        label.textColor = .secondaryLabel
        label.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        return label
    }()
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
}
