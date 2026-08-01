// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentMethodDetailsLink {const PaymentMethodDetailsLink({this.country = const Omittable.absent()});

factory PaymentMethodDetailsLink.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsLink(
  country: json.containsKey('country') ? Omittable(json['country'] as String?) : const Omittable.absent(),
); }

/// Two-letter ISO code representing the funding source country beneath the Link payment.
/// You could use this attribute to get a sense of international fees.
final Omittable<String?> country;

Map<String, dynamic> toJson() { return {
  if (country.isPresent) 'country': country.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'country'}.contains(key)); } 
PaymentMethodDetailsLink copyWith({Omittable<String?>? country}) { return PaymentMethodDetailsLink(
  country: country ?? this.country,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsLink &&
          country == other.country; } 
@override int get hashCode { return country.hashCode; } 
@override String toString() { return 'PaymentMethodDetailsLink(country: $country)'; } 
 }
