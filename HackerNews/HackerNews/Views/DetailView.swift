//
//  DetailView.swift
//  HackerNews
//
//  Created by Aman Goel on 20/12/22.
//

import SwiftUI

struct DetailView: View {
    let url: String?
    
    var body: some View {
        if let urlIsThere = url {
            WebView(url: URL(string: urlIsThere)!)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}


