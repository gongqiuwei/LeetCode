//
//  Solution01_reverseString.swift
//  TestDemo
//
//  Created by cm on 2024/9/28.
//  [344. 反转字符串](https://leetcode-cn.com/problems/reverse-string/)（简单）

//>> 边界问题，先写代码，然后用具体案例进行验证

import Foundation

extension Solution {
    
    static func test_reverseStr() {
        
        var s: [Character] = ["h","e","l","l","o"]
        Solution().reverseString(&s)
        print(s)
        
        var s1: [Character] = ["h","e","l","l","o", "0"]
        Solution().reverseString(&s1)
        print(s1)
    }
    
    // 原地修改数组
    // O(1)额外空间
    private func reverseString(_ s: inout [Character]) {
        // 双指针 或者 计算count
        
        //>> 边界问题，先写代码，然后用具体案例进行验证
        // 计算中间位置
//        var i = 0
//        while i < s.count / 2 {
//            (s[i], s[s.count - i - 1]) = (s[s.count - i - 1], s[i])
//            
//            i += 1
//        }
        
        
        var i = 0
        var j = s.count - 1
        while i < j {
            (s[i], s[s.count - i - 1]) = (s[s.count - i - 1], s[i])
            
            i += 1
            j -= 1
        }
        
    }
}
