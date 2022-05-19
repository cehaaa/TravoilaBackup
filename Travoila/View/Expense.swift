//
//  Expense.swift
//  Travoila
//
//  Created by Patrick Louis on 19/05/22.
//

import SwiftUI

struct Expense: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            
            Button (action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            })
//            .fullScreenCover(isPresented: $showSheet, content: {
//                SecondScreen()
//            })
            .sheet(isPresented: $showSheet, content: {
                // DO NOT ADD CONDITIONAL LOGIC
                SecondScreen()
            })
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var expenseTitle: String = ""
    @State var expenseAmount: String = ""
    @State var expenseCategory: Bool = false
    @State var expenseDate: Date = Date()
    
    @State var totalBudgetEstimation: String = ""
    //    @ObservedObject var input = NumbersOnly()
    @State var listRowColor: Color = Color.gray.opacity(0.08)
    
    var body: some View {
        VStack {
            VStack {
                Form {
                    Section ( header: Text("Trip Title")) {
                        TextField("Trip Title", text: $tripTitle)
                            .listRowBackground(listRowColor)
                    }
                    
                    Section ( header: Text("Trip Destination")) {
                        TextField("Trip Destination", text: $tripDestination)
                            .listRowBackground(listRowColor)
                    }
                    
                    Section(header: Text("Date")){
                        DatePicker("Start Date", selection: $startDate, displayedComponents: .date)
                            .listRowBackground(listRowColor)
                        DatePicker("End Date", selection: $endDate, displayedComponents: .date)
                            .listRowBackground(listRowColor)
                    }
                    
                    Section(header: Text("Total Budget Estimation")){
                        TextField("IDR 0",text: $totalBudgetEstimation)
                            .listRowBackground(listRowColor)
                            .keyboardType(.default)
                    }
                }
                .onAppear {
                    UITableView.appearance().backgroundColor = .clear
                }
                .onDisappear {
                    UITableView.appearance().backgroundColor = .systemGroupedBackground
                }
                
                Button(action: {
                    
                    // SummaryView() > ini nanti alternatif 2 button aja
                }){
                    Text("Save")
                        .bold()
                        .frame(width: 340, height: 50)
                        .background(Color("CustomColor"))
                        .foregroundColor(.white)
                        .cornerRadius(10.0)
                }
                .frame(minWidth:0,  maxWidth: .infinity)
            }
            .navigationTitle("New Trip")
        }
//        ZStack (alignment: .topLeading) {
//            Color.white
//                .ignoresSafeArea()
//
//
//            Button (action: {
//                presentationMode.wrappedValue.dismiss()
//            }, label: {
//                Image(systemName: "xmark")
//                    .foregroundColor(.gray)
//                    .font(.largeTitle)
//                    .padding(20)
//            })
//        }
    }
}

struct Expense_Previews: PreviewProvider {
    static var previews: some View {
        Expense()
    }
}
