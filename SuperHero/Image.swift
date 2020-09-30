//
//  Image.swift
//  SuperHero
//
//  Created by admin on 30.09.2020.
//

import Foundation
import SwiftUI
import URLImage

struct Image: View {
    var url: String?
    
    var body: some View {
        guard let u = URL(string: url ?? "") else {
            return AnyView(Text("Loading"))
        }
        
        return AnyView(URLImage(u))
    }
}
