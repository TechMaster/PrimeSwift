# Tạo dãy số nguyên tố

# Hai phương pháp

## 2. Kiểm tra số nguyên tố bằng cách chia nó cho dãy các số nguyên tố từ 2 đến căn hai của N

Cách này chúng ta sẽ phải lưu lại các số nguyên tố tìm được vào mảng.
```swift
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
```
Hiệu suất sẽ đo đạc sau
