// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'addressing_address_maps.dart';@immutable final class AddressingComponentsSchemasResponseCollection {const AddressingComponentsSchemasResponseCollection({this.result});

factory AddressingComponentsSchemasResponseCollection.fromJson(Map<String, dynamic> json) { return AddressingComponentsSchemasResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => AddressingAddressMaps.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AddressingAddressMaps>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AddressingComponentsSchemasResponseCollection copyWith({List<AddressingAddressMaps> Function()? result}) { return AddressingComponentsSchemasResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AddressingComponentsSchemasResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'AddressingComponentsSchemasResponseCollection(result: $result)'; } 
 }
