//
//  SummaryView.swift
//  Travoila
//
//  Created by christian gouw on 18/05/22.
//

import SwiftUI

struct SummaryView: View {
    
    @State var newAllocation: Bool = false
    @State var chooseCategory: Bool = false
    
    @State var selectCategory: Bool = false
    @State var budgetAllocation: String = ""
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 18) {
                    VStack(alignment: .leading) {
                        Text("Trip To Batam")
                            .font(.title)
                            .fontWeight(.bold)
                    }
                    HStack() {
                        VStack(alignment: .leading, spacing: 12) {
                            Text("Total Expanses")
                                .font(.callout)
                            Text("IDR. 5,170,000")
                                .font(.title3)
                                .fontWeight(.bold)
                        }
                        
                        Spacer()
                        
                        VStack(alignment: .leading, spacing: 12) {
                            Text("Total Budget")
                                .font(.callout)
                            Text("IDR. 15,000,000")
                                .font(.title3)
                                .fontWeight(.bold)
                        }
                    }
                }
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                
                Spacer()
                    .frame(height: 50.0)
                
                VStack(alignment: .leading) {
                    HStack(alignment: .center) {
                        Text("Budget Allocation")
                        
                        Spacer()
                        
                        Button(action: {
                            self.newAllocation = true
                        }){
                            Label("New Allocation", systemImage: "plus")
                                .foregroundColor(Color("CustomColor"))
                        }
                    }
                }
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                
                VStack(spacing: 100.0) {
                    Text("Image")
                        .padding(.top, 100.0)
                    
                    Text("You have not set any budget category allocation")
                        .multilineTextAlignment(.center)
                        .frame(width: 280, height: 50)
                        .font(.system(size: 16,weight: .thin))
                }
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.horizontal, 20)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        
                    }) {
                        Text("Edit")
                            .foregroundColor(Color("CustomColor"))
                    }
                }
                
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        
                    }) {
                        Text("Cancel")
                            .foregroundColor(Color("CustomColor"))
                    }
                }
            })
            .sheet(isPresented: $newAllocation){
                NavigationView {
                    VStack {
                        Form {
                            Section(header: Text("Category")){
                                HStack {
                                    Text("Category")
                                    Spacer()
                                    Text("Select")
                                        .foregroundColor(.blue)
                                        .onTapGesture {
                                            self.selectCategory = true
                                        }
                                }
                            }
                            Section(header: Text("Budget Allocation"), footer: HStack(alignment: .top) {
                                Text("Your remaining budget")
                                
                                Spacer()
                                
                                VStack(alignment: .trailing, spacing: 10.0) {
                                    Text("IDR 0")
                                        .font(.callout)
                                        .foregroundColor(.black)
                                    
                                    Text("of IDR 15,000,000")
                                }
                            }) {
                                TextField("IDR", text: $budgetAllocation)
                            }
                        }
                    }
                    .sheet(isPresented: $selectCategory){
                        NavigationView {
                            ScrollView {
                                VStack(alignment: .leading, spacing: 30.0) {
                                    HStack(alignment: .center) {
                                        VStack(spacing: 12.0) {
                                            Image("Transportation")
                                                .resizable()
                                                .frame(width: 80, height: 80)
                                        }
                                        
                                        Spacer()
                                        
                                        VStack(spacing: 12.0) {
                                            Image("Food & Beverage")
                                                .resizable()
                                                .frame(width: 80, height: 80)
                                        }
                                        
                                        Spacer()
                                        
                                        VStack(spacing: 12.0) {
                                            Image("Activity")
                                                .resizable()
                                                .frame(width: 80, height: 80)
                                        }
                                    }
                                    
                                    HStack(alignment: .center) {
                                        VStack(spacing: 12.0) {
                                            Image("Accomodation")
                                                .resizable()
                                                .frame(width: 80, height: 80)
                                        }
                                        
                                        Spacer()
                                        
                                        VStack(spacing: 12.0) {
                                            Image("Shopping")
                                                .resizable()
                                                .frame(width: 80, height: 80)
                                        }
                                        
                                        Spacer()
                                        
                                        VStack(spacing: 12.0) {
                                            Image("Emergency Fund")
                                                .resizable()
                                                .frame(width: 80, height: 80)
                                        }
                                    }
                                    
                                    HStack {
                                        VStack(spacing: 12.0) {
                                            Image("Others")
                                                .resizable()
                                                .frame(width: 80, height: 80)
                                        }
                                        
                                    }
                                    
                                }
                                .padding(.horizontal, 20.0)
                            }
                            .frame(alignment: .topLeading)
                            .padding(.top, 20.0)
                            .navigationTitle("Choose Category")
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationBarItems(
                                leading:
                                    Button(action: {
                                        self.selectCategory = false
                                    }){
                                        Text("Back")
                                            .foregroundColor(Color("CustomColor"))
                                    }
                            )
                        }
                    }
                    .navigationTitle("New Allocation")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarItems(
                        leading:
                            Button(action: {
                                self.newAllocation = false
                            }){
                                Text("Cancel")
                                    .foregroundColor(Color("CustomColor"))
                            },
                        
                        trailing:
                            Button(action: {
                                
                            }){
                                Text("Save")
                                    .foregroundColor(Color("CustomColor"))
                            }
                    )
                    
                }
                
            }
        }
    }
}

struct SummaryView_Previews: PreviewProvider {
    static var previews: some View {
        SummaryView()
    }
}
