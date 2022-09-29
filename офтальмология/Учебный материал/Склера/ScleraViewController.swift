//
//  ScleraViewController.swift
//  офтальмология
//
//  Created by ислам Мирзаханов  on 29.09.2022.
//

import UIKit
import WebKit

class ScleraViewController: UIViewController, WKNavigationDelegate {
    
    @IBOutlet var sclera: WKWebView!
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    

    override func viewDidLoad() {
        super.viewDidLoad()


        sclera.navigationDelegate = self
        
        openPDFFile()
    }
    
    
    
    private func openPDFFile() {
        if let filePath = Bundle.main.url(forResource: "Нарушения развития и аномалии склеры", withExtension: "pdf"){
            let request = URLRequest(url: filePath)
            sclera.load(request)
        }
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityIndicator.stopAnimating()
    }
}
