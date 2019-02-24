//
//  JavascriptAPIMenu.swift
//  iina
//
//  Created by Collider LI on 9/12/2018.
//  Copyright © 2018 lhc. All rights reserved.
//

import Foundation
import JavaScriptCore

@objc protocol JavascriptAPIMenuExportable: JSExport {
  func item(_ title: String, _ action: JSValue) -> JavascriptPluginMenuItem
  func addItem(_ item: JavascriptPluginMenuItem)
}

class JavascriptAPIMenu: JavascriptAPI, JavascriptAPIMenuExportable {
  func item(_ title: String, _ action: JSValue) -> JavascriptPluginMenuItem {
    return JavascriptPluginMenuItem(title: title, action: action)
  }

  @objc func addItem(_ item: JavascriptPluginMenuItem) {
    self.pluginInstance.menuItems.append(item)
  }
}