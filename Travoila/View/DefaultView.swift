//
//  TESTING.swift
//  Travoila
//
//  Created by Patrick Louis on 19/05/22.
//

import SwiftUI

struct TabContainerView: View {
    
    @State var isNoTrip: Bool = true
    @State var trips: [Trip] = []
    
    var body: some View {
        TabView {
            DefaultView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            Text("My trip")
                .tabItem {
                    Label("My Trips", systemImage: "airplane.circle")
                }
        }
        .accentColor(Color("CustomColor"))
    }
}

struct DefaultView: View {
    
    @State var isNoTrip: Bool = true
    @State var trips: [Trip] = []
    
    var body: some View {
        NavigationView {
            ScrollView {
                if(isNoTrip){
                    VStack {
                        Text("No Budget Trip Plan")
                            .frame(width: .infinity)
                            .font(.system(size: 20,weight: .medium))
                        
                        Text("You have not created any budget trip expenses yet")
                            .multilineTextAlignment(.center)
                            .frame(width: 280, height: 50)
                            .font(.system(size: 16,weight: .thin))
                        
                        Spacer()
                            .frame(height: 10)
                            .background(Color.orange)
                        
                        NavigationLink(destination: NewTripView(trips: $trips, isNoTrip: $isNoTrip)){
                            
                            Text("Add New Expanse")
                                .bold()
                                .frame(width: 200, height: 50)
                                .background(Color("CustomColor"))
                                .foregroundColor(.white)
                                .cornerRadius(10.0)
                        }
                    }
                    .padding(.top, 200.0)
                } else {
                    NavigationLink(destination: SummaryView()){
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Current Trip")
                                .foregroundColor(.black)
                            
                            Text( trips.last?.title ?? "Batam Trip" )
                                .font(.title2)
                                .foregroundColor(.black)
                                .bold()
                            
                            Text("17-21 September 2021" )
                                .font(.system(size: 15,weight: .thin))
                                .foregroundColor(.black)
                            
                            VStack(alignment: .leading, spacing: 10.0) {
                                HStack {
                                    HStack {}
                                        .frame(width: 100.0, height: 15)
                                        .background(Color("CustomColor"))
                                        .cornerRadius(10.0)
                                }
                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                .background(.red.opacity(0.1))
                                .frame(height: 15)
                                .cornerRadius(10.0)
                                
                                HStack {
                                    Text("On Track")
                                        .foregroundColor(.green)
                                    
                                    Spacer()
                                        .background(Color.orange)
                                    
                                    Text("\(trips.last?.totalBudgetEstimation ?? 0)")
                                        .foregroundColor(.black)
                                }
                                .font(.system(size: 15))
                            }
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 2)
                        .padding()
                    }
                    
                    NavigationLink(destination: NewTripView(trips: $trips, isNoTrip: $isNoTrip)){
                        Text("Add New Expanse")
                            .bold()
                            .frame(width: 360, height: 50)
                            .background(Color("CustomColor"))
                            .foregroundColor(.white)
                            .cornerRadius(10.0)
                    }
                    
                }
            }
            .navigationTitle("Budget Trip")
            .navigationBarItems(
                trailing:
                    NavigationLink(
                        destination: NewTripView(trips: $trips, isNoTrip: $isNoTrip),
                        label: {
                            Image(systemName: "plus")
                        })
                    .accentColor(Color("CustomColor"))
            )
        }
    }
}

struct DefaultView_Previews: PreviewProvider {
    
    @State private static var dummyData: [Trip] = []
    @State private static var isNoTrip: Bool = true
    
    static var previews: some View {
        DefaultView(isNoTrip: isNoTrip, trips: dummyData)
    }
}
