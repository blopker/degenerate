// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'addressing_default_sni.dart';import 'addressing_enabled.dart';import 'addressing_schemas_description.dart';@immutable final class IpAddressManagementAddressMapsUpdateAddressMapRequest {const IpAddressManagementAddressMapsUpdateAddressMapRequest({this.defaultSni = const Omittable.absent(), this.description = const Omittable.absent(), this.enabled = const Omittable.absent(), });

factory IpAddressManagementAddressMapsUpdateAddressMapRequest.fromJson(Map<String, dynamic> json) { return IpAddressManagementAddressMapsUpdateAddressMapRequest(
  defaultSni: json.containsKey('default_sni') ? Omittable(json['default_sni'] != null ? AddressingDefaultSni.fromJson(json['default_sni'] as String) : null) : const Omittable.absent(),
  description: json.containsKey('description') ? Omittable(json['description'] != null ? AddressingSchemasDescription.fromJson(json['description'] as String) : null) : const Omittable.absent(),
  enabled: json.containsKey('enabled') ? Omittable(json['enabled'] != null ? AddressingEnabled.fromJson(json['enabled'] as bool) : null) : const Omittable.absent(),
); }

/// If you have legacy TLS clients which do not send the TLS server name indicator, then you can specify one default SNI on the map. If Cloudflare receives a TLS handshake from a client without an SNI, it will respond with the default SNI on those IPs. The default SNI can be any valid zone or subdomain owned by the account.
final Omittable<AddressingDefaultSni?> defaultSni;

/// An optional description field which may be used to describe the types of IPs or zones on the map.
final Omittable<AddressingSchemasDescription?> description;

/// Whether the Address Map is enabled or not. Cloudflare's DNS will not respond with IP addresses on an Address Map until the map is enabled.
final Omittable<AddressingEnabled?> enabled;

Map<String, dynamic> toJson() { return {
  if (defaultSni.isPresent) 'default_sni': defaultSni.value?.toJson(),
  if (description.isPresent) 'description': description.value?.toJson(),
  if (enabled.isPresent) 'enabled': enabled.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'default_sni', 'description', 'enabled'}.contains(key)); } 
IpAddressManagementAddressMapsUpdateAddressMapRequest copyWith({Omittable<AddressingDefaultSni?>? defaultSni, Omittable<AddressingSchemasDescription?>? description, Omittable<AddressingEnabled?>? enabled, }) { return IpAddressManagementAddressMapsUpdateAddressMapRequest(
  defaultSni: defaultSni ?? this.defaultSni,
  description: description ?? this.description,
  enabled: enabled ?? this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IpAddressManagementAddressMapsUpdateAddressMapRequest &&
          defaultSni == other.defaultSni &&
          description == other.description &&
          enabled == other.enabled; } 
@override int get hashCode { return Object.hash(defaultSni, description, enabled); } 
@override String toString() { return 'IpAddressManagementAddressMapsUpdateAddressMapRequest(defaultSni: $defaultSni, description: $description, enabled: $enabled)'; } 
 }
