//
//  TaskDivineApp.swift
//  TaskDivine


import SwiftUI
import FirebaseCore

@main
struct TaskDivineApp: App {
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
