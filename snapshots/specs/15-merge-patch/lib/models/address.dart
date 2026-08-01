// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Address {const Address({required this.street, this.city = const Omittable.absent(), });

factory Address.fromJson(Map<String, dynamic> json) { return Address(
  street: json['street'] as String,
  city: json.containsKey('city') ? Omittable(json['city'] as String?) : const Omittable.absent(),
); }

final String street;

final Omittable<String?> city;

Map<String, dynamic> toJson() { return {
  'street': street,
  if (city.isPresent) 'city': city.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('street') && json['street'] is String; } 
Address copyWith({String? street, Omittable<String?>? city, }) { return Address(
  street: street ?? this.street,
  city: city ?? this.city,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Address &&
          street == other.street &&
          city == other.city; } 
@override int get hashCode { return Object.hash(street, city); } 
@override String toString() { return 'Address(street: $street, city: $city)'; } 
 }
