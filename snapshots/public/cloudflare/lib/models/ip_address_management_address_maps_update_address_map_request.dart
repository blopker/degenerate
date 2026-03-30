// GENERATED CODE - DO NOT MODIFY BY HAND

import 'addressing_default_sni.dart';import 'addressing_enabled.dart';import 'addressing_schemas_description.dart';final class IpAddressManagementAddressMapsUpdateAddressMapRequest {const IpAddressManagementAddressMapsUpdateAddressMapRequest({this.defaultSni, this.description, this.enabled, });

factory IpAddressManagementAddressMapsUpdateAddressMapRequest.fromJson(Map<String, dynamic> json) { return IpAddressManagementAddressMapsUpdateAddressMapRequest(
  defaultSni: json['default_sni'] != null ? AddressingDefaultSni.fromJson(json['default_sni'] as String) : null,
  description: json['description'] != null ? AddressingSchemasDescription.fromJson(json['description'] as String) : null,
  enabled: json['enabled'] != null ? AddressingEnabled.fromJson(json['enabled'] as bool) : null,
); }

/// If you have legacy TLS clients which do not send the TLS server name indicator, then you can specify one default SNI on the map. If Cloudflare receives a TLS handshake from a client without an SNI, it will respond with the default SNI on those IPs. The default SNI can be any valid zone or subdomain owned by the account.
final AddressingDefaultSni? defaultSni;

/// An optional description field which may be used to describe the types of IPs or zones on the map.
final AddressingSchemasDescription? description;

/// Whether the Address Map is enabled or not. Cloudflare's DNS will not respond with IP addresses on an Address Map until the map is enabled.
final AddressingEnabled? enabled;

Map<String, dynamic> toJson() { return {
  if (defaultSni != null) 'default_sni': defaultSni?.toJson(),
  if (description != null) 'description': description?.toJson(),
  if (enabled != null) 'enabled': enabled?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'default_sni', 'description', 'enabled'}.contains(key)); } 
IpAddressManagementAddressMapsUpdateAddressMapRequest copyWith({AddressingDefaultSni? Function()? defaultSni, AddressingSchemasDescription? Function()? description, AddressingEnabled? Function()? enabled, }) { return IpAddressManagementAddressMapsUpdateAddressMapRequest(
  defaultSni: defaultSni != null ? defaultSni() : this.defaultSni,
  description: description != null ? description() : this.description,
  enabled: enabled != null ? enabled() : this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IpAddressManagementAddressMapsUpdateAddressMapRequest &&
          defaultSni == other.defaultSni &&
          description == other.description &&
          enabled == other.enabled; } 
@override int get hashCode { return Object.hash(defaultSni, description, enabled); } 
@override String toString() { return 'IpAddressManagementAddressMapsUpdateAddressMapRequest(defaultSni: $defaultSni, description: $description, enabled: $enabled)'; } 
 }
