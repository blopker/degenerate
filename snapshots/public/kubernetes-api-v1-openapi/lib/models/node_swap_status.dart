// GENERATED CODE - DO NOT MODIFY BY HAND

/// NodeSwapStatus represents swap memory information.
final class NodeSwapStatus {const NodeSwapStatus({this.capacity});

factory NodeSwapStatus.fromJson(Map<String, dynamic> json) { return NodeSwapStatus(
  capacity: json['capacity'] != null ? (json['capacity'] as num).toInt() : null,
); }

/// Total amount of swap memory in bytes.
final int? capacity;

Map<String, dynamic> toJson() { return {
  'capacity': ?capacity,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
NodeSwapStatus copyWith({int Function()? capacity}) { return NodeSwapStatus(
  capacity: capacity != null ? capacity() : this.capacity,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is NodeSwapStatus &&
          capacity == other.capacity; } 
@override int get hashCode { return capacity.hashCode; } 
@override String toString() { return 'NodeSwapStatus(capacity: $capacity)'; } 
 }
