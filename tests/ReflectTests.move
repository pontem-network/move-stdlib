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
        let (mod_address, mod_name, type_name) = Reflect::type_of<Option<u8>>();
        assert!(mod_address == @Std, 1);
        assert!(mod_name == b"Option", 2);
        assert!(type_name == b"Option", 2);
    }

    #[test]
    fun test_custom_module() {
        let (mod_address, mod_name, type_name) = Reflect::type_of<Module::S>();
        assert!(mod_address == @0x42, 1);
        assert!(mod_name == b"Module", 2);
        assert!(type_name == b"S", 2);
    }
}
