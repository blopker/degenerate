// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_sources_request_owner_address.dart';/// Information about the owner of the payment instrument that may be used or required by particular source types.
final class PostSourcesRequestOwner {const PostSourcesRequestOwner({this.address, this.email, this.name, this.phone, });

factory PostSourcesRequestOwner.fromJson(Map<String, dynamic> json) { return PostSourcesRequestOwner(
  address: json['address'] != null ? PostSourcesRequestOwnerAddress.fromJson(json['address'] as Map<String, dynamic>) : null,
  email: json['email'] as String?,
  name: json['name'] as String?,
  phone: json['phone'] as String?,
); }

final PostSourcesRequestOwnerAddress? address;

final String? email;

final String? name;

final String? phone;

Map<String, dynamic> toJson() { return {
  if (address != null) 'address': address?.toJson(),
  'email': ?email,
  'name': ?name,
  'phone': ?phone,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostSourcesRequestOwner copyWith({PostSourcesRequestOwnerAddress Function()? address, String Function()? email, String Function()? name, String Function()? phone, }) { return PostSourcesRequestOwner(
  address: address != null ? address() : this.address,
  email: email != null ? email() : this.email,
  name: name != null ? name() : this.name,
  phone: phone != null ? phone() : this.phone,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSourcesRequestOwner &&
          address == other.address &&
          email == other.email &&
          name == other.name &&
          phone == other.phone; } 
@override int get hashCode { return Object.hash(address, email, name, phone); } 
@override String toString() { return 'PostSourcesRequestOwner(address: $address, email: $email, name: $name, phone: $phone)'; } 
 }
