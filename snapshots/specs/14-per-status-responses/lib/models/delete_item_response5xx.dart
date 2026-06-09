// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DeleteItemResponse5xx {const DeleteItemResponse5xx({required this.trace});

factory DeleteItemResponse5xx.fromJson(Map<String, dynamic> json) { return DeleteItemResponse5xx(
  trace: json['trace'] as String,
); }

final String trace;

Map<String, dynamic> toJson() { return {
  'trace': trace,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('trace') && json['trace'] is String; } 
DeleteItemResponse5xx copyWith({String? trace}) { return DeleteItemResponse5xx(
  trace: trace ?? this.trace,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeleteItemResponse5xx &&
          trace == other.trace; } 
@override int get hashCode { return trace.hashCode; } 
@override String toString() { return 'DeleteItemResponse5xx(trace: $trace)'; } 
 }
