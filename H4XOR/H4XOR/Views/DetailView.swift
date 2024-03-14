//
//  DetailView.swift
//  H4XOR
//
//  Created by 최유현 on 10/26/23.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}
