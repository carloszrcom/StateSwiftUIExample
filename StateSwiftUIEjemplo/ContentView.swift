//
//  ContentView.swift
//  StateSwiftUIEjemplo
//
//  Created by Carlos ZR on 15/3/22.
//

import SwiftUI

struct ContentView: View {
    @State private var coche = "No hay coche"
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Marca de coche: \(coche)")
                    .padding(.bottom, 10)
                
                TextField("...", text: $coche)
                    .padding(.bottom, 10)
                
                NavigationLink {
                    CocheView(cochee: $coche)
                } label: {
                    Text("Ir a CocheView")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone SE")
    }
}
