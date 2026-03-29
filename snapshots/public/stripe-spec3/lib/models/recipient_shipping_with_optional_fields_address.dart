// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'recipient_shipping_with_optional_fields_address_address.dart';import 'recipient_shipping_with_optional_fields_address_phone.dart';final class RecipientShippingWithOptionalFieldsAddress {const RecipientShippingWithOptionalFieldsAddress({required this.address, required this.name, this.phone, });

factory RecipientShippingWithOptionalFieldsAddress.fromJson(Map<String, dynamic> json) { return RecipientShippingWithOptionalFieldsAddress(
  address: RecipientShippingWithOptionalFieldsAddressAddress.fromJson(json['address'] as Map<String, dynamic>),
  name: json['name'] as String,
  phone: json['phone'] != null ? OneOf2.parse(json['phone'], fromA: (v) => v as String, fromB: (v) => RecipientShippingWithOptionalFieldsAddressPhoneVariant2.fromJson(v as String),) : null,
); }

final RecipientShippingWithOptionalFieldsAddressAddress address;

final String name;

final RecipientShippingWithOptionalFieldsAddressPhone? phone;

Map<String, dynamic> toJson() { return {
  'address': address.toJson(),
  'name': name,
  if (phone != null) 'phone': phone?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('address') &&
      json.containsKey('name') && json['name'] is String; } 
RecipientShippingWithOptionalFieldsAddress copyWith({RecipientShippingWithOptionalFieldsAddressAddress? address, String? name, RecipientShippingWithOptionalFieldsAddressPhone Function()? phone, }) { return RecipientShippingWithOptionalFieldsAddress(
  address: address ?? this.address,
  name: name ?? this.name,
  phone: phone != null ? phone() : this.phone,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RecipientShippingWithOptionalFieldsAddress &&
          address == other.address &&
          name == other.name &&
          phone == other.phone; } 
@override int get hashCode { return Object.hash(address, name, phone); } 
@override String toString() { return 'RecipientShippingWithOptionalFieldsAddress(address: $address, name: $name, phone: $phone)'; } 
 }
