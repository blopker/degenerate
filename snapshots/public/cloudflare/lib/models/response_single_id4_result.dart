// GENERATED CODE - DO NOT MODIFY BY HAND

import 'iam_common_components_schemas_identifier.dart';final class ResponseSingleId4Result {const ResponseSingleId4Result({required this.id});

factory ResponseSingleId4Result.fromJson(Map<String, dynamic> json) { return ResponseSingleId4Result(
  id: IamCommonComponentsSchemasIdentifier.fromJson(json['id'] as String),
); }

final IamCommonComponentsSchemasIdentifier id;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id'); } 
ResponseSingleId4Result copyWith({IamCommonComponentsSchemasIdentifier? id}) { return ResponseSingleId4Result(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseSingleId4Result &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'ResponseSingleId4Result(id: $id)'; } 
 }
