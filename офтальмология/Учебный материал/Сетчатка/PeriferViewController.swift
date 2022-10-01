//
//  PeriferViewController.swift
//  офтальмология
//
//  Created by ислам Мирзаханов  on 01.10.2022.
//

import UIKit
import WebKit

class PeriferViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    @IBOutlet var perifer: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        perifer.navigationDelegate = self
        
        openPDFFile()
    }
    
    
    
    private func openPDFFile() {
        if let filePath = Bundle.main.url(forResource: "Периферические дегенерации сетчатки", withExtension: "pdf"){
            let request = URLRequest(url: filePath)
            perifer.load(request)
        }
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityIndicator.stopAnimating()
    }
}
