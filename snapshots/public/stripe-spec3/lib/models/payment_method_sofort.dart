// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentMethodSofort {const PaymentMethodSofort({this.country = const Omittable.absent()});

factory PaymentMethodSofort.fromJson(Map<String, dynamic> json) { return PaymentMethodSofort(
  country: json.containsKey('country') ? Omittable(json['country'] as String?) : const Omittable.absent(),
); }

/// Two-letter ISO code representing the country the bank account is located in.
final Omittable<String?> country;

Map<String, dynamic> toJson() { return {
  if (country.isPresent) 'country': country.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'country'}.contains(key)); } 
PaymentMethodSofort copyWith({Omittable<String?>? country}) { return PaymentMethodSofort(
  country: country ?? this.country,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodSofort &&
          country == other.country; } 
@override int get hashCode { return country.hashCode; } 
@override String toString() { return 'PaymentMethodSofort(country: $country)'; } 
 }
