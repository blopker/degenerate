// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentMethodDetailsLink {const PaymentMethodDetailsLink({this.country});

factory PaymentMethodDetailsLink.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsLink(
  country: json['country'] as String?,
); }

/// Two-letter ISO code representing the funding source country beneath the Link payment.
/// You could use this attribute to get a sense of international fees.
final String? country;

Map<String, dynamic> toJson() { return {
  'country': ?country,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'country'}.contains(key)); } 
PaymentMethodDetailsLink copyWith({String? Function()? country}) { return PaymentMethodDetailsLink(
  country: country != null ? country() : this.country,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsLink &&
          country == other.country; } 
@override int get hashCode { return country.hashCode; } 
@override String toString() { return 'PaymentMethodDetailsLink(country: $country)'; } 
 }
