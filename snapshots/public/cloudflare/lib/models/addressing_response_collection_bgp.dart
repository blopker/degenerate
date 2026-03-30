// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'addressing_ipam_bgp_prefixes.dart';final class AddressingResponseCollectionBgp {const AddressingResponseCollectionBgp({this.result});

factory AddressingResponseCollectionBgp.fromJson(Map<String, dynamic> json) { return AddressingResponseCollectionBgp(
  result: (json['result'] as List<dynamic>?)?.map((e) => AddressingIpamBgpPrefixes.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AddressingIpamBgpPrefixes>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AddressingResponseCollectionBgp copyWith({List<AddressingIpamBgpPrefixes> Function()? result}) { return AddressingResponseCollectionBgp(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AddressingResponseCollectionBgp &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'AddressingResponseCollectionBgp(result: $result)'; } 
 }
