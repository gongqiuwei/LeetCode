//
//  Utils.swift
//  TestDemo
//
//  Created by cm on 2024/9/29.
//

import Foundation


extension String {
    
    func charAt(_ index: Int) -> Character {
        let index = self.index(self.startIndex, offsetBy: index)
        return self[index]
    }
    
    /// 区间 [from, to)
    func subString(from: Int, to: Int) -> String {
        let startIndex = self.index(self.startIndex, offsetBy: from)
        let endIndex = self.index(self.startIndex, offsetBy: to)
        return String(self[startIndex..<endIndex])
    }
}
