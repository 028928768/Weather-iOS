//
//  ViewController.swift
//  Weather-iOS-app
//
//  Created by Simon on 1/1/2565 BE.
//

import UIKit

class WeatherViewController: UIViewController {
    @IBOutlet weak var weatherTitleLabel: UILabel!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customiseUI()
        configure()
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
       
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
          return .lightContent
    }

    private func customiseUI() {
        searchBar.compatibleSearchTextField.textColor = .white
        searchBar.compatibleSearchTextField.backgroundColor = .lightGray
        searchBar.compatibleSearchTextField.borderStyle = .roundedRect
        searchBar.searchTextField.attributedPlaceholder = NSAttributedString(string: "Search for a city", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        searchBar.searchTextField.leftView?.tintColor = .white
        
    }
    
    private func configure() {
        searchBar.delegate = self
    }
    
 

}
extension WeatherViewController: UISearchBarDelegate {
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        print("Start searching...")
    }
}
extension UISearchBar {

    var compatibleSearchTextField: UITextField {
        guard #available(iOS 13.0, *) else { return legacySearchField }
        return self.searchTextField
    }

    private var legacySearchField: UITextField {
        if let textField = self.subviews.first?.subviews.last as? UITextField {
            // Xcode 11 previous environment
            return textField
        } else if let textField = self.value(forKey: "searchField") as? UITextField {
            // Xcode 11 run in iOS 13 previous devices
            return textField
        } else {
            // exception condition or error handler in here
            return UITextField()
        }
    }
}

