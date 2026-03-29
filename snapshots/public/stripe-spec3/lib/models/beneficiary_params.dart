// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'beneficiary_params_public_name.dart';final class BeneficiaryParams {const BeneficiaryParams({required this.publicName});

factory BeneficiaryParams.fromJson(Map<String, dynamic> json) { return BeneficiaryParams(
  publicName: OneOf2.parse(json['public_name'], fromA: (v) => v as String, fromB: (v) => BeneficiaryParamsPublicNameVariant2.fromJson(v as String),),
); }

final BeneficiaryParamsPublicName publicName;

Map<String, dynamic> toJson() { return {
  'public_name': publicName.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('public_name'); } 
BeneficiaryParams copyWith({BeneficiaryParamsPublicName? publicName}) { return BeneficiaryParams(
  publicName: publicName ?? this.publicName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BeneficiaryParams &&
          publicName == other.publicName; } 
@override int get hashCode { return publicName.hashCode; } 
@override String toString() { return 'BeneficiaryParams(publicName: $publicName)'; } 
 }
