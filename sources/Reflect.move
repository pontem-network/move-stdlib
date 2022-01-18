module Std::Reflect {
    /// Return module address, module name, and struct name of the `Type`.
    public native fun type_of<Type>(): (address, vector<u8>, vector<u8>);
}
