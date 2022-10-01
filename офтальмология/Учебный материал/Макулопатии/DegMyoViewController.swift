//
//  DegMyoViewController.swift
//  офтальмология
//
//  Created by ислам Мирзаханов  on 01.10.2022.
//

import UIKit
import WebKit

class DegMyoViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    @IBOutlet var degMyo: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        degMyo.navigationDelegate = self
        
        openPDFFile()
    }
    
    
    
    private func openPDFFile() {
        if let filePath = Bundle.main.url(forResource: "Дегенерации при миопии", withExtension: "pdf"){
            let request = URLRequest(url: filePath)
            degMyo.load(request)
        }
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityIndicator.stopAnimating()
    }
}
