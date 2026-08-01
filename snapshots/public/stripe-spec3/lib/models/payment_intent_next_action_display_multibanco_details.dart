// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentIntentNextActionDisplayMultibancoDetails {const PaymentIntentNextActionDisplayMultibancoDetails({this.entity = const Omittable.absent(), this.expiresAt = const Omittable.absent(), this.hostedVoucherUrl = const Omittable.absent(), this.reference = const Omittable.absent(), });

factory PaymentIntentNextActionDisplayMultibancoDetails.fromJson(Map<String, dynamic> json) { return PaymentIntentNextActionDisplayMultibancoDetails(
  entity: json.containsKey('entity') ? Omittable(json['entity'] as String?) : const Omittable.absent(),
  expiresAt: json.containsKey('expires_at') ? Omittable(json['expires_at'] != null ? (json['expires_at'] as num).toInt() : null) : const Omittable.absent(),
  hostedVoucherUrl: json.containsKey('hosted_voucher_url') ? Omittable(json['hosted_voucher_url'] as String?) : const Omittable.absent(),
  reference: json.containsKey('reference') ? Omittable(json['reference'] as String?) : const Omittable.absent(),
); }

/// Entity number associated with this Multibanco payment.
final Omittable<String?> entity;

/// The timestamp at which the Multibanco voucher expires.
final Omittable<int?> expiresAt;

/// The URL for the hosted Multibanco voucher page, which allows customers to view a Multibanco voucher.
final Omittable<String?> hostedVoucherUrl;

/// Reference number associated with this Multibanco payment.
final Omittable<String?> reference;

Map<String, dynamic> toJson() { return {
  if (entity.isPresent) 'entity': entity.value,
  if (expiresAt.isPresent) 'expires_at': expiresAt.value,
  if (hostedVoucherUrl.isPresent) 'hosted_voucher_url': hostedVoucherUrl.value,
  if (reference.isPresent) 'reference': reference.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'entity', 'expires_at', 'hosted_voucher_url', 'reference'}.contains(key)); } 
PaymentIntentNextActionDisplayMultibancoDetails copyWith({Omittable<String?>? entity, Omittable<int?>? expiresAt, Omittable<String?>? hostedVoucherUrl, Omittable<String?>? reference, }) { return PaymentIntentNextActionDisplayMultibancoDetails(
  entity: entity ?? this.entity,
  expiresAt: expiresAt ?? this.expiresAt,
  hostedVoucherUrl: hostedVoucherUrl ?? this.hostedVoucherUrl,
  reference: reference ?? this.reference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentNextActionDisplayMultibancoDetails &&
          entity == other.entity &&
          expiresAt == other.expiresAt &&
          hostedVoucherUrl == other.hostedVoucherUrl &&
          reference == other.reference; } 
@override int get hashCode { return Object.hash(entity, expiresAt, hostedVoucherUrl, reference); } 
@override String toString() { return 'PaymentIntentNextActionDisplayMultibancoDetails(entity: $entity, expiresAt: $expiresAt, hostedVoucherUrl: $hostedVoucherUrl, reference: $reference)'; } 
 }
