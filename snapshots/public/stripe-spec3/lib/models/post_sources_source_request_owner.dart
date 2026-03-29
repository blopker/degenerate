// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_sources_source_request_owner_address.dart';/// Information about the owner of the payment instrument that may be used or required by particular source types.
final class PostSourcesSourceRequestOwner {const PostSourcesSourceRequestOwner({this.address, this.email, this.name, this.phone, });

factory PostSourcesSourceRequestOwner.fromJson(Map<String, dynamic> json) { return PostSourcesSourceRequestOwner(
  address: json['address'] != null ? PostSourcesSourceRequestOwnerAddress.fromJson(json['address'] as Map<String, dynamic>) : null,
  email: json['email'] as String?,
  name: json['name'] as String?,
  phone: json['phone'] as String?,
); }

final PostSourcesSourceRequestOwnerAddress? address;

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
PostSourcesSourceRequestOwner copyWith({PostSourcesSourceRequestOwnerAddress Function()? address, String Function()? email, String Function()? name, String Function()? phone, }) { return PostSourcesSourceRequestOwner(
  address: address != null ? address() : this.address,
  email: email != null ? email() : this.email,
  name: name != null ? name() : this.name,
  phone: phone != null ? phone() : this.phone,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSourcesSourceRequestOwner &&
          address == other.address &&
          email == other.email &&
          name == other.name &&
          phone == other.phone; } 
@override int get hashCode { return Object.hash(address, email, name, phone); } 
@override String toString() { return 'PostSourcesSourceRequestOwner(address: $address, email: $email, name: $name, phone: $phone)'; } 
 }
