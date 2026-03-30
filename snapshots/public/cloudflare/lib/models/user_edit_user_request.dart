// GENERATED CODE - DO NOT MODIFY BY HAND

import 'iam_country.dart';import 'iam_first_name.dart';import 'iam_last_name.dart';import 'iam_telephone.dart';import 'iam_zipcode.dart';final class UserEditUserRequest {const UserEditUserRequest({this.country, this.firstName, this.lastName, this.telephone, this.zipcode, });

factory UserEditUserRequest.fromJson(Map<String, dynamic> json) { return UserEditUserRequest(
  country: json['country'] != null ? IamCountry.fromJson(json['country'] as String) : null,
  firstName: json['first_name'] != null ? IamFirstName.fromJson(json['first_name'] as String) : null,
  lastName: json['last_name'] != null ? IamLastName.fromJson(json['last_name'] as String) : null,
  telephone: json['telephone'] != null ? IamTelephone.fromJson(json['telephone'] as String) : null,
  zipcode: json['zipcode'] != null ? IamZipcode.fromJson(json['zipcode'] as String) : null,
); }

/// The country in which the user lives.
final IamCountry? country;

/// User's first name
final IamFirstName? firstName;

/// User's last name
final IamLastName? lastName;

/// User's telephone number
final IamTelephone? telephone;

/// The zipcode or postal code where the user lives.
final IamZipcode? zipcode;

Map<String, dynamic> toJson() { return {
  if (country != null) 'country': country?.toJson(),
  if (firstName != null) 'first_name': firstName?.toJson(),
  if (lastName != null) 'last_name': lastName?.toJson(),
  if (telephone != null) 'telephone': telephone?.toJson(),
  if (zipcode != null) 'zipcode': zipcode?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'country', 'first_name', 'last_name', 'telephone', 'zipcode'}.contains(key)); } 
UserEditUserRequest copyWith({IamCountry? Function()? country, IamFirstName? Function()? firstName, IamLastName? Function()? lastName, IamTelephone? Function()? telephone, IamZipcode? Function()? zipcode, }) { return UserEditUserRequest(
  country: country != null ? country() : this.country,
  firstName: firstName != null ? firstName() : this.firstName,
  lastName: lastName != null ? lastName() : this.lastName,
  telephone: telephone != null ? telephone() : this.telephone,
  zipcode: zipcode != null ? zipcode() : this.zipcode,
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
