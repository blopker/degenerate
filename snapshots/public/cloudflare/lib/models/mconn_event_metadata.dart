// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class MconnEventMetadata {const MconnEventMetadata({required this.a, required this.k, required this.n, required this.t, });

factory MconnEventMetadata.fromJson(Map<String, dynamic> json) { return MconnEventMetadata(
  a: (json['a'] as num).toDouble(),
  k: json['k'] as String,
  n: (json['n'] as num).toDouble(),
  t: (json['t'] as num).toDouble(),
); }

/// Time the Event was collected (seconds since the Unix epoch)
final double a;

/// Kind
final String k;

/// Sequence number, used to order events with the same timestamp
final double n;

/// Time the Event was recorded (seconds since the Unix epoch)
final double t;

Map<String, dynamic> toJson() { return {
  'a': a,
  'k': k,
  'n': n,
  't': t,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('a') && json['a'] is num &&
      json.containsKey('k') && json['k'] is String &&
      json.containsKey('n') && json['n'] is num &&
      json.containsKey('t') && json['t'] is num; } 
MconnEventMetadata copyWith({double? a, String? k, double? n, double? t, }) { return MconnEventMetadata(
  a: a ?? this.a,
  k: k ?? this.k,
  n: n ?? this.n,
  t: t ?? this.t,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnEventMetadata &&
          a == other.a &&
          k == other.k &&
          n == other.n &&
          t == other.t; } 
@override int get hashCode { return Object.hash(a, k, n, t); } 
@override String toString() { return 'MconnEventMetadata(a: $a, k: $k, n: $n, t: $t)'; } 
 }
