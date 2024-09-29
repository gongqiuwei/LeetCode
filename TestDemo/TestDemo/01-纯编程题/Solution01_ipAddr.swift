//
//  Solution01_ipAddr.swift
//  TestDemo
//
//  Created by cm on 2024/9/27.
//  2. [1108. IP 地址无效化](https://leetcode-cn.com/problems/defanging-an-ip-address/)（简单）

import Foundation

extension Solution {
    static func test_ipAddr() {
        print(Solution().defangIPaddr("1.1.1.1"))
    }
    
    // 手动实现 string 的 replace
    private func defangIPaddr(_ address: String) -> String {
        
//        var result = ""
//        for i in 0..<address.count {
//            let index = address.index(address.startIndex, offsetBy: i)
//            let char = address[index]
//            if char == "." {
//                result.append("[.]")
//            } else {
//                result.append(char)
//            }
//        }
//        
//        return result
        
//        var result = ""
//        for c in address {
//            if c == "." {
//                result.append("[.]")
//            } else {
//                result.append(c)
//            }
//        }
//        return result
        
        return address.split(separator: ".").joined(separator: "[.]")
    }
}
