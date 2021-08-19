//
//  WebView.swift
//  H4X0R News
//
//  Created by Mapple Technologies on 03/06/2021.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {

    let urlSting: String?
    
    func makeUIView(context: Context) -> UIViewType {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlSting {
            if let url = URL(string: safeString) {
                UIView.load()
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
