//
//  rutas.swift
//  AcaVoy¡
//
//  Created by MAC13 on 31/03/25.
//

import SwiftUI
struct rutas: View {
    @State var image: String = "clima"
    @State var rata: String = "A"
    var body: some View {
        NavigationStack{
            HStack{
                VStack{
                    NavigationLink{
                        RouteDetailView()
                    }
                    label: {
                        Image(image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                    }
                    Text("Ruta \(rata)")
                }
                .background(Color(UIColor.systemGray6))
                .cornerRadius(10)
                .padding(.vertical,10)
                
                HStack(alignment: .top) {
                    Text("•")
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Toreo - Tacuba")
                            .fontWeight(.semibold)
                        
                        HStack(spacing: 12) {
                            HStack(spacing: 2) {
                                Image(systemName: "dollarsign.circle")
                                Text("5")
                            }
                            
                            HStack(spacing: 2) {
                                Image(systemName: "clock")
                                Text("10 min")
                            }
                            
                            HStack(spacing: 2) {
                                Image(systemName: "shield.fill")
                                Text("Alta")
                            }
                            
                            HStack(spacing: 2) {
                                Image(systemName: "person.2")
                                Text("Media")
                            }
                        }
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        
                    }
                }
            }
        }
    }
}

#Preview {
    rutas()
}
