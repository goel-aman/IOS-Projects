//
//  WebView.swift
//  HackerNews
//
//  Created by Aman Goel on 20/12/22.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    var url: URL
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
            webView.load(request)
    }
}
