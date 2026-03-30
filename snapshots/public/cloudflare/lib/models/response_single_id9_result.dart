// GENERATED CODE - DO NOT MODIFY BY HAND

import 'zones_schemas_identifier.dart';final class ResponseSingleId9Result {const ResponseSingleId9Result({required this.id});

factory ResponseSingleId9Result.fromJson(Map<String, dynamic> json) { return ResponseSingleId9Result(
  id: ZonesSchemasIdentifier.fromJson(json['id'] as String),
); }

final ZonesSchemasIdentifier id;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id'); } 
ResponseSingleId9Result copyWith({ZonesSchemasIdentifier? id}) { return ResponseSingleId9Result(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseSingleId9Result &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'ResponseSingleId9Result(id: $id)'; } 
 }
