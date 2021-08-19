//
//  ContentView.swift
//  KAH_Card
//
//  Created by Mapple Technologies on 03/06/2021.
//


// for color: Search Flatuicolor/palette on google
// then convert HEXCODe to RGB on HEX to RGB converter


// FOR Additional Font: search google fonts (this font: Pacifico)

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.56, green: 0.27, blue: 0.68)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("KAH")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200.0, height: 200.0, alignment: .center)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Khawaja Abdul Haleem")
                    .font(Font.custom("Pacifico-Regular.ttf", size: 30))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding()
                Text("IOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                Divider()
                InfoView(text: "+92 333 xxxxxxx")
                InfoView(text: "haleemabdul194@gmail.com")
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

