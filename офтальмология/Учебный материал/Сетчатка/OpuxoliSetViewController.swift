//
//  OpuxoliSetViewController.swift
//  офтальмология
//
//  Created by ислам Мирзаханов  on 01.10.2022.
//

import UIKit
import WebKit

class OpuxoliSetViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    @IBOutlet var opuxoliSet: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        opuxoliSet.navigationDelegate = self
        
        openPDFFile()
    }
    
    
    
    private func openPDFFile() {
        if let filePath = Bundle.main.url(forResource: "Опухоли сетчатки", withExtension: "pdf"){
            let request = URLRequest(url: filePath)
            opuxoliSet.load(request)
        }
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityIndicator.stopAnimating()
    }
}
