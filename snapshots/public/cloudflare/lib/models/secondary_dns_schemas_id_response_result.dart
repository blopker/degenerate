// GENERATED CODE - DO NOT MODIFY BY HAND

import 'secondary_dns_schemas_identifier.dart';final class SecondaryDnsSchemasIdResponseResult {const SecondaryDnsSchemasIdResponseResult({this.id});

factory SecondaryDnsSchemasIdResponseResult.fromJson(Map<String, dynamic> json) { return SecondaryDnsSchemasIdResponseResult(
  id: json['id'] != null ? SecondaryDnsSchemasIdentifier.fromJson(json['id'] as String) : null,
); }

final SecondaryDnsSchemasIdentifier? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
SecondaryDnsSchemasIdResponseResult copyWith({SecondaryDnsSchemasIdentifier Function()? id}) { return SecondaryDnsSchemasIdResponseResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecondaryDnsSchemasIdResponseResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'SecondaryDnsSchemasIdResponseResult(id: $id)'; } 
 }
