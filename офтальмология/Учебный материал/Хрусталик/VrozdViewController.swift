//
//  VrozdViewController.swift
//  офтальмология
//
//  Created by ислам Мирзаханов  on 30.09.2022.
//

import UIKit
import WebKit

class VrozdViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    @IBOutlet var vrozd: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()


        vrozd.navigationDelegate = self
        
        openPDFFile()
    }
    
    
    
    private func openPDFFile() {
        if let filePath = Bundle.main.url(forResource: "Врожден", withExtension: "pdf"){
            let request = URLRequest(url: filePath)
            vrozd.load(request)
        }
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityIndicator.stopAnimating()
    }
}
