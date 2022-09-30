//
//  vivixViewController.swift
//  офтальмология
//
//  Created by ислам Мирзаханов  on 30.09.2022.
//

import UIKit
import WebKit

class vivixViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    @IBOutlet var vivix: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

  
        vivix.navigationDelegate = self
        
        openPDFFile()
    }
    
    
    
    private func openPDFFile() {
        if let filePath = Bundle.main.url(forResource: "Вывих и подвывих хрусталика", withExtension: "pdf"){
            let request = URLRequest(url: filePath)
            vivix.load(request)
        }
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityIndicator.stopAnimating()
    }
}

