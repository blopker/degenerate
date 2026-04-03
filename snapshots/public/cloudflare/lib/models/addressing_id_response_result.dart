// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'addressing_delegation_identifier.dart';@immutable final class AddressingIdResponseResult {const AddressingIdResponseResult({this.id});

factory AddressingIdResponseResult.fromJson(Map<String, dynamic> json) { return AddressingIdResponseResult(
  id: json['id'] != null ? AddressingDelegationIdentifier.fromJson(json['id'] as String) : null,
); }

/// Identifier of a Delegation.
final AddressingDelegationIdentifier? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
AddressingIdResponseResult copyWith({AddressingDelegationIdentifier Function()? id}) { return AddressingIdResponseResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AddressingIdResponseResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'AddressingIdResponseResult(id: $id)'; } 
 }
