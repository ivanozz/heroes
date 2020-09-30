//
//  HeroView.swift
//  SuperHero
//
//  Created by admin on 30.09.2020.
//

import SwiftUI

struct HeroView: View {
    var id: Int?
    
    @ObservedObject var viewModel = HeroViewModel()
    
    var body: some View {
        VStack {
            Text(viewModel.hero?.name ?? "").font(.headline)
            Image(url: viewModel.hero?.images?.large ?? "")
        }.onAppear{
            self.viewModel.getHero(id: self.id ?? 0)
        }
    }
}

struct HeroView_Previews: PreviewProvider {
    static var previews: some View {
        HeroView()
    }
}
