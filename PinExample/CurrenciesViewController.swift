import UIKit

class CurrenciesViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = localized("Currencies")
    }
    
    let currencies = [
        Currency(flag: "🇺🇸", title: "Dollar", code: "USD"),
        Currency(flag: "🇪🇺", title: "Euro", code: "EUR"),
        Currency(flag: "🇬🇧", title: "British Pound", code: "GBP"),
        Currency(flag: "🇯🇵", title: "Japanese Yen", code: "JPY"),
        Currency(flag: "🇨🇳", title: "Chinese Yuan", code: "CNY"),
        Currency(flag: "🇨🇦", title: "Canadian Dollar", code: "CAD"),
        Currency(flag: "🇲🇽", title: "Mexican Peso", code: "MXN")
    ]
    
    override func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        let currency = currencies[indexPath.row]
        let cell = CurrencyCell()
        cell.flagLabel.text = currency.flag
        cell.titleLabel.text = localized(currency.title)
        cell.codeLabel.text = currency.code
        return cell
    }
    
    override func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {
        currencies.count
    }
    
    override func tableView(
        _ tableView: UITableView,
        heightForRowAt indexPath: IndexPath
    ) -> CGFloat {
        60
    }
    
    override func tableView(
        _ tableView: UITableView,
        didSelectRowAt indexPath: IndexPath
    ) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func localized(_ key: String) -> String {
        NSLocalizedString(key, comment: "")
    }
    
}

