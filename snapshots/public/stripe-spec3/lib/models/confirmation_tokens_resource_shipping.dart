// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'address.dart';/// 
@immutable final class ConfirmationTokensResourceShipping {const ConfirmationTokensResourceShipping({required this.address, required this.name, this.phone = const Omittable.absent(), });

factory ConfirmationTokensResourceShipping.fromJson(Map<String, dynamic> json) { return ConfirmationTokensResourceShipping(
  address: Address.fromJson(json['address'] as Map<String, dynamic>),
  name: json['name'] as String,
  phone: json.containsKey('phone') ? Omittable(json['phone'] as String?) : const Omittable.absent(),
); }

final Address address;

/// Recipient name.
final String name;

/// Recipient phone (including extension).
final Omittable<String?> phone;

Map<String, dynamic> toJson() { return {
  'address': address.toJson(),
  'name': name,
  if (phone.isPresent) 'phone': phone.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('address') &&
      json.containsKey('name') && json['name'] is String; } 
ConfirmationTokensResourceShipping copyWith({Address? address, String? name, Omittable<String?>? phone, }) { return ConfirmationTokensResourceShipping(
  address: address ?? this.address,
  name: name ?? this.name,
  phone: phone ?? this.phone,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ConfirmationTokensResourceShipping &&
          address == other.address &&
          name == other.name &&
          phone == other.phone; } 
@override int get hashCode { return Object.hash(address, name, phone); } 
@override String toString() { return 'ConfirmationTokensResourceShipping(address: $address, name: $name, phone: $phone)'; } 
 }
