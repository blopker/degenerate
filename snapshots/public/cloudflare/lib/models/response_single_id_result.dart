// GENERATED CODE - DO NOT MODIFY BY HAND

import 'cache_purge_identifier.dart';final class ResponseSingleIdResult {const ResponseSingleIdResult({required this.id});

factory ResponseSingleIdResult.fromJson(Map<String, dynamic> json) { return ResponseSingleIdResult(
  id: CachePurgeIdentifier.fromJson(json['id'] as String),
); }

final CachePurgeIdentifier id;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id'); } 
ResponseSingleIdResult copyWith({CachePurgeIdentifier? id}) { return ResponseSingleIdResult(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseSingleIdResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'ResponseSingleIdResult(id: $id)'; } 
 }
