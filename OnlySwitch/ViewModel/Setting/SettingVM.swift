//
//  SettingVM.swift
//  OnlySwitch
//
//  Created by Jacklandrin on 2021/12/11.
//

import Foundation
import SwiftUI

let changeSettingNotification = NSNotification.Name("changeSettingNotification")
enum SettingItem:String {
    case AirPods = "AirPods"
    case Radio = "Radio"
    case PomodoroTimer = "Pomodoro Timer"
    case General = "General"
    case Customize = "Customize"
    case Shortcuts = "Shortcuts"
    case Monitor = "Monitor"
    case About = "About"
    
    
    func page() -> AnyView {
        switch self {
        case .AirPods:
            return AnyView(AirPodsSettingView())
        case .Radio:
            return AnyView(RadioSettingView())
        case .PomodoroTimer:
            return AnyView(PomodoroTimerSettingView())
        case .Shortcuts:
            return AnyView(ShortcutsView())
        case .General:
            return AnyView(GeneralView())
        case .Customize:
            return AnyView(CustomizeView())
        case .Monitor:
            return AnyView(MonitorView())
        case .About:
            return AnyView(AboutView())
        }
    }
}

class SettingVM:ObservableObject {
    @Published var settingItems:[SettingItem] = [.General, .Customize, .Shortcuts, .Radio, .AirPods, .PomodoroTimer,.Monitor, .About]
    @Published var selection:SettingItem?
}
