//
//  CocheView.swift
//  StateSwiftUIEjemplo
//
//  Created by Carlos ZR on 24/3/22.
//

import SwiftUI

struct CocheView: View {
    @Binding var cochee: String
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Text("Vista de coche")
            
            TextField("Coche", text: $cochee)
                .multilineTextAlignment(.center)
        }
    }
}

struct CocheView_Previews: PreviewProvider {
    static var previews: some View {
        CocheView(cochee: .constant(""))
    }
}
