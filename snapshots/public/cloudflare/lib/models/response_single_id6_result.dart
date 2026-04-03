// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'speed_identifier.dart';@immutable final class ResponseSingleId6Result {const ResponseSingleId6Result({required this.id});

factory ResponseSingleId6Result.fromJson(Map<String, dynamic> json) { return ResponseSingleId6Result(
  id: SpeedIdentifier.fromJson(json['id'] as String),
); }

final SpeedIdentifier id;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id'); } 
ResponseSingleId6Result copyWith({SpeedIdentifier? id}) { return ResponseSingleId6Result(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseSingleId6Result &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'ResponseSingleId6Result(id: $id)'; } 
 }
