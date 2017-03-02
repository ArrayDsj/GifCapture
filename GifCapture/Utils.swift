//
//  Utils.swift
//  GifCapture
//
//  Created by Khoa Pham on 02/03/2017.
//  Copyright © 2017 Fantageek. All rights reserved.
//

import Foundation

struct Utils {

  static let formatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd HH.mm.ss"
    return formatter
  }()

  static func outputUrl() -> URL {
    let string = formatter.string(from: Date())

    return URL(fileURLWithPath: NSHomeDirectory())
      .appendingPathComponent("/Downloads/\(string)")
      .appendingPathExtension("mov")
  }
}
