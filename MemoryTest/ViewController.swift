//
//  Copyright © 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class A {
    static let i = 10
    static let sss = "123"
    static let f = UIFont.systemFont(ofSize: 13, weight: .regular)
    static var cf: CGFloat = 10
}

class B {
    static let i = 10
    static let sss = "123"
    static let f = UIFont.systemFont(ofSize: 13, weight: .regular)
    static var cf: CGFloat = 10
}

struct C {
    static let i = 10
    static let sss = "123"
    static let f = UIFont.systemFont(ofSize: 13, weight: .regular)
    static var cf: CGFloat = 10
}

struct D {
    static let i = 10
    static let sss = "123"
    static let f = UIFont.systemFont(ofSize: 13, weight: .regular)
    static var cf: CGFloat = 10
}

class AA {
    let s = "123"
    let f = UIFont.systemFont(ofSize: 13, weight: .regular)
    var cf: CGFloat = 10
}

class BB {
    let s = "123"
    let f = UIFont.systemFont(ofSize: 13, weight: .regular)
    var cf: CGFloat = 10
}

struct CC {
    let s = "123"
    let f = UIFont.systemFont(ofSize: 13, weight: .regular)
    var cf: CGFloat = 10
}

struct DD {
    let s = "123"
    let f = UIFont.systemFont(ofSize: 13, weight: .regular)
    var cf: CGFloat = 10
}



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        
        let i1 = A.i
        let i2 = A.i
        let i3 = C.i
        let i4 = D.i
        
        
        
        let a1 = A.sss
        print(a1)
        let aa1 = a1
        print(aa1)
        let a2 = B.sss
        let a3 = C.sss
        let a4 = D.sss
        let a5 = AA().s
        let a6 = BB().s
        let a7 = CC().s
        let a8 = DD().s
        
        
        
        
        
        
        
        print(addressOf(A.sss))
        print(addressOf(B.sss))
        print(addressOf(C.sss))
        print(addressOf(D.sss))
        print(addressOf(AA().s))
        print(addressOf(BB().s))
        print(addressOf(CC().s))
        print(addressOf(DD().s))
        print("-----------------")
//        print(addressOf(A.f))
//        print(addressOf(B.f))
//        print(addressOf(C.f))
//        print(addressOf(D.f))
//        print(addressOf(AA().f))
//        print(addressOf(BB().f))
//        print(addressOf(CC().f))
//        print(addressOf(DD().f))
//
//        print("-----------------")
//        print(addressOf(&A.cf))
//        print(addressOf(&B.cf))
//        print(addressOf(&C.cf))
//        print(addressOf(&D.cf))
//        print(addressOf(&AA().cf))
//        print(addressOf(&BB().cf))
//        print(addressOf(CC().&cf))
//        print(addressOf(DD().&cf))
    }
}

func addressOf(_ o: UnsafeRawPointer) -> String {
    let addr = Int(bitPattern: o)
//    print(o, ", ", addr)
    return String(format: "%p", addr)
}

func addressOf<T: AnyObject>(_ o: T) -> String {
    let addr = unsafeBitCast(o, to: Int.self)
//    print(o, ", ", addr)
    return String(format:"%p", addr)
}
