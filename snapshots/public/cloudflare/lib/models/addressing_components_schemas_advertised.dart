// GENERATED CODE - DO NOT MODIFY BY HAND

/// Advertisement status of the prefix. If `true`, the BGP route for the prefix is advertised to the Internet. If
/// `false`, the BGP route is withdrawn.
/// 
extension type const AddressingComponentsSchemasAdvertised(bool value) {
factory AddressingComponentsSchemasAdvertised.fromJson(bool json) => AddressingComponentsSchemasAdvertised(json);

bool toJson() => value;

}
