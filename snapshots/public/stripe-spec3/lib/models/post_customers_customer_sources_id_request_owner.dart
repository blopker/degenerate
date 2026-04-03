// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_customers_customer_sources_id_request_owner_address.dart';@immutable final class PostCustomersCustomerSourcesIdRequestOwner {const PostCustomersCustomerSourcesIdRequestOwner({this.address, this.email, this.name, this.phone, });

factory PostCustomersCustomerSourcesIdRequestOwner.fromJson(Map<String, dynamic> json) { return PostCustomersCustomerSourcesIdRequestOwner(
  address: json['address'] != null ? PostCustomersCustomerSourcesIdRequestOwnerAddress.fromJson(json['address'] as Map<String, dynamic>) : null,
  email: json['email'] as String?,
  name: json['name'] as String?,
  phone: json['phone'] as String?,
); }

final PostCustomersCustomerSourcesIdRequestOwnerAddress? address;

final String? email;

final String? name;

final String? phone;

Map<String, dynamic> toJson() { return {
  if (address != null) 'address': address?.toJson(),
  'email': ?email,
  'name': ?name,
  'phone': ?phone,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'address', 'email', 'name', 'phone'}.contains(key)); } 
PostCustomersCustomerSourcesIdRequestOwner copyWith({PostCustomersCustomerSourcesIdRequestOwnerAddress Function()? address, String Function()? email, String Function()? name, String Function()? phone, }) { return PostCustomersCustomerSourcesIdRequestOwner(
  address: address != null ? address() : this.address,
  email: email != null ? email() : this.email,
  name: name != null ? name() : this.name,
  phone: phone != null ? phone() : this.phone,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCustomersCustomerSourcesIdRequestOwner &&
          address == other.address &&
          email == other.email &&
          name == other.name &&
          phone == other.phone; } 
@override int get hashCode { return Object.hash(address, email, name, phone); } 
@override String toString() { return 'PostCustomersCustomerSourcesIdRequestOwner(address: $address, email: $email, name: $name, phone: $phone)'; } 
 }
