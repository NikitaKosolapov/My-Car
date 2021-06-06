//
//  AppDelegate.swift
//  MyCar
//
//  Created by Nikita on 23.04.2021.
//

import UIKit
import CoreData

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    private lazy var coordinator: Coordinatable = self.makeCoordinator()
    private lazy var coreDataService = CoreDataService()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = TabBarController()
        self.window?.backgroundColor = AppColors.white
        self.window!.makeKeyAndVisible()

        self.coordinator.start()

        return true
    }

    // MARK: UISceneSession Lifecycle

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        saveContext()
    }

    func saveContext() {
        coreDataService.saveContext(onSuccess: {}, onError: {_ in })
    }

}

private extension AppDelegate {
    func makeCoordinator() -> Coordinatable {
        let router = Router(window: window)
        let factory = CoordinatorFactory()
        return AppCoordinator(router: router, factory: factory)
    }
}
