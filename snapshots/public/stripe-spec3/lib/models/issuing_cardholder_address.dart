// GENERATED CODE - DO NOT MODIFY BY HAND

import 'address.dart';/// 
final class IssuingCardholderAddress {const IssuingCardholderAddress({required this.address});

factory IssuingCardholderAddress.fromJson(Map<String, dynamic> json) { return IssuingCardholderAddress(
  address: Address.fromJson(json['address'] as Map<String, dynamic>),
); }

final Address address;

Map<String, dynamic> toJson() { return {
  'address': address.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('address'); } 
IssuingCardholderAddress copyWith({Address? address}) { return IssuingCardholderAddress(
  address: address ?? this.address,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingCardholderAddress &&
          address == other.address; } 
@override int get hashCode { return address.hashCode; } 
@override String toString() { return 'IssuingCardholderAddress(address: $address)'; } 
 }
