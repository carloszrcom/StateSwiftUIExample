//
//  ContentView.swift
//  StateSwiftUIEjemplo
//
//  Created by Carlos ZR on 15/3/22.
//

import SwiftUI

struct ContentView: View {
    @State private var coche = "Renault"
    
    var body: some View {
        VStack {
            TextField("Marca para el coche: ", text: $coche)
            
            Button {
                coche  = "Mercedes"
            } label: {
                 Text("Cambiar marca")
            }
            .padding(.bottom)
            
            Text("La marca de coche es: \(coche)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone SE")
    }
}
