// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class NscFacilityInfo {const NscFacilityInfo({required this.address, required this.name, });

factory NscFacilityInfo.fromJson(Map<String, dynamic> json) { return NscFacilityInfo(
  address: (json['address'] as List<dynamic>).map((e) => e as String).toList(),
  name: json['name'] as String,
); }

final List<String> address;

final String name;

Map<String, dynamic> toJson() { return {
  'address': address,
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('address') &&
      json.containsKey('name') && json['name'] is String; } 
NscFacilityInfo copyWith({List<String>? address, String? name, }) { return NscFacilityInfo(
  address: address ?? this.address,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is NscFacilityInfo &&
          listEquals(address, other.address) &&
          name == other.name; } 
@override int get hashCode { return Object.hash(Object.hashAll(address), name); } 
@override String toString() { return 'NscFacilityInfo(address: $address, name: $name)'; } 
 }
