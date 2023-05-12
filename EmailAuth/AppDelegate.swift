//
//  AppDelegate.swift
//  EmailAuth
//
//  Created by Ela Howard on 2023-05-01.
//

import UIKit
import SwiftUI
import Firebase
import FirebaseCore
import FirebaseAuth



@main
struct EmailAuth: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    init(){
        FirebaseApp.configure()
        print ("configuration faite")
        
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
            SwiftUIView()
        }
    }
    }
}


class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    print ("configuration faite avec AppDelegate")

    return true
  
}
}
