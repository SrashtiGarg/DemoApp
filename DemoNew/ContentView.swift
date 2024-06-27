//
//  ContentView.swift
//  DemoNew
//
//  Created by Srashti Garg on 27/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            CardListView()
                .navigationBarTitle("Card View List", displayMode: .inline)
        }
    }
}

#Preview {
    ContentView()
}

struct CardListView: View {
    let items = [("Item 1", "Description 1"),
                 ("Item 2", "Description 2"),
                 ("Item 3", "Description 3")]
    
    var body: some View {
        List {
            ForEach(items, id: \.0) { item in
                CardView(title: item.0, description: item.1)
            }
        }
        .listStyle(PlainListStyle()) // Optional: Use PlainListStyle for a simpler list appearance
    }
}


struct CardView: View {
    let title: String
    let description: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
            
            Text(description)
                .font(.body)
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
        .padding(.vertical, 8)
        .padding(.horizontal, 16)
    }
}
