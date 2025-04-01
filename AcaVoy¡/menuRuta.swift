//
//  menuRuta.swift
//  AcaVoy¡
//
//  Created by MAC13 on 01/04/25.
//

import SwiftUI

struct RouteDetailView: View {
    var body: some View {
        NavigationStack{
            VStack(spacing: 0) {
                // Navigation bar
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
                
                Divider()
                
                // Route header section
                ZStack(alignment: .bottomTrailing) {
                    // Route image
                    Image("camion1") // Placeholder for your actual image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 200)
                        .clipped()
                    
                    HStack {
                        Text("Ruta 1")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right.circle.fill")
                            .font(.title2)
                            .foregroundColor(.white)
                    }
                    .padding()
                    .background(Color.black.opacity(0.3))
                }
                
                // Route info section
                VStack(alignment: .leading, spacing: 16) {
                    // Price and Time
                    HStack(spacing: 24) {
                        HStack {
                            Image(systemName: "dollarsign.circle.fill")
                                .foregroundColor(.green)
                            Text("Precio")
                                .fontWeight(.medium)
                                
                        }
                        
                        Text("$15")
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        HStack {
                            Image(systemName: "clock.fill")
                                .foregroundColor(.orange)
                            Text("Tiempo")
                                .fontWeight(.medium)
                        }
                        
                        Text("15 min")
                            .fontWeight(.bold)
                    }
                    
                    // Safety and Comfort
                    HStack(spacing: 24) {
                        HStack {
                            Image(systemName: "shield.fill")
                                .foregroundColor(.green)
                            Text("Seguridad")
                                .fontWeight(.medium)
                        }
                        
                        Spacer()
                        
                        HStack {
                            Image(systemName: "person.3.fill")
                                .foregroundColor(.red)
                            Text("Comodidad")
                                .fontWeight(.medium)
                        }
                    }
                    
                    // Transport section
                    VStack(alignment: .leading, spacing: 12) {
                        HStack {
                            Image(systemName: "bus.fill")
                                .foregroundColor(.blue)
                            Text("Transportes")
                                .fontWeight(.medium)
                        }
                        
                        // FCS - Toreo route
                        HStack(alignment: .top) {
                            Text("•")
                            VStack(alignment: .leading, spacing: 4) {
                                Text("FCS - Toreo")
                                    .fontWeight(.semibold)
                                
                                HStack(spacing: 12) {
                                    HStack(spacing: 2) {
                                        Image(systemName: "dollarsign.circle")
                                        Text("10")
                                    }
                                    
                                    HStack(spacing: 2) {
                                        Image(systemName: "clock")
                                        Text("5 min")
                                    }
                                    
                                    HStack(spacing: 2) {
                                        Image(systemName: "shield.fill")
                                        Text("Alta")
                                    }
                                    
                                    HStack(spacing: 2) {
                                        Image(systemName: "person.3")
                                        Text("Alta")
                                    }
                                }
                                .font(.subheadline)
                                .foregroundColor(.gray)
                            }
                        }
                        .padding(.leading)
                        
                        // Toreo - Tacuba route
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
                        .padding(.leading)
                    }
                    
                    Spacer()
                    
                    NavigationLink{
                        RutaView()
                    }
                    label: {
                        HStack {
                            Text("Ver Ruta")
                                .fontWeight(.semibold)
                            Image(systemName: "chevron.right")
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.black, lineWidth: 1)
                        )
                    }
                    Button(action: {
                    }) {
                        HStack {
                            Text("Agregar reseña")
                                .fontWeight(.semibold)
                            Image(systemName: "chevron.right")
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.black, lineWidth: 1)
                        )
                    }
                }
                .padding()
            }
        }
    }
}

struct RouteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RouteDetailView()
    }
}
