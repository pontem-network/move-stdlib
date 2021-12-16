module Std::Reflect {
    /// Return module address, module name, and type of `Instance`.
    public native fun type_of<Type>(): (address, vector<u8>, vector<u8>);
}
