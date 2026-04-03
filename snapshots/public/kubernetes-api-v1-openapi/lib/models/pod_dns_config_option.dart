// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// PodDNSConfigOption defines DNS resolver options of a pod.
@immutable final class PodDnsConfigOption {const PodDnsConfigOption({this.name, this.value, });

factory PodDnsConfigOption.fromJson(Map<String, dynamic> json) { return PodDnsConfigOption(
  name: json['name'] as String?,
  value: json['value'] as String?,
); }

/// Name is this DNS resolver option's name. Required.
final String? name;

/// Value is this DNS resolver option's value.
final String? value;

Map<String, dynamic> toJson() { return {
  'name': ?name,
  'value': ?value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name', 'value'}.contains(key)); } 
PodDnsConfigOption copyWith({String Function()? name, String Function()? value, }) { return PodDnsConfigOption(
  name: name != null ? name() : this.name,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PodDnsConfigOption &&
          name == other.name &&
          value == other.value; } 
@override int get hashCode { return Object.hash(name, value); } 
@override String toString() { return 'PodDnsConfigOption(name: $name, value: $value)'; } 
 }
