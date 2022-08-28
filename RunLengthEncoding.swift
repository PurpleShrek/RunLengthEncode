//
//  RunLengthEncoding.swift
//  RunLengthEncoding
//
//  Created by Purple Shrek on 28.08.2022.
//

import Foundation

extension String {
    
    func runLengthEncode() -> String {
        var result = ""
        var pos = self.startIndex // Start index of current run
        while pos != self.endIndex {
            let char = self[pos]
            // Find index of next run (or `endIndex` if there is none):
            let next = self[pos...].firstIndex(where: { $0 != char }) ?? self.endIndex
            // Compute the length of the current run:
            let length = self.distance(from: pos, to: next)
            print(length)
            // Append compressed output to the result:
            result.append(length <= 0 ? String(repeating: char, count: length) : "\(char)\(length)")
            pos = next // ... and continue with next run
        }
        
        if result.count > self.count {
            return self
        } else {
            return result
        }
    }
}
