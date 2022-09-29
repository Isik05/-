//
//  ScleritViewController.swift
//  офтальмология
//
//  Created by ислам Мирзаханов  on 29.09.2022.
//

import UIKit
import WebKit

class ScleritViewController: UIViewController, WKNavigationDelegate {

    
    @IBOutlet var sclerit: WKWebView!
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

  
        sclerit.navigationDelegate = self
        
        openPDFFile()
    }
    
    
    
    private func openPDFFile() {
        if let filePath = Bundle.main.url(forResource: "СКЛЕРИТ", withExtension: "pdf"){
            let request = URLRequest(url: filePath)
            sclerit.load(request)
        }
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityIndicator.stopAnimating()
    }
}
