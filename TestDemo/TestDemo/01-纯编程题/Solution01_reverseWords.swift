//
//  Solution01_reverseWords.swift
//  TestDemo
//
//  Created by cm on 2024/9/29.
//  4. [剑指 Offer 58 - I. 翻转单词顺序](https://leetcode-cn.com/problems/fan-zhuan-dan-ci-shun-xu-lcof/)（简单）

import Foundation

extension Solution {
    
    static func test_reverseWords() {
        print(Solution().reverseMessage("the sky is blue"))
        print(Solution().reverseMessage("  hello world!  "))
        print(Solution().reverseMessage("a good   example"))
    }
    
    // 单词翻转（单词内不翻转）
    // 单词之间可能有多个空格，需要去除
    private func reverseMessage(_ message: String) -> String {
        
        // 解法一：根据空格，分割成字符串数组，逆序拼接字符串（ O(n)额外空间 ）
//        let strArr = message.split(separator: " ")
        let strArr = customSplit(message, separator: " ")
        
        var result = ""
        for (index, str) in strArr.enumerated().reversed() {
            result.append(String(str))
            
            // 这里是翻转的index  错误： index < strArr.count - 1
            if index != 0 {
                result.append(" ")
            }
        }
        
        return result
    }
    
    private func customSplit(_ str: String, separator: Character) -> [String] {
        guard str.count > 0 else {
            return []
        }
        
        var words = [String]()
        var start = -1
        for i in 0..<str.count {
            let char =  str.charAt(i)
            
            // word开始
            if char != separator && start < 0 {
                start = i
            }
            
            // word结束
            if char == separator && start >= 0 {
                // 获取subString
                let subStr = str.subString(from: start, to: i)
                words.append(subStr)
                
                // 清空状态
                start = -1
            }
        }
        
        // 还有一个没有处理的(到了string的末尾)
        if (start > 0) {
            // 获取subString
            let subStr = str.subString(from:start, to: str.count)
            words.append(subStr)
        }
        
        return words
    }
    
    
    
    // 解法二：整体字符串翻转，然后单个单词翻转 (O(1)额外空间)
//    private func reverseMessage(_ message: String) -> String {
//        // 整体翻转字符串
//        var tempStr = message
//        reverseString(&tempStr, from: 0, to: tempStr.count)
//        
//        var result = ""
//        // 查找单个words，开始翻转
//        
//        // 拼接
//        
//        return result
//    }
//    
//    // 翻转string，区间 [from, to)
//    private func reverseString(_ str: inout String, from: Int, to: Int) {
//         
//    }
    
    
}


