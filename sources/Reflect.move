module Std::Reflect {
    struct TypeInfo has drop {
        addr: address,
        mod_name: vector<u8>,
        type_name: vector<u8>
    }

    public fun mod_address_of<Type>(): address {
        type_info<Type>().addr
    }

    public fun mod_name_of<Type>(): vector<u8> {
        *&type_info<Type>().mod_name
    }

    public fun type_name_of<Type>(): vector<u8> {
        *&type_info<Type>().type_name
    }

    public native fun type_info<Type>(): TypeInfo;
    spec type_info {
        pragma opaque;
    }
}
