//
//  WebView.swift
//  Hac News
//
//  Created by Alec Mac on 5/22/22.
//

import SwiftUI
import Foundation
import WebKit

struct WebView: UIViewRepresentable {

    let urlString: String?
    
    func makeUIView(context: UIViewRepresentableContext<WebView>) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<WebView>) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
