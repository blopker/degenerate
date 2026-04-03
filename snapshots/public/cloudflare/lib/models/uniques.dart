// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Uniques {const Uniques({this.all});

factory Uniques.fromJson(Map<String, dynamic> json) { return Uniques(
  all: json['all'] != null ? (json['all'] as num).toInt() : null,
); }

/// Total number of unique IP addresses within the time range.
final int? all;

Map<String, dynamic> toJson() { return {
  'all': ?all,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'all'}.contains(key)); } 
Uniques copyWith({int Function()? all}) { return Uniques(
  all: all != null ? all() : this.all,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Uniques &&
          all == other.all; } 
@override int get hashCode { return all.hashCode; } 
@override String toString() { return 'Uniques(all: $all)'; } 
 }
