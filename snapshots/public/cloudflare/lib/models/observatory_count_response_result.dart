// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ObservatoryCountResponseResult {const ObservatoryCountResponseResult({this.count});

factory ObservatoryCountResponseResult.fromJson(Map<String, dynamic> json) { return ObservatoryCountResponseResult(
  count: json['count'] != null ? (json['count'] as num).toDouble() : null,
); }

/// Number of items affected.
final double? count;

Map<String, dynamic> toJson() { return {
  'count': ?count,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'count'}.contains(key)); } 
ObservatoryCountResponseResult copyWith({double Function()? count}) { return ObservatoryCountResponseResult(
  count: count != null ? count() : this.count,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ObservatoryCountResponseResult &&
          count == other.count; } 
@override int get hashCode { return count.hashCode; } 
@override String toString() { return 'ObservatoryCountResponseResult(count: $count)'; } 
 }
