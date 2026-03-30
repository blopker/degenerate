// GENERATED CODE - DO NOT MODIFY BY HAND

import 'addressing_identifier.dart';import 'addressing_kind.dart';final class AddressingAddressMapsMembershipRequest {const AddressingAddressMapsMembershipRequest({this.identifier, this.kind, });

factory AddressingAddressMapsMembershipRequest.fromJson(Map<String, dynamic> json) { return AddressingAddressMapsMembershipRequest(
  identifier: json['identifier'] != null ? AddressingIdentifier.fromJson(json['identifier'] as String) : null,
  kind: json['kind'] != null ? AddressingKind.fromJson(json['kind'] as String) : null,
); }

final AddressingIdentifier? identifier;

final AddressingKind? kind;

Map<String, dynamic> toJson() { return {
  if (identifier != null) 'identifier': identifier?.toJson(),
  if (kind != null) 'kind': kind?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'identifier', 'kind'}.contains(key)); } 
AddressingAddressMapsMembershipRequest copyWith({AddressingIdentifier Function()? identifier, AddressingKind Function()? kind, }) { return AddressingAddressMapsMembershipRequest(
  identifier: identifier != null ? identifier() : this.identifier,
  kind: kind != null ? kind() : this.kind,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AddressingAddressMapsMembershipRequest &&
          identifier == other.identifier &&
          kind == other.kind; } 
@override int get hashCode { return Object.hash(identifier, kind); } 
@override String toString() { return 'AddressingAddressMapsMembershipRequest(identifier: $identifier, kind: $kind)'; } 
 }
