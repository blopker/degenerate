// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_settings_identifier.dart';@immutable final class DnsViewsForAnAccountDeleteInternalDnsViewResponse4xxResult {const DnsViewsForAnAccountDeleteInternalDnsViewResponse4xxResult({this.id});

factory DnsViewsForAnAccountDeleteInternalDnsViewResponse4xxResult.fromJson(Map<String, dynamic> json) { return DnsViewsForAnAccountDeleteInternalDnsViewResponse4xxResult(
  id: json['id'] != null ? DnsSettingsIdentifier.fromJson(json['id'] as String) : null,
); }

/// Identifier.
final DnsSettingsIdentifier? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
DnsViewsForAnAccountDeleteInternalDnsViewResponse4xxResult copyWith({DnsSettingsIdentifier? Function()? id}) { return DnsViewsForAnAccountDeleteInternalDnsViewResponse4xxResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsViewsForAnAccountDeleteInternalDnsViewResponse4xxResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'DnsViewsForAnAccountDeleteInternalDnsViewResponse4xxResult(id: $id)'; } 
 }
