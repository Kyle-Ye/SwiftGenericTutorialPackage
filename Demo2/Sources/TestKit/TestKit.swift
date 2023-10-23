public protocol P {
    func m1()
    var m2: Int { get }
}

extension Int: P {
    public func m1() { print(self) }
    public var m2: Int { self }
}

extension String: P {
    public func m1() { print(self) }
    public var m2: Int { Int(self, radix: 10) ?? 0 }
}

@frozen
public struct DemoStruct<A: P> {
    public var var0: Int
    public let var1: A
    public let var2: String

    public init(var0: Int, var1: A, var2: String) {
        self.var0 = var0
        self.var1 = var1
        self.var2 = var2
    }
}

public class DemoClass<A> {
    public var var0: Int
    public let var1: A
    public let var2: String

    public init(var0: Int, var1: A, var2: String) {
        self.var0 = var0
        self.var1 = var1
        self.var2 = var2
    }
}

@frozen
public struct Kit {
    @inlinable
    public static func callP<P1, P2>(_ s: DemoStruct<P1>, _ c: DemoClass<P2>, _ extra: Int) -> Int where P1: P, P2: P{
        s.var1.m1()
        c.var1.m1()
        return s.var1.m2 + c.var1.m2 + extra
    }
}
