// GENERATED CODE - DO NOT MODIFY BY HAND

import 'source_owner_address.dart';import 'source_owner_verified_address.dart';/// 
final class SourceOwner {const SourceOwner({this.address, this.email, this.name, this.phone, this.verifiedAddress, this.verifiedEmail, this.verifiedName, this.verifiedPhone, });

factory SourceOwner.fromJson(Map<String, dynamic> json) { return SourceOwner(
  address: json['address'] != null ? SourceOwnerAddress.fromJson(json['address'] as Map<String, dynamic>) : null,
  email: json['email'] as String?,
  name: json['name'] as String?,
  phone: json['phone'] as String?,
  verifiedAddress: json['verified_address'] != null ? SourceOwnerVerifiedAddress.fromJson(json['verified_address'] as Map<String, dynamic>) : null,
  verifiedEmail: json['verified_email'] as String?,
  verifiedName: json['verified_name'] as String?,
  verifiedPhone: json['verified_phone'] as String?,
); }

/// Owner's address.
final SourceOwnerAddress? address;

/// Owner's email address.
final String? email;

/// Owner's full name.
final String? name;

/// Owner's phone number (including extension).
final String? phone;

/// Verified owner's address. Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
final SourceOwnerVerifiedAddress? verifiedAddress;

/// Verified owner's email address. Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
final String? verifiedEmail;

/// Verified owner's full name. Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
final String? verifiedName;

/// Verified owner's phone number (including extension). Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
final String? verifiedPhone;

Map<String, dynamic> toJson() { return {
  if (address != null) 'address': address?.toJson(),
  'email': ?email,
  'name': ?name,
  'phone': ?phone,
  if (verifiedAddress != null) 'verified_address': verifiedAddress?.toJson(),
  'verified_email': ?verifiedEmail,
  'verified_name': ?verifiedName,
  'verified_phone': ?verifiedPhone,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'address', 'email', 'name', 'phone', 'verified_address', 'verified_email', 'verified_name', 'verified_phone'}.contains(key)); } 
SourceOwner copyWith({SourceOwnerAddress? Function()? address, String? Function()? email, String? Function()? name, String? Function()? phone, SourceOwnerVerifiedAddress? Function()? verifiedAddress, String? Function()? verifiedEmail, String? Function()? verifiedName, String? Function()? verifiedPhone, }) { return SourceOwner(
  address: address != null ? address() : this.address,
  email: email != null ? email() : this.email,
  name: name != null ? name() : this.name,
  phone: phone != null ? phone() : this.phone,
  verifiedAddress: verifiedAddress != null ? verifiedAddress() : this.verifiedAddress,
  verifiedEmail: verifiedEmail != null ? verifiedEmail() : this.verifiedEmail,
  verifiedName: verifiedName != null ? verifiedName() : this.verifiedName,
  verifiedPhone: verifiedPhone != null ? verifiedPhone() : this.verifiedPhone,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SourceOwner &&
          address == other.address &&
          email == other.email &&
          name == other.name &&
          phone == other.phone &&
          verifiedAddress == other.verifiedAddress &&
          verifiedEmail == other.verifiedEmail &&
          verifiedName == other.verifiedName &&
          verifiedPhone == other.verifiedPhone; } 
@override int get hashCode { return Object.hash(address, email, name, phone, verifiedAddress, verifiedEmail, verifiedName, verifiedPhone); } 
@override String toString() { return 'SourceOwner(address: $address, email: $email, name: $name, phone: $phone, verifiedAddress: $verifiedAddress, verifiedEmail: $verifiedEmail, verifiedName: $verifiedName, verifiedPhone: $verifiedPhone)'; } 
 }
