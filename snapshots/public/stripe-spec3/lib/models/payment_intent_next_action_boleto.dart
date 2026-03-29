// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class PaymentIntentNextActionBoleto {const PaymentIntentNextActionBoleto({this.expiresAt, this.hostedVoucherUrl, this.number, this.pdf, });

factory PaymentIntentNextActionBoleto.fromJson(Map<String, dynamic> json) { return PaymentIntentNextActionBoleto(
  expiresAt: json['expires_at'] != null ? (json['expires_at'] as num).toInt() : null,
  hostedVoucherUrl: json['hosted_voucher_url'] as String?,
  number: json['number'] as String?,
  pdf: json['pdf'] as String?,
); }

/// The timestamp after which the boleto expires.
final int? expiresAt;

/// The URL to the hosted boleto voucher page, which allows customers to view the boleto voucher.
final String? hostedVoucherUrl;

/// The boleto number.
final String? number;

/// The URL to the downloadable boleto voucher PDF.
final String? pdf;

Map<String, dynamic> toJson() { return {
  'expires_at': ?expiresAt,
  'hosted_voucher_url': ?hostedVoucherUrl,
  'number': ?number,
  'pdf': ?pdf,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentIntentNextActionBoleto copyWith({int? Function()? expiresAt, String? Function()? hostedVoucherUrl, String? Function()? number, String? Function()? pdf, }) { return PaymentIntentNextActionBoleto(
  expiresAt: expiresAt != null ? expiresAt() : this.expiresAt,
  hostedVoucherUrl: hostedVoucherUrl != null ? hostedVoucherUrl() : this.hostedVoucherUrl,
  number: number != null ? number() : this.number,
  pdf: pdf != null ? pdf() : this.pdf,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentNextActionBoleto &&
          expiresAt == other.expiresAt &&
          hostedVoucherUrl == other.hostedVoucherUrl &&
          number == other.number &&
          pdf == other.pdf; } 
@override int get hashCode { return Object.hash(expiresAt, hostedVoucherUrl, number, pdf); } 
@override String toString() { return 'PaymentIntentNextActionBoleto(expiresAt: $expiresAt, hostedVoucherUrl: $hostedVoucherUrl, number: $number, pdf: $pdf)'; } 
 }
