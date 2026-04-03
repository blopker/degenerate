// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secondary_dns_components_schemas_identifier.dart';@immutable final class SecondaryDnsComponentsSchemasIdResponseResult {const SecondaryDnsComponentsSchemasIdResponseResult({this.id});

factory SecondaryDnsComponentsSchemasIdResponseResult.fromJson(Map<String, dynamic> json) { return SecondaryDnsComponentsSchemasIdResponseResult(
  id: json['id'] != null ? SecondaryDnsComponentsSchemasIdentifier.fromJson(json['id'] as String) : null,
); }

final SecondaryDnsComponentsSchemasIdentifier? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
SecondaryDnsComponentsSchemasIdResponseResult copyWith({SecondaryDnsComponentsSchemasIdentifier Function()? id}) { return SecondaryDnsComponentsSchemasIdResponseResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecondaryDnsComponentsSchemasIdResponseResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'SecondaryDnsComponentsSchemasIdResponseResult(id: $id)'; } 
 }
