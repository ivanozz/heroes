//
//  HeroesView.swift
//  SuperHero
//
//  Created by admin on 30.09.2020.
//

import SwiftUI

struct HeroesView: View {
    @ObservedObject var viewModel = HeroesViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.heroes) { hero in
                HStack {
                    VStack(alignment: .leading) {
                        NavigationLink(destination: HeroView(id: hero.id)) {
                            Text(hero.name)
                        }
                    }
                }
            }.navigationBarTitle("Heroes", displayMode: .inline)
        }
    }
}

struct HeroesView_Previews: PreviewProvider {
    static var previews: some View {
        HeroesView()
    }
}
