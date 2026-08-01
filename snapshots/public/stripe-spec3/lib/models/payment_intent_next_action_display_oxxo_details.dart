// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentIntentNextActionDisplayOxxoDetails {const PaymentIntentNextActionDisplayOxxoDetails({this.expiresAfter = const Omittable.absent(), this.hostedVoucherUrl = const Omittable.absent(), this.number = const Omittable.absent(), });

factory PaymentIntentNextActionDisplayOxxoDetails.fromJson(Map<String, dynamic> json) { return PaymentIntentNextActionDisplayOxxoDetails(
  expiresAfter: json.containsKey('expires_after') ? Omittable(json['expires_after'] != null ? (json['expires_after'] as num).toInt() : null) : const Omittable.absent(),
  hostedVoucherUrl: json.containsKey('hosted_voucher_url') ? Omittable(json['hosted_voucher_url'] as String?) : const Omittable.absent(),
  number: json.containsKey('number') ? Omittable(json['number'] as String?) : const Omittable.absent(),
); }

/// The timestamp after which the OXXO voucher expires.
final Omittable<int?> expiresAfter;

/// The URL for the hosted OXXO voucher page, which allows customers to view and print an OXXO voucher.
final Omittable<String?> hostedVoucherUrl;

/// OXXO reference number.
final Omittable<String?> number;

Map<String, dynamic> toJson() { return {
  if (expiresAfter.isPresent) 'expires_after': expiresAfter.value,
  if (hostedVoucherUrl.isPresent) 'hosted_voucher_url': hostedVoucherUrl.value,
  if (number.isPresent) 'number': number.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'expires_after', 'hosted_voucher_url', 'number'}.contains(key)); } 
PaymentIntentNextActionDisplayOxxoDetails copyWith({Omittable<int?>? expiresAfter, Omittable<String?>? hostedVoucherUrl, Omittable<String?>? number, }) { return PaymentIntentNextActionDisplayOxxoDetails(
  expiresAfter: expiresAfter ?? this.expiresAfter,
  hostedVoucherUrl: hostedVoucherUrl ?? this.hostedVoucherUrl,
  number: number ?? this.number,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentNextActionDisplayOxxoDetails &&
          expiresAfter == other.expiresAfter &&
          hostedVoucherUrl == other.hostedVoucherUrl &&
          number == other.number; } 
@override int get hashCode { return Object.hash(expiresAfter, hostedVoucherUrl, number); } 
@override String toString() { return 'PaymentIntentNextActionDisplayOxxoDetails(expiresAfter: $expiresAfter, hostedVoucherUrl: $hostedVoucherUrl, number: $number)'; } 
 }
