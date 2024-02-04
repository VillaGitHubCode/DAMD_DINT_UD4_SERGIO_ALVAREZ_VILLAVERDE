import SwiftUI
import Foundation

struct ContentView: View {
    let gridItem: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text("FilmView")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .padding(.leading, -180.0)
                Text("Películas")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.leading, -180.0)  
                    .padding(.top, 10)
                LazyVGrid(columns: gridItem, spacing: 10) {
                    ForEach(Film.sampleData) { item in
                        NavigationLink(destination: DetailView(film: item)) {
                            VStack(alignment: .leading) {
                                ZStack(alignment: .leading) {
                                    Image(item.image)
                                        .resizable(resizingMode: .stretch)
                                        .frame(width: 160, height: 220.0)
                                    Circle()
                                        .frame(width: 45.0)
                                        .foregroundColor(Color("redCarpet"))
                                        .position(CGPoint(x: 150.0, y: 10.0))
                                    Text(String(describing: item.score))
                                        .font(.headline)
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .position(CGPoint(x: 150.0, y: 10.0))
                                }
                                
                                Text(item.name)
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.black)
                                    .multilineTextAlignment(.leading)
                                
                                Capsule()
                                    .fill(Color.gray)
                                    .opacity(0.5)
                                    .frame(height: 25)
                                    .frame(maxWidth: 100)
                                    .overlay(
                                        Text(item.categories[0])
                                            .font(.subheadline)
                                            .fontWeight(.light)
                                            .foregroundColor(Color.black)
                                    )
                            }
                            .padding(11)
                            
                        }
                    }
                }
            }
            
            .navigationTitle("Películas").navigationBarHidden(true)
           
        }
    }
}

#Preview {
    ContentView()
       
        
}


