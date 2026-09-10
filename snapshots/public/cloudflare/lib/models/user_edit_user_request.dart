// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_country.dart';import 'iam_first_name.dart';import 'iam_last_name.dart';import 'iam_telephone.dart';import 'iam_zipcode.dart';@immutable final class UserEditUserRequest {const UserEditUserRequest({this.country = const Omittable.absent(), this.firstName = const Omittable.absent(), this.lastName = const Omittable.absent(), this.telephone = const Omittable.absent(), this.zipcode = const Omittable.absent(), });

factory UserEditUserRequest.fromJson(Map<String, dynamic> json) { return UserEditUserRequest(
  country: json.containsKey('country') ? Omittable(json['country'] != null ? IamCountry.fromJson(json['country'] as String) : null) : const Omittable.absent(),
  firstName: json.containsKey('first_name') ? Omittable(json['first_name'] != null ? IamFirstName.fromJson(json['first_name'] as String) : null) : const Omittable.absent(),
  lastName: json.containsKey('last_name') ? Omittable(json['last_name'] != null ? IamLastName.fromJson(json['last_name'] as String) : null) : const Omittable.absent(),
  telephone: json.containsKey('telephone') ? Omittable(json['telephone'] != null ? IamTelephone.fromJson(json['telephone'] as String) : null) : const Omittable.absent(),
  zipcode: json.containsKey('zipcode') ? Omittable(json['zipcode'] != null ? IamZipcode.fromJson(json['zipcode'] as String) : null) : const Omittable.absent(),
); }

/// The country in which the user lives.
final Omittable<IamCountry?> country;

/// User's first name
final Omittable<IamFirstName?> firstName;

/// User's last name
final Omittable<IamLastName?> lastName;

/// User's telephone number
final Omittable<IamTelephone?> telephone;

/// The zipcode or postal code where the user lives.
final Omittable<IamZipcode?> zipcode;

Map<String, dynamic> toJson() { return {
  if (country.isPresent) 'country': country.value?.toJson(),
  if (firstName.isPresent) 'first_name': firstName.value?.toJson(),
  if (lastName.isPresent) 'last_name': lastName.value?.toJson(),
  if (telephone.isPresent) 'telephone': telephone.value?.toJson(),
  if (zipcode.isPresent) 'zipcode': zipcode.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'country', 'first_name', 'last_name', 'telephone', 'zipcode'}.contains(key)); } 
UserEditUserRequest copyWith({Omittable<IamCountry?>? country, Omittable<IamFirstName?>? firstName, Omittable<IamLastName?>? lastName, Omittable<IamTelephone?>? telephone, Omittable<IamZipcode?>? zipcode, }) { return UserEditUserRequest(
  country: country ?? this.country,
  firstName: firstName ?? this.firstName,
  lastName: lastName ?? this.lastName,
  telephone: telephone ?? this.telephone,
  zipcode: zipcode ?? this.zipcode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UserEditUserRequest &&
          country == other.country &&
          firstName == other.firstName &&
          lastName == other.lastName &&
          telephone == other.telephone &&
          zipcode == other.zipcode; } 
@override int get hashCode { return Object.hash(country, firstName, lastName, telephone, zipcode); } 
@override String toString() { return 'UserEditUserRequest(country: $country, firstName: $firstName, lastName: $lastName, telephone: $telephone, zipcode: $zipcode)'; } 
 }
