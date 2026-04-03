// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_operation.dart';@immutable final class ShieldMultipleOperationResponsePaginated {const ShieldMultipleOperationResponsePaginated({required this.result});

factory ShieldMultipleOperationResponsePaginated.fromJson(Map<String, dynamic> json) { return ShieldMultipleOperationResponsePaginated(
  result: (json['result'] as List<dynamic>).map((e) => ShieldOperation.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<ShieldOperation> result;

Map<String, dynamic> toJson() { return {
  'result': result.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
ShieldMultipleOperationResponsePaginated copyWith({List<ShieldOperation>? result}) { return ShieldMultipleOperationResponsePaginated(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldMultipleOperationResponsePaginated &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result).hashCode; } 
@override String toString() { return 'ShieldMultipleOperationResponsePaginated(result: $result)'; } 
 }
