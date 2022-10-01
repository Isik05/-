//
//  VMSViewController.swift
//  офтальмология
//
//  Created by ислам Мирзаханов  on 01.10.2022.
//

import UIKit
import WebKit

class VMSViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    @IBOutlet var VMS: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        VMS.navigationDelegate = self
        
        openPDFFile()
    }
    
    
    
    private func openPDFFile() {
        if let filePath = Bundle.main.url(forResource: "ВМС", withExtension: "pdf"){
            let request = URLRequest(url: filePath)
            VMS.load(request)
        }
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityIndicator.stopAnimating()
    }
}
