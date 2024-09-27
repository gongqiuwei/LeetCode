//
//  Solution01_towSum.swift
//  TestDemo
//
//  Created by cm on 2024/9/27.
//

import Foundation

extension Solution {
    
    static func test_twoSum() {
        print(Solution().twoSum([], 0))
        print(Solution().twoSum([2, 7, 11, 15], 9))
        print(Solution().twoSum([3, 2, 4], 6))
        print(Solution().twoSum([3, 2, 4], 8))
    }
}


fileprivate extension Solution {
    
    // 暴力解法(找到一个答案就返回)
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                if nums[i] + nums[j] == target {
                    return [i, j]
                }
            }
        }
        
        return []
    }
}




