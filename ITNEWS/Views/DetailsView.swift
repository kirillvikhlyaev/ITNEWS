//
//  DetailsView.swift
//  ITNEWS
//
//  Created by Кирилл on 10.07.2022.
//  Copyright © 2022 Kirill. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailsView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(url: "https://www.github.com/kirillvikhlyaev")
    }
}
