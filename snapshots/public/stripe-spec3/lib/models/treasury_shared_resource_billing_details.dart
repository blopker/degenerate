// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'address.dart';/// 
@immutable final class TreasurySharedResourceBillingDetails {const TreasurySharedResourceBillingDetails({required this.address, this.email = const Omittable.absent(), this.name = const Omittable.absent(), });

factory TreasurySharedResourceBillingDetails.fromJson(Map<String, dynamic> json) { return TreasurySharedResourceBillingDetails(
  address: Address.fromJson(json['address'] as Map<String, dynamic>),
  email: json.containsKey('email') ? Omittable(json['email'] as String?) : const Omittable.absent(),
  name: json.containsKey('name') ? Omittable(json['name'] as String?) : const Omittable.absent(),
); }

final Address address;

/// Email address.
final Omittable<String?> email;

/// Full name.
final Omittable<String?> name;

Map<String, dynamic> toJson() { return {
  'address': address.toJson(),
  if (email.isPresent) 'email': email.value,
  if (name.isPresent) 'name': name.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('address'); } 
TreasurySharedResourceBillingDetails copyWith({Address? address, Omittable<String?>? email, Omittable<String?>? name, }) { return TreasurySharedResourceBillingDetails(
  address: address ?? this.address,
  email: email ?? this.email,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TreasurySharedResourceBillingDetails &&
          address == other.address &&
          email == other.email &&
          name == other.name; } 
@override int get hashCode { return Object.hash(address, email, name); } 
@override String toString() { return 'TreasurySharedResourceBillingDetails(address: $address, email: $email, name: $name)'; } 
 }
