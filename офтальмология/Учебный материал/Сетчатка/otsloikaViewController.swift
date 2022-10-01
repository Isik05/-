//
//  otsloikaViewController.swift
//  офтальмология
//
//  Created by ислам Мирзаханов  on 01.10.2022.
//

import UIKit
import WebKit

class otsloikaViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    @IBOutlet var otsloika: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        otsloika.navigationDelegate = self
        
        openPDFFile()
    }
    
    
    
    private func openPDFFile() {
        if let filePath = Bundle.main.url(forResource: "Отслойка сетчатки", withExtension: "pdf"){
            let request = URLRequest(url: filePath)
            otsloika.load(request)
        }
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityIndicator.stopAnimating()
    }
}
