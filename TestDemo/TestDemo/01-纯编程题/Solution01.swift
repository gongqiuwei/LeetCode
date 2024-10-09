//
//  Solution01.swift
//  TestDemo
//
//  Created by cm on 2024/9/12.
//

import Foundation


class Solution {
    
    static func testIP() {
        
        let arr: [String] = [
            "123.9.2.0",
            "223. 33. 13 . 33",
            "232. 22 1. 223. 1",
            "222. 319. 2. 4",
            "2ba. 23 .34.11",
            "232. 232. 11",
            "233.  . 33.2",
            ""
        ]
        
        for str in arr {
            let result = Solution().check(ip: str)
            print("检测结果： \(str) -- \(result ? "通过": "未通过")")
        }
    }
}

fileprivate extension Solution {
    
    // "123.9.0.1"
    // " 223. 33. 13 . 33 "
    // "232. 22 1. 233. 1"
    //
    func check(ip: String) -> Bool {
        // 校验输入
        guard ip.count > 0 else {
            return false
        }
        
        // ip字符串分割
        let ipArr = ip.split(separator: ".")
        guard ipArr.count == 4 else {
            return false
        }
        
        // 校验每一段ip
        let index = ipArr.firstIndex { !checkIpSegment($0) }
        
        // 合法
        return index == nil
    }
    
    // "123", " 123 " " 12 3 " "288" "   "
    func checkIpSegment(_ ipSegment: Substring) -> Bool {
        // 查找第一个非空格字符
        let ipStr = String(ipSegment)
        var i = 0
        while i < ipStr.count && charOf(ipStr, at: i) == " " {
            i += 1
        }
        
        guard i < ipSegment.count else {
            // 全部为空格
            return false
        }
        
        // 从第一个非空字符，查找到最后一个非空字符
        var digit = 0
        while i < ipStr.count && charOf(ipStr, at: i) != " " {
            let c = charOf(ipStr, at: i)
            // 非数字
//            if c < "0" || c > "9" {
//                return false
//            }
            guard let value = Int(String(c)) else {
                return false
            }
            
            /// 数字值
            digit = digit * 10 + value
            guard digit <= 255 else {
                return false
            }
            
            i += 1
        }
        
        // 继续查找后续字符，检查是否合法
        while i < ipStr.count {
            let c = charOf(ipStr, at: i)
            if c != " " {
                // 后续包含非空格字符
                return false
            }
            i += 1
        }
        
        // 合法
        return true
    }
    
    private func charOf(_ str: String, at index: Int) -> Character {
        let index = str.index(str.startIndex, offsetBy: index)
        return str[index]
    }
}

