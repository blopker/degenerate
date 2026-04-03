// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// NodeSwapStatus represents swap memory information.
@immutable final class NodeSwapStatus {const NodeSwapStatus({this.capacity});

factory NodeSwapStatus.fromJson(Map<String, dynamic> json) { return NodeSwapStatus(
  capacity: json['capacity'] != null ? (json['capacity'] as num).toInt() : null,
); }

/// Total amount of swap memory in bytes.
final int? capacity;

Map<String, dynamic> toJson() { return {
  'capacity': ?capacity,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'capacity'}.contains(key)); } 
NodeSwapStatus copyWith({int Function()? capacity}) { return NodeSwapStatus(
  capacity: capacity != null ? capacity() : this.capacity,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is NodeSwapStatus &&
          capacity == other.capacity; } 
@override int get hashCode { return capacity.hashCode; } 
@override String toString() { return 'NodeSwapStatus(capacity: $capacity)'; } 
 }
