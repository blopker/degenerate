// GENERATED CODE - DO NOT MODIFY BY HAND

import 'secondary_dns_identifier.dart';final class SecondaryDnsIdResponseResult {const SecondaryDnsIdResponseResult({this.id});

factory SecondaryDnsIdResponseResult.fromJson(Map<String, dynamic> json) { return SecondaryDnsIdResponseResult(
  id: json['id'] != null ? SecondaryDnsIdentifier.fromJson(json['id'] as String) : null,
); }

final SecondaryDnsIdentifier? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
SecondaryDnsIdResponseResult copyWith({SecondaryDnsIdentifier Function()? id}) { return SecondaryDnsIdResponseResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecondaryDnsIdResponseResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'SecondaryDnsIdResponseResult(id: $id)'; } 
 }
