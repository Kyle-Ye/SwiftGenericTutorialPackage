@frozen
public struct DemoStruct<A> {
    public var var0: A
    public let var1: Int
    public let var2: String
    public let var3: Bool
        public init(var0: A, var1: Int, var2: String, var3: Bool) {
        self.var0 = var0
        self.var1 = var1
        self.var2 = var2
        self.var3 = var3
    }
}

public class DemoClass<A> {
    public var var0: A
    public let var1: Int
    public let var2: String
    public let var3: Bool

    public init(var0: A, var1: Int, var2: String, var3: Bool) {
        self.var0 = var0
        self.var1 = var1
        self.var2 = var2
        self.var3 = var3
    }
}
