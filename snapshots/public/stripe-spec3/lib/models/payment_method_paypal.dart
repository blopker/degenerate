// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class PaymentMethodPaypal {const PaymentMethodPaypal({this.country, this.payerEmail, this.payerId, });

factory PaymentMethodPaypal.fromJson(Map<String, dynamic> json) { return PaymentMethodPaypal(
  country: json['country'] as String?,
  payerEmail: json['payer_email'] as String?,
  payerId: json['payer_id'] as String?,
); }

/// Two-letter ISO code representing the buyer's country. Values are provided by PayPal directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
final String? country;

/// Owner's email. Values are provided by PayPal directly
/// (if supported) at the time of authorization or settlement. They cannot be set or mutated.
final String? payerEmail;

/// PayPal account PayerID. This identifier uniquely identifies the PayPal customer.
final String? payerId;

Map<String, dynamic> toJson() { return {
  'country': ?country,
  'payer_email': ?payerEmail,
  'payer_id': ?payerId,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentMethodPaypal copyWith({String? Function()? country, String? Function()? payerEmail, String? Function()? payerId, }) { return PaymentMethodPaypal(
  country: country != null ? country() : this.country,
  payerEmail: payerEmail != null ? payerEmail() : this.payerEmail,
  payerId: payerId != null ? payerId() : this.payerId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodPaypal &&
          country == other.country &&
          payerEmail == other.payerEmail &&
          payerId == other.payerId; } 
@override int get hashCode { return Object.hash(country, payerEmail, payerId); } 
@override String toString() { return 'PaymentMethodPaypal(country: $country, payerEmail: $payerEmail, payerId: $payerId)'; } 
 }
