//
//  CaseIterable+Extension.swift
//  Passqort
//
//  Created by 呂子揚 on 2020/4/22.
//  Copyright © 2020 呂子揚. All rights reserved.
//

import Foundation
extension CaseIterable where Self: Equatable {

     func thisIndex() -> Self.AllCases.Index {
        return Self.allCases.firstIndex(of: self)!
    }

}
