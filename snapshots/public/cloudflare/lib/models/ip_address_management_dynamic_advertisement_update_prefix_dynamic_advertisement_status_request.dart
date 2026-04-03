// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'addressing_components_schemas_advertised.dart';@immutable final class IpAddressManagementDynamicAdvertisementUpdatePrefixDynamicAdvertisementStatusRequest {const IpAddressManagementDynamicAdvertisementUpdatePrefixDynamicAdvertisementStatusRequest({required this.advertised});

factory IpAddressManagementDynamicAdvertisementUpdatePrefixDynamicAdvertisementStatusRequest.fromJson(Map<String, dynamic> json) { return IpAddressManagementDynamicAdvertisementUpdatePrefixDynamicAdvertisementStatusRequest(
  advertised: AddressingComponentsSchemasAdvertised.fromJson(json['advertised'] as bool),
); }

/// Advertisement status of the prefix. If `true`, the BGP route for the prefix is advertised to the Internet. If
/// `false`, the BGP route is withdrawn.
/// 
final AddressingComponentsSchemasAdvertised advertised;

Map<String, dynamic> toJson() { return {
  'advertised': advertised.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('advertised'); } 
IpAddressManagementDynamicAdvertisementUpdatePrefixDynamicAdvertisementStatusRequest copyWith({AddressingComponentsSchemasAdvertised? advertised}) { return IpAddressManagementDynamicAdvertisementUpdatePrefixDynamicAdvertisementStatusRequest(
  advertised: advertised ?? this.advertised,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IpAddressManagementDynamicAdvertisementUpdatePrefixDynamicAdvertisementStatusRequest &&
          advertised == other.advertised; } 
@override int get hashCode { return advertised.hashCode; } 
@override String toString() { return 'IpAddressManagementDynamicAdvertisementUpdatePrefixDynamicAdvertisementStatusRequest(advertised: $advertised)'; } 
 }
