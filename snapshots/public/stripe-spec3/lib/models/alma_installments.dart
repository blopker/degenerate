// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class AlmaInstallments {const AlmaInstallments({required this.count});

factory AlmaInstallments.fromJson(Map<String, dynamic> json) { return AlmaInstallments(
  count: (json['count'] as num).toInt(),
); }

/// The number of installments.
final int count;

Map<String, dynamic> toJson() { return {
  'count': count,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('count') && json['count'] is num; } 
AlmaInstallments copyWith({int? count}) { return AlmaInstallments(
  count: count ?? this.count,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AlmaInstallments &&
          count == other.count; } 
@override int get hashCode { return count.hashCode; } 
@override String toString() { return 'AlmaInstallments(count: $count)'; } 
 }
