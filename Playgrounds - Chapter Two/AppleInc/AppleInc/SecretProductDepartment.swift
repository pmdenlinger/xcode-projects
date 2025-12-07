//
//  SecretProductDepartment.swift
//  AppleInc
//
//  Created by Paul Denlinger on 12/6/25.
//

class SecretProductDepartment {
    private var secretCodeWord = "Titan"
    private var secretProducts = ["Apple Glasses",
                                  "Apple Car",
                                  "Apple Brain Implant"]
    
    func nextProduct(givenCodeWord codeWord: String) -> String? {
        let codeCorrect = codeWord == secretCodeWord
        return codeCorrect ? secretProducts.first : nil
    }
}

let insecureCodeWord = SecretProductDepartment().secretCodeWord

