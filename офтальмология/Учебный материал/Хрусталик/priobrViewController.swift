//
//  priobrViewController.swift
//  офтальмология
//
//  Created by ислам Мирзаханов  on 30.09.2022.
//

import UIKit
import WebKit

class priobrViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    @IBOutlet var priobr: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()


        priobr.navigationDelegate = self
        
        openPDFFile()
    }
    
    
    
    private func openPDFFile() {
        if let filePath = Bundle.main.url(forResource: "Приобретен", withExtension: "pdf"){
            let request = URLRequest(url: filePath)
            priobr.load(request)
        }
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityIndicator.stopAnimating()
    }
}
