// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostIssuingCardsCardRequestShippingAddress {const PostIssuingCardsCardRequestShippingAddress({required this.city, required this.country, required this.line1, required this.postalCode, this.line2, this.state, });

factory PostIssuingCardsCardRequestShippingAddress.fromJson(Map<String, dynamic> json) { return PostIssuingCardsCardRequestShippingAddress(
  city: json['city'] as String,
  country: json['country'] as String,
  line1: json['line1'] as String,
  line2: json['line2'] as String?,
  postalCode: json['postal_code'] as String,
  state: json['state'] as String?,
); }

final String city;

final String country;

final String line1;

final String? line2;

final String postalCode;

final String? state;

Map<String, dynamic> toJson() { return {
  'city': city,
  'country': country,
  'line1': line1,
  'line2': ?line2,
  'postal_code': postalCode,
  'state': ?state,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('city') && json['city'] is String &&
      json.containsKey('country') && json['country'] is String &&
      json.containsKey('line1') && json['line1'] is String &&
      json.containsKey('postal_code') && json['postal_code'] is String; } 
PostIssuingCardsCardRequestShippingAddress copyWith({String? city, String? country, String? line1, String Function()? line2, String? postalCode, String Function()? state, }) { return PostIssuingCardsCardRequestShippingAddress(
  city: city ?? this.city,
  country: country ?? this.country,
  line1: line1 ?? this.line1,
  line2: line2 != null ? line2() : this.line2,
  postalCode: postalCode ?? this.postalCode,
  state: state != null ? state() : this.state,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostIssuingCardsCardRequestShippingAddress &&
          city == other.city &&
          country == other.country &&
          line1 == other.line1 &&
          line2 == other.line2 &&
          postalCode == other.postalCode &&
          state == other.state; } 
@override int get hashCode { return Object.hash(city, country, line1, line2, postalCode, state); } 
@override String toString() { return 'PostIssuingCardsCardRequestShippingAddress(city: $city, country: $country, line1: $line1, line2: $line2, postalCode: $postalCode, state: $state)'; } 
 }
