//
//  rosaViewController.swift
//  офтальмология
//
//  Created by ислам Мирзаханов  on 30.09.2022.
//

import UIKit
import WebKit

class rosaViewController: UIViewController, WKNavigationDelegate {
    
    
    @IBOutlet var rosa: WKWebView!
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        rosa.navigationDelegate = self
        
        openPDFFile()
    }
    
    
    
    private func openPDFFile() {
        if let filePath = Bundle.main.url(forResource: "Розацеа кератит", withExtension: "pdf"){
            let request = URLRequest(url: filePath)
            rosa.load(request)
        }
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityIndicator.stopAnimating()
    }
}

