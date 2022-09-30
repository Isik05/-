//
//  VtorKatViewController.swift
//  офтальмология
//
//  Created by ислам Мирзаханов  on 30.09.2022.
//

import UIKit
import WebKit

class VtorKatViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    @IBOutlet var vtorKat: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

  
        vtorKat.navigationDelegate = self
        
        openPDFFile()
    }
    
    
    
    private func openPDFFile() {
        if let filePath = Bundle.main.url(forResource: "Афакия и артифакия", withExtension: "pdf"){
            let request = URLRequest(url: filePath)
            vtorKat.load(request)
        }
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityIndicator.stopAnimating()
    }
}
