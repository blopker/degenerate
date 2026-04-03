// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'port.dart';@immutable final class GetGetOpenPortsResponseResult {const GetGetOpenPortsResponseResult({required this.$1111});

factory GetGetOpenPortsResponseResult.fromJson(Map<String, dynamic> json) { return GetGetOpenPortsResponseResult(
  $1111: (json['1.1.1.1'] as List<dynamic>).map((e) => Port.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<Port> $1111;

Map<String, dynamic> toJson() { return {
  '1.1.1.1': $1111.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('1.1.1.1'); } 
GetGetOpenPortsResponseResult copyWith({List<Port>? $1111}) { return GetGetOpenPortsResponseResult(
  $1111: $1111 ?? this.$1111,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetGetOpenPortsResponseResult &&
          listEquals($1111, other.$1111); } 
@override int get hashCode { return Object.hashAll($1111).hashCode; } 
@override String toString() { return 'GetGetOpenPortsResponseResult(\$1111: ${$1111})'; } 
 }
