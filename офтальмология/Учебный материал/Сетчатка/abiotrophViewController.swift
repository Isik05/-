//
//  abiotrophViewController.swift
//  офтальмология
//
//  Created by ислам Мирзаханов  on 01.10.2022.
//

import UIKit
import WebKit

class abiotrophViewController: UIViewController, WKNavigationDelegate {
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    @IBOutlet var abiotroph: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        abiotroph.navigationDelegate = self
        
        openPDFFile()
    }
    
    
    
    private func openPDFFile() {
        if let filePath = Bundle.main.url(forResource: "Дистрофии сетчатки", withExtension: "pdf"){
            let request = URLRequest(url: filePath)
            abiotroph.load(request)
        }
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityIndicator.stopAnimating()
    }
}
