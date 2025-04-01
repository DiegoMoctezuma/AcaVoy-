//
//  mapRuta.swift
//  AcaVoy¡
//
//  Created by MAC13 on 01/04/25.
//

import SwiftUI

struct RutaView: View {
    var body: some View {
        VStack(spacing: 0) {
            // Barra superior con logo y perfil
            HStack{
                Text("AcaVoy!")
                    .bold()
                    .font(.title)
                    .foregroundColor(.white)
                Spacer()
                NavigationLink{
                    perfil()
                }
                label: {
                    AsyncImage(url: URL(string: "https://picsum.photos/200"))
                        .frame(width: 60, height: 60)
                        .cornerRadius(32)
                        .overlay(Circle().stroke(.gray))
                }
            }
            .padding()
            .background(Color(UIColor(red:30/255,green: 75/255,blue: 128/255,alpha: 1.0)))
            
            // Sección del mapa (espacio para imagen)
            ZStack(alignment: .bottomTrailing) {
                // Espacio para la imagen del mapa
                Image("map1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 530)
                
                // Escala del mapa
                VStack(alignment: .trailing) {
                    Text("20 m")
                        .font(.caption)
                        .padding(4)
                        .background(
                            RoundedRectangle(cornerRadius: 4)
                                .stroke(Color.black, lineWidth: 1)
                                .background(Color.white)
                        )
                }
                .padding()
            }
            
            // Información de la ruta
            VStack(alignment: .leading, spacing: 12) {
                Text("RUTA 1")
                    .font(.title3)
                    .fontWeight(.bold)
                
                HStack {
                    Image(systemName: "mappin.circle")
                    Text("FES ACATLAN")
                    Image(systemName: "arrow.right")
                    Image(systemName: "mappin.and.ellipse")
                    Text("Tacuba")
                }
                
                HStack(spacing: 24) {
                    HStack {
                        Image(systemName: "rhombus")
                        Text("13 km")
                    }
                    
                    HStack {
                        Image(systemName: "clock")
                        Text("20 min")
                    }
                }
                
                AlertRow(icon: "exclamationmark.triangle", text: "Tráfico en esta zona")
                
                AlertRow(icon: "exclamationmark.triangle", text: "Manifestación cerca")
            }
            .padding()
            .background(Color.white)
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct AlertRow: View {
    var icon: String
    var text: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.red)
            Text(text)
                .foregroundColor(.black)
        }
    }
}

struct RutaView_Previews: PreviewProvider {
    static var previews: some View {
        RutaView()
    }
}
