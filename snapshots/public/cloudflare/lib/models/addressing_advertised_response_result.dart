// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'addressing_components_schemas_advertised.dart';import 'addressing_modified_at_nullable.dart';@immutable final class AddressingAdvertisedResponseResult {const AddressingAdvertisedResponseResult({this.advertised, this.advertisedModifiedAt, });

factory AddressingAdvertisedResponseResult.fromJson(Map<String, dynamic> json) { return AddressingAdvertisedResponseResult(
  advertised: json['advertised'] != null ? AddressingComponentsSchemasAdvertised.fromJson(json['advertised'] as bool) : null,
  advertisedModifiedAt: json['advertised_modified_at'] != null ? AddressingModifiedAtNullable.fromJson(json['advertised_modified_at'] as String) : null,
); }

final AddressingComponentsSchemasAdvertised? advertised;

final AddressingModifiedAtNullable? advertisedModifiedAt;

Map<String, dynamic> toJson() { return {
  if (advertised != null) 'advertised': advertised?.toJson(),
  if (advertisedModifiedAt != null) 'advertised_modified_at': advertisedModifiedAt?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'advertised', 'advertised_modified_at'}.contains(key)); } 
AddressingAdvertisedResponseResult copyWith({AddressingComponentsSchemasAdvertised Function()? advertised, AddressingModifiedAtNullable? Function()? advertisedModifiedAt, }) { return AddressingAdvertisedResponseResult(
  advertised: advertised != null ? advertised() : this.advertised,
  advertisedModifiedAt: advertisedModifiedAt != null ? advertisedModifiedAt() : this.advertisedModifiedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AddressingAdvertisedResponseResult &&
          advertised == other.advertised &&
          advertisedModifiedAt == other.advertisedModifiedAt; } 
@override int get hashCode { return Object.hash(advertised, advertisedModifiedAt); } 
@override String toString() { return 'AddressingAdvertisedResponseResult(advertised: $advertised, advertisedModifiedAt: $advertisedModifiedAt)'; } 
 }
