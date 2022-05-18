//
//  Homescreen.swift
//  Travoila
//
//  Created by Patrick Louis on 15/05/22.
//

import SwiftUI

struct TabContainerView: View {
    
    @State var isNoTrip: Bool = true
    @State var trips: [Trip] = []
    
    var body: some View {
        TabView {
            HomeView(isNoTrip: $isNoTrip, trips: $trips)
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }
            
            Text("My trip")
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }
        }
    }
}

struct HomeView: View {
    
    @Binding var isNoTrip: Bool
    @Binding var trips: [Trip]
    
    var body: some View {
        VStack (spacing: isNoTrip ? 200 : 0) {
            ZStack (alignment: .top) {
                Rectangle()
                    .frame(width: .infinity, height: 120)
                    .foregroundColor(Color.gray.opacity(0.1))
                    .ignoresSafeArea()

                HStack {
                    Text("Budget Trip")
                        .frame(width: 170, height: 30, alignment: .leading)
                        .font(.system(size: 28, weight: .bold))

                    Spacer()

                    Image(systemName: "plus")
                        .font(.title)
                        .foregroundColor(Color("CustomColor"))
                }
                .padding(.all)
            }

            ScrollView {
                if(isNoTrip){
                    Text("No Budget Trip Plan")
                        .frame(width: .infinity)
                        .font(.system(size: 20,weight: .medium))

                    Spacer()
                        .frame(height: 10)

                    Text("You have not created any budget trip expenses yet")
                        .multilineTextAlignment(.center)
                        .frame(width: 280, height: 50)
                        .font(.system(size: 16,weight: .thin))

                    Spacer()
                        .frame(height: 30)
                    
                    NavigationLink(destination: NewTripView(trips: $trips, isNoTrip: $isNoTrip)){
                        Text("Create Budget Trip")
                            .bold()
                            .padding(.horizontal, 30.0)
                            .padding(.vertical, 20.0)
                            .background(Color("CustomColor"))
                            .foregroundColor(.white)
                            .cornerRadius(10.0)
                    }
                } else {
                    VStack {
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Current Trip")
                            
                            Text( trips.last?.title ?? "Batam Trip" )
                                .font(.title2)
                                .bold()
                            
                            Text("17-21 September 2021" )
                                .font(.system(size: 15,weight: .thin))
                            
                            VStack(alignment: .leading, spacing: 10.0) {
                                HStack {
                                    HStack {}
                                    .frame(width: 100.0, height: 20)
                                    .background(Color("CustomColor"))
                                }
                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                .background(.gray.opacity(0.1))
                                .frame(height: 20)
                                .cornerRadius(10.0)
                                
                                HStack {
                                    Text("On Track")
                                        .foregroundColor(.green)

                                    Spacer()
                                    
                                    Text("0 of 15,000,000 spent")
                                }
                                .font(.system(size: 15))
                            }
                        }
                        .padding()
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        
                        NavigationLink(destination: NewTripView(trips: $trips, isNoTrip: $isNoTrip)){
                            Text("Add Exapanse")
                                .bold()
                                .frame(width: 340, height: 50)
                                .background(Color("CustomColor"))
                                .foregroundColor(.white)
                                .cornerRadius(10.0)

                        }
                    }
//                    .offset(y: -30)
                }

            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.horizontal, 20)
        }
        .offset(y: -40.0)
    }
}

struct HomeView_Previews: PreviewProvider {
    
    @State private static var dummyData: [Trip] = []
    @State private static var isNoTrip: Bool = false
    
    static var previews: some View {
        HomeView(isNoTrip: $isNoTrip, trips: $dummyData)
    }
}
