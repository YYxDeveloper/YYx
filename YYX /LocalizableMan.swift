//
//  LocalizableMan.swift
//  YYxProvingGround
//
//  Created by young lu on 2019/5/28.
//  Copyright © 2019 002. All rights reserved.
//

import Foundation
class LocalizableMan {
    static let `default` = LocalizableMan()
    let currentLanguage = NSLocale.autoupdatingCurrent.localizedString(forLanguageCode: NSLocale.autoupdatingCurrent.languageCode!)!
    let firstpreferredLanguage = Locale.preferredLanguages[0]
    
    func preprocess() {
    //https://medium.com/lean-localization/ios-localization-tutorial-938231f9f881
    }
    static func giveMeLocalizedString(withKey:String) -> String {
        return NSLocalizedString(withKey, comment: EMPTY_STR)
    }
    

}
