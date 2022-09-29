//
//  EpiscleritViewController.swift
//  офтальмология
//
//  Created by ислам Мирзаханов  on 29.09.2022.
//

import UIKit
import WebKit

class EpiscleritViewController: UIViewController,WKNavigationDelegate {

    @IBOutlet var Episclerit: WKWebView!
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()


        Episclerit.navigationDelegate = self
        
        openPDFFile()
    }
    
    
    
    private func openPDFFile() {
        if let filePath = Bundle.main.url(forResource: "Эписклерит", withExtension: "pdf"){
            let request = URLRequest(url: filePath)
            Episclerit.load(request)
        }
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityIndicator.stopAnimating()
    }
}
