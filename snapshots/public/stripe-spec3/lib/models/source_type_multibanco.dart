// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class SourceTypeMultibanco {const SourceTypeMultibanco({this.entity = const Omittable.absent(), this.reference = const Omittable.absent(), this.refundAccountHolderAddressCity = const Omittable.absent(), this.refundAccountHolderAddressCountry = const Omittable.absent(), this.refundAccountHolderAddressLine1 = const Omittable.absent(), this.refundAccountHolderAddressLine2 = const Omittable.absent(), this.refundAccountHolderAddressPostalCode = const Omittable.absent(), this.refundAccountHolderAddressState = const Omittable.absent(), this.refundAccountHolderName = const Omittable.absent(), this.refundIban = const Omittable.absent(), });

factory SourceTypeMultibanco.fromJson(Map<String, dynamic> json) { return SourceTypeMultibanco(
  entity: json.containsKey('entity') ? Omittable(json['entity'] as String?) : const Omittable.absent(),
  reference: json.containsKey('reference') ? Omittable(json['reference'] as String?) : const Omittable.absent(),
  refundAccountHolderAddressCity: json.containsKey('refund_account_holder_address_city') ? Omittable(json['refund_account_holder_address_city'] as String?) : const Omittable.absent(),
  refundAccountHolderAddressCountry: json.containsKey('refund_account_holder_address_country') ? Omittable(json['refund_account_holder_address_country'] as String?) : const Omittable.absent(),
  refundAccountHolderAddressLine1: json.containsKey('refund_account_holder_address_line1') ? Omittable(json['refund_account_holder_address_line1'] as String?) : const Omittable.absent(),
  refundAccountHolderAddressLine2: json.containsKey('refund_account_holder_address_line2') ? Omittable(json['refund_account_holder_address_line2'] as String?) : const Omittable.absent(),
  refundAccountHolderAddressPostalCode: json.containsKey('refund_account_holder_address_postal_code') ? Omittable(json['refund_account_holder_address_postal_code'] as String?) : const Omittable.absent(),
  refundAccountHolderAddressState: json.containsKey('refund_account_holder_address_state') ? Omittable(json['refund_account_holder_address_state'] as String?) : const Omittable.absent(),
  refundAccountHolderName: json.containsKey('refund_account_holder_name') ? Omittable(json['refund_account_holder_name'] as String?) : const Omittable.absent(),
  refundIban: json.containsKey('refund_iban') ? Omittable(json['refund_iban'] as String?) : const Omittable.absent(),
); }

final Omittable<String?> entity;

final Omittable<String?> reference;

final Omittable<String?> refundAccountHolderAddressCity;

final Omittable<String?> refundAccountHolderAddressCountry;

final Omittable<String?> refundAccountHolderAddressLine1;

final Omittable<String?> refundAccountHolderAddressLine2;

final Omittable<String?> refundAccountHolderAddressPostalCode;

final Omittable<String?> refundAccountHolderAddressState;

final Omittable<String?> refundAccountHolderName;

final Omittable<String?> refundIban;

Map<String, dynamic> toJson() { return {
  if (entity.isPresent) 'entity': entity.value,
  if (reference.isPresent) 'reference': reference.value,
  if (refundAccountHolderAddressCity.isPresent) 'refund_account_holder_address_city': refundAccountHolderAddressCity.value,
  if (refundAccountHolderAddressCountry.isPresent) 'refund_account_holder_address_country': refundAccountHolderAddressCountry.value,
  if (refundAccountHolderAddressLine1.isPresent) 'refund_account_holder_address_line1': refundAccountHolderAddressLine1.value,
  if (refundAccountHolderAddressLine2.isPresent) 'refund_account_holder_address_line2': refundAccountHolderAddressLine2.value,
  if (refundAccountHolderAddressPostalCode.isPresent) 'refund_account_holder_address_postal_code': refundAccountHolderAddressPostalCode.value,
  if (refundAccountHolderAddressState.isPresent) 'refund_account_holder_address_state': refundAccountHolderAddressState.value,
  if (refundAccountHolderName.isPresent) 'refund_account_holder_name': refundAccountHolderName.value,
  if (refundIban.isPresent) 'refund_iban': refundIban.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'entity', 'reference', 'refund_account_holder_address_city', 'refund_account_holder_address_country', 'refund_account_holder_address_line1', 'refund_account_holder_address_line2', 'refund_account_holder_address_postal_code', 'refund_account_holder_address_state', 'refund_account_holder_name', 'refund_iban'}.contains(key)); } 
SourceTypeMultibanco copyWith({Omittable<String?>? entity, Omittable<String?>? reference, Omittable<String?>? refundAccountHolderAddressCity, Omittable<String?>? refundAccountHolderAddressCountry, Omittable<String?>? refundAccountHolderAddressLine1, Omittable<String?>? refundAccountHolderAddressLine2, Omittable<String?>? refundAccountHolderAddressPostalCode, Omittable<String?>? refundAccountHolderAddressState, Omittable<String?>? refundAccountHolderName, Omittable<String?>? refundIban, }) { return SourceTypeMultibanco(
  entity: entity ?? this.entity,
  reference: reference ?? this.reference,
  refundAccountHolderAddressCity: refundAccountHolderAddressCity ?? this.refundAccountHolderAddressCity,
  refundAccountHolderAddressCountry: refundAccountHolderAddressCountry ?? this.refundAccountHolderAddressCountry,
  refundAccountHolderAddressLine1: refundAccountHolderAddressLine1 ?? this.refundAccountHolderAddressLine1,
  refundAccountHolderAddressLine2: refundAccountHolderAddressLine2 ?? this.refundAccountHolderAddressLine2,
  refundAccountHolderAddressPostalCode: refundAccountHolderAddressPostalCode ?? this.refundAccountHolderAddressPostalCode,
  refundAccountHolderAddressState: refundAccountHolderAddressState ?? this.refundAccountHolderAddressState,
  refundAccountHolderName: refundAccountHolderName ?? this.refundAccountHolderName,
  refundIban: refundIban ?? this.refundIban,
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
