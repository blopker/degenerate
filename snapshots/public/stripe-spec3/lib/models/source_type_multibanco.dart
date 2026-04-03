// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class SourceTypeMultibanco {const SourceTypeMultibanco({this.entity, this.reference, this.refundAccountHolderAddressCity, this.refundAccountHolderAddressCountry, this.refundAccountHolderAddressLine1, this.refundAccountHolderAddressLine2, this.refundAccountHolderAddressPostalCode, this.refundAccountHolderAddressState, this.refundAccountHolderName, this.refundIban, });

factory SourceTypeMultibanco.fromJson(Map<String, dynamic> json) { return SourceTypeMultibanco(
  entity: json['entity'] as String?,
  reference: json['reference'] as String?,
  refundAccountHolderAddressCity: json['refund_account_holder_address_city'] as String?,
  refundAccountHolderAddressCountry: json['refund_account_holder_address_country'] as String?,
  refundAccountHolderAddressLine1: json['refund_account_holder_address_line1'] as String?,
  refundAccountHolderAddressLine2: json['refund_account_holder_address_line2'] as String?,
  refundAccountHolderAddressPostalCode: json['refund_account_holder_address_postal_code'] as String?,
  refundAccountHolderAddressState: json['refund_account_holder_address_state'] as String?,
  refundAccountHolderName: json['refund_account_holder_name'] as String?,
  refundIban: json['refund_iban'] as String?,
); }

final String? entity;

final String? reference;

final String? refundAccountHolderAddressCity;

final String? refundAccountHolderAddressCountry;

final String? refundAccountHolderAddressLine1;

final String? refundAccountHolderAddressLine2;

final String? refundAccountHolderAddressPostalCode;

final String? refundAccountHolderAddressState;

final String? refundAccountHolderName;

final String? refundIban;

Map<String, dynamic> toJson() { return {
  'entity': ?entity,
  'reference': ?reference,
  'refund_account_holder_address_city': ?refundAccountHolderAddressCity,
  'refund_account_holder_address_country': ?refundAccountHolderAddressCountry,
  'refund_account_holder_address_line1': ?refundAccountHolderAddressLine1,
  'refund_account_holder_address_line2': ?refundAccountHolderAddressLine2,
  'refund_account_holder_address_postal_code': ?refundAccountHolderAddressPostalCode,
  'refund_account_holder_address_state': ?refundAccountHolderAddressState,
  'refund_account_holder_name': ?refundAccountHolderName,
  'refund_iban': ?refundIban,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'entity', 'reference', 'refund_account_holder_address_city', 'refund_account_holder_address_country', 'refund_account_holder_address_line1', 'refund_account_holder_address_line2', 'refund_account_holder_address_postal_code', 'refund_account_holder_address_state', 'refund_account_holder_name', 'refund_iban'}.contains(key)); } 
SourceTypeMultibanco copyWith({String? Function()? entity, String? Function()? reference, String? Function()? refundAccountHolderAddressCity, String? Function()? refundAccountHolderAddressCountry, String? Function()? refundAccountHolderAddressLine1, String? Function()? refundAccountHolderAddressLine2, String? Function()? refundAccountHolderAddressPostalCode, String? Function()? refundAccountHolderAddressState, String? Function()? refundAccountHolderName, String? Function()? refundIban, }) { return SourceTypeMultibanco(
  entity: entity != null ? entity() : this.entity,
  reference: reference != null ? reference() : this.reference,
  refundAccountHolderAddressCity: refundAccountHolderAddressCity != null ? refundAccountHolderAddressCity() : this.refundAccountHolderAddressCity,
  refundAccountHolderAddressCountry: refundAccountHolderAddressCountry != null ? refundAccountHolderAddressCountry() : this.refundAccountHolderAddressCountry,
  refundAccountHolderAddressLine1: refundAccountHolderAddressLine1 != null ? refundAccountHolderAddressLine1() : this.refundAccountHolderAddressLine1,
  refundAccountHolderAddressLine2: refundAccountHolderAddressLine2 != null ? refundAccountHolderAddressLine2() : this.refundAccountHolderAddressLine2,
  refundAccountHolderAddressPostalCode: refundAccountHolderAddressPostalCode != null ? refundAccountHolderAddressPostalCode() : this.refundAccountHolderAddressPostalCode,
  refundAccountHolderAddressState: refundAccountHolderAddressState != null ? refundAccountHolderAddressState() : this.refundAccountHolderAddressState,
  refundAccountHolderName: refundAccountHolderName != null ? refundAccountHolderName() : this.refundAccountHolderName,
  refundIban: refundIban != null ? refundIban() : this.refundIban,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SourceTypeMultibanco &&
          entity == other.entity &&
          reference == other.reference &&
          refundAccountHolderAddressCity == other.refundAccountHolderAddressCity &&
          refundAccountHolderAddressCountry == other.refundAccountHolderAddressCountry &&
          refundAccountHolderAddressLine1 == other.refundAccountHolderAddressLine1 &&
          refundAccountHolderAddressLine2 == other.refundAccountHolderAddressLine2 &&
          refundAccountHolderAddressPostalCode == other.refundAccountHolderAddressPostalCode &&
          refundAccountHolderAddressState == other.refundAccountHolderAddressState &&
          refundAccountHolderName == other.refundAccountHolderName &&
          refundIban == other.refundIban; } 
@override int get hashCode { return Object.hash(entity, reference, refundAccountHolderAddressCity, refundAccountHolderAddressCountry, refundAccountHolderAddressLine1, refundAccountHolderAddressLine2, refundAccountHolderAddressPostalCode, refundAccountHolderAddressState, refundAccountHolderName, refundIban); } 
@override String toString() { return 'SourceTypeMultibanco(entity: $entity, reference: $reference, refundAccountHolderAddressCity: $refundAccountHolderAddressCity, refundAccountHolderAddressCountry: $refundAccountHolderAddressCountry, refundAccountHolderAddressLine1: $refundAccountHolderAddressLine1, refundAccountHolderAddressLine2: $refundAccountHolderAddressLine2, refundAccountHolderAddressPostalCode: $refundAccountHolderAddressPostalCode, refundAccountHolderAddressState: $refundAccountHolderAddressState, refundAccountHolderName: $refundAccountHolderName, refundIban: $refundIban)'; } 
 }
