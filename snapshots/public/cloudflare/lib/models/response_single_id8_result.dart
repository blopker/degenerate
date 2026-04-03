// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_identifier.dart';@immutable final class ResponseSingleId8Result {const ResponseSingleId8Result({required this.id});

factory ResponseSingleId8Result.fromJson(Map<String, dynamic> json) { return ResponseSingleId8Result(
  id: ZonesIdentifier.fromJson(json['id'] as String),
); }

final ZonesIdentifier id;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id'); } 
ResponseSingleId8Result copyWith({ZonesIdentifier? id}) { return ResponseSingleId8Result(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseSingleId8Result &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'ResponseSingleId8Result(id: $id)'; } 
 }
