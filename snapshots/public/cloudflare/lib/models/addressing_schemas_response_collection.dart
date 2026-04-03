// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'addressing_ipam_delegations.dart';@immutable final class AddressingSchemasResponseCollection {const AddressingSchemasResponseCollection({this.result});

factory AddressingSchemasResponseCollection.fromJson(Map<String, dynamic> json) { return AddressingSchemasResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => AddressingIpamDelegations.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AddressingIpamDelegations>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AddressingSchemasResponseCollection copyWith({List<AddressingIpamDelegations> Function()? result}) { return AddressingSchemasResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AddressingSchemasResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'AddressingSchemasResponseCollection(result: $result)'; } 
 }
