//
//  ToDoListItemView.swift
//  TaskDivine
//
//  Created by Tomass Tel on 12/03/2024.
//

import SwiftUI

struct ToDoListItemView: View {
    @StateObject var viewModel = ToDoListItemViewViewModel()
    let item: ToDoListItem
    
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.title)
                    .bold()
                
                Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time: .shortened))")
                    .font(.footnote)
                    .foregroundColor(.red)
            }
            
            Spacer()
            
            Button {
                viewModel.toggleIsDone(item: item)
            } label: {
                Image(systemName: item.isDone ? "checkmark.circle.fill" : "circle")
                    .foregroundColor(.green)
            }
        }
    }
}

#Preview {
    ToDoListItemView(item: .init(id: "123", title: "Buy apples", dueDate: Date().timeIntervalSince1970, ceatedDate: Date().timeIntervalSince1970, isDone: true))
}
