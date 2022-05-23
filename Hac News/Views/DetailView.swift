//
//  DetailView.swift
//  Hac News
//
//  Created by Alec Mac on 5/22/22.
//

import SwiftUI

struct DetailView: View {
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://google.com")
        
    }
}

