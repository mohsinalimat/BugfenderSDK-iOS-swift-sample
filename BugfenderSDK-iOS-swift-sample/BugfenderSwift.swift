//
//  BugfenderSwift.swift
//  Bugfender sample
//
//  Created by gimix on 07/05/15.
//  Copyright (c) 2015 Bugfender. All rights reserved.
//

import Foundation

func BFLog(message: String, filename: String = __FILE__, line: Int = __LINE__, funcname: String = __FUNCTION__) {
    let file = ("\(filename)" as NSString).lastPathComponent as String
    
    Bugfender.logLineNumber(line, method: funcname, file: file, level: BFLogLevel.Default, tag: nil, message: message)
    #if DEBUG
        NSLog("[\(file):\(line)] \(funcname) - %@", message)
    #endif
}
