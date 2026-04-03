// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'addressing_ipam_prefixes.dart';@immutable final class AddressingResponseCollection {const AddressingResponseCollection({this.result});

factory AddressingResponseCollection.fromJson(Map<String, dynamic> json) { return AddressingResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => AddressingIpamPrefixes.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AddressingIpamPrefixes>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AddressingResponseCollection copyWith({List<AddressingIpamPrefixes> Function()? result}) { return AddressingResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AddressingResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'AddressingResponseCollection(result: $result)'; } 
 }
