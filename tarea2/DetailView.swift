//
//  DetailView.swift
//  tarea2
//
//  Created by user248192 on 4/2/24.
//

import SwiftUI

struct DetailView: View {
    let film: Film
    var body: some View {
        VStack{
            Image(film.image)
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 450)
                .clipped()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .position(CGPoint(x: 196.5 , y: 180.0))
            VStack(alignment: .leading){
                HStack(alignment: .top){
                    VStack(alignment: .leading){
                        Text(film.name)
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Text(film.date)
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .foregroundStyle(Color("redCarpet"))
                    }
                    Spacer()
                    Image(systemName: "star.fill")
                        .foregroundColor(.gold)
                        .scaleEffect(CGSize(width: 2.0, height: 2.0))
                        .padding(10)
                }
                Text("Sinopsis")
                    .font(.headline)
                    .foregroundColor(Color.gray)
                    .padding(.top, 6.0)
                    
                Text(film.sinopsis)
                    .font(.callout)
                    .padding(.top, 3.0)
                Text("Géneros")
                    .font(.headline)
                    .foregroundColor(Color.gray)
                    .padding(.top, 6.0)
                HStack{
                    Capsule()
                        .fill(Color.gray)
                        .opacity(0.4)
                        .frame(height: 25)
                        .overlay(
                            Text(film.categories[0])
                                .font(.subheadline)
                        )
                        .frame(maxWidth: 100)
                    Capsule()
                        .fill(Color.gray)
                        .opacity(0.4)
                        .frame(height: 25)
                        .overlay(
                            Text(film.categories[1])
                                .font(.subheadline)
                        )
                        .frame(maxWidth: 100)                }
            }
            .padding(15)
            .position(CGPoint(x: 196.5, y: 160.0))
            
        }
        
    }
        
    
}

//#Preview {
  //DetailView()
//}
