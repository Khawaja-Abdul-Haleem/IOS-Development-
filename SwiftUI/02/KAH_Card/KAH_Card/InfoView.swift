//
//  InfoView.swift
//  KAH_Card
//
//  Created by Mapple Technologies on 03/06/2021.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(HStack {
                Text(text)
            }).font(.system(size: 25))
            .padding(.all)
    }
}



struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello").previewLayout(.sizeThatFits)
    }
}
