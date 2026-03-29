// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class PaymentIntentNextActionDisplayOxxoDetails {const PaymentIntentNextActionDisplayOxxoDetails({this.expiresAfter, this.hostedVoucherUrl, this.number, });

factory PaymentIntentNextActionDisplayOxxoDetails.fromJson(Map<String, dynamic> json) { return PaymentIntentNextActionDisplayOxxoDetails(
  expiresAfter: json['expires_after'] != null ? (json['expires_after'] as num).toInt() : null,
  hostedVoucherUrl: json['hosted_voucher_url'] as String?,
  number: json['number'] as String?,
); }

/// The timestamp after which the OXXO voucher expires.
final int? expiresAfter;

/// The URL for the hosted OXXO voucher page, which allows customers to view and print an OXXO voucher.
final String? hostedVoucherUrl;

/// OXXO reference number.
final String? number;

Map<String, dynamic> toJson() { return {
  'expires_after': ?expiresAfter,
  'hosted_voucher_url': ?hostedVoucherUrl,
  'number': ?number,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentIntentNextActionDisplayOxxoDetails copyWith({int? Function()? expiresAfter, String? Function()? hostedVoucherUrl, String? Function()? number, }) { return PaymentIntentNextActionDisplayOxxoDetails(
  expiresAfter: expiresAfter != null ? expiresAfter() : this.expiresAfter,
  hostedVoucherUrl: hostedVoucherUrl != null ? hostedVoucherUrl() : this.hostedVoucherUrl,
  number: number != null ? number() : this.number,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentNextActionDisplayOxxoDetails &&
          expiresAfter == other.expiresAfter &&
          hostedVoucherUrl == other.hostedVoucherUrl &&
          number == other.number; } 
@override int get hashCode { return Object.hash(expiresAfter, hostedVoucherUrl, number); } 
@override String toString() { return 'PaymentIntentNextActionDisplayOxxoDetails(expiresAfter: $expiresAfter, hostedVoucherUrl: $hostedVoucherUrl, number: $number)'; } 
 }
