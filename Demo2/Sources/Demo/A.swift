// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct A {
    static func main() {
        let s = DemoStruct(var0: 2, var1: 50, var2: "s")
        let c = DemoClass(var0: 1, var1: "50", var2: "c")
        let result = Kit.callP(s, c, 8)
        print(result)
    }
}
