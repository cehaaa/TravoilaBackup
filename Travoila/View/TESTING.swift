//
//  TESTING.swift
//  Travoila
//
//  Created by Patrick Louis on 19/05/22.
//

import SwiftUI

struct TESTING: View {
    
//    init () {
//        UINavigationBar.appearance().backgroundImage(for: UIBarMetrics())
//    }
    
    @State var isNoTrip: Bool = true
    @State var trips: [Trip] = []
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text("Test")
                
                NavigationLink(destination: NewTripView(trips: $trips, isNoTrip: $isNoTrip)){
                    Text("Add Expense")
                        .bold()
                        .frame(width: 340, height: 50)
                        .background(Color("CustomColor"))
                        .foregroundColor(.white)
                        .cornerRadius(10.0)
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
}

struct TESTING_Previews: PreviewProvider {
    
    @State private static var dummyData: [Trip] = []
    @State private static var isNoTrip: Bool = false
    
    static var previews: some View {
        TESTING(isNoTrip: isNoTrip, trips: dummyData)
    }
}
