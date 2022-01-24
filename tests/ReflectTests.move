module 0x42::Module {
    struct S {}
}

#[test_only]
module Std::ReflectTests {
    use Std::Reflect;
    use Std::Option::Option;
    use 0x42::Module;

    #[test]
    fun test_std_modules_publisher() {
        assert!(Reflect::mod_address_of<Option<u8>>() == @Std, 1);
        assert!(Reflect::mod_name_of<Option<u8>>() == b"Option", 2);
        assert!(Reflect::type_name_of<Option<u8>>() == b"Option", 2);
    }

    #[test]
    fun test_custom_module() {
        assert!(Reflect::mod_address_of<Module::S>() == @0x42, 1);
        assert!(Reflect::mod_name_of<Module::S>() == b"Module", 2);
        assert!(Reflect::type_name_of<Module::S>() == b"S", 2);
    }
}
