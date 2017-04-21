//
//  ViewController.swift
//  PrimeNumber
//
//  Created by cuong on 4/20/17.
//  Copyright © 2017 techmaster. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        generatePrime()
    }
    func isPrime(n: Int) -> Bool {
        if n == 1 || n == 2 || n == 3 || n == 5 { return true }
        
        for i in 2...Int(sqrt(Double(n))) {
            if n % i == 0  {
                return false
            }
        }
        return true
    }

    func generatePrime() {
        
        var primes = [1, 2, 3, 5]
        func isPrimeB(n: Int) -> Bool {
            if (n > 5) {
                //Chọn i trong mảng primes từ 2 đến số lớn hơn sqrt(n)
                var i = 1
                let thres = Int(sqrt(Double(n)))
                while (primes[i] <= thres) {
                    if n % primes[i] == 0 {
                        return false
                    }
                    i += 1
                }
                primes.append(n)
                return true
            } else {
                if n == 4 {
                    return false
                } else {
                    return true
                }
            }
        }
        
        let numbers = 1...10000
        for n in numbers {
            if isPrimeB(n: n) {
                /*if isPrime(n: n) {
                    print(n)
                }*/
                print(n)

            }
        }
    }


}

