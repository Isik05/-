//
//  epiRetViewController.swift
//  офтальмология
//
//  Created by ислам Мирзаханов  on 01.10.2022.
//

import UIKit
import WebKit

class epiRetViewController: UIViewController,WKNavigationDelegate {

    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    @IBOutlet var epiRet: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        epiRet.navigationDelegate = self
        
        openPDFFile()
    }
    
    
    
    private func openPDFFile() {
        if let filePath = Bundle.main.url(forResource: "ЭМ", withExtension: "pdf"){
            let request = URLRequest(url: filePath)
            epiRet.load(request)
        }
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityIndicator.stopAnimating()
    }
}
