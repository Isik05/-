//
//  AngioPolViewController.swift
//  офтальмология
//
//  Created by ислам Мирзаханов  on 01.10.2022.
//

import UIKit
import WebKit

class AngioPolViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    @IBOutlet var angioPol: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        angioPol.navigationDelegate = self
        
        openPDFFile()
    }
    
    
    
    private func openPDFFile() {
        if let filePath = Bundle.main.url(forResource: "АП", withExtension: "pdf"){
            let request = URLRequest(url: filePath)
            angioPol.load(request)
        }
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityIndicator.stopAnimating()
    }
}
