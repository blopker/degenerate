// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Address.
extension type const Address(String value) {
factory Address.fromJson(String json) => Address(json);

String toJson() => value;

}
/// Optional address line for unit, floor, suite, etc.
extension type const Address2(String value) {
factory Address2.fromJson(String json) => Address2(json);

String toJson() => value;

}
/// City.
extension type const City(String value) {
factory City.fromJson(String json) => City(json);

String toJson() => value;

}
/// Contact Identifier.
extension type const ContactIdentifier(String value) {
factory ContactIdentifier.fromJson(String json) => ContactIdentifier(json);

String toJson() => value;

}
/// The country in which the user lives.
extension type const Country(String value) {
factory Country.fromJson(String json) => Country(json);

String toJson() => value;

}
/// The contact email address of the user.
extension type const Email(String value) {
factory Email.fromJson(String json) => Email(json);

String toJson() => value;

}
/// Contact fax number.
extension type const Fax(String value) {
factory Fax.fromJson(String json) => Fax(json);

String toJson() => value;

}
/// User's first name
extension type const FirstName(String value) {
factory FirstName.fromJson(String json) => FirstName(json);

String toJson() => value;

}
/// User's last name
extension type const LastName(String value) {
factory LastName.fromJson(String json) => LastName(json);

String toJson() => value;

}
/// Name of organization.
extension type const Organization2(String value) {
factory Organization2.fromJson(String json) => Organization2(json);

String toJson() => value;

}
/// State.
extension type const State2(String value) {
factory State2.fromJson(String json) => State2(json);

String toJson() => value;

}
/// User's telephone number
extension type const Telephone(String value) {
factory Telephone.fromJson(String json) => Telephone(json);

String toJson() => value;

}
/// The zipcode or postal code where the user lives.
extension type const Zipcode(String value) {
factory Zipcode.fromJson(String json) => Zipcode(json);

String toJson() => value;

}
@immutable final class ContactProperties {const ContactProperties({required this.address, required this.city, required this.country, required this.firstName, required this.lastName, required this.organization, required this.phone, required this.state, required this.zip, this.address2, this.email, this.fax, this.id, });

factory ContactProperties.fromJson(Map<String, dynamic> json) { return ContactProperties(
  address: Address.fromJson(json['address'] as String),
  address2: json['address2'] != null ? Address2.fromJson(json['address2'] as String) : null,
  city: City.fromJson(json['city'] as String),
  country: json['country'] != null ? Country.fromJson(json['country'] as String) : null,
  email: json['email'] != null ? Email.fromJson(json['email'] as String) : null,
  fax: json['fax'] != null ? Fax.fromJson(json['fax'] as String) : null,
  firstName: json['first_name'] != null ? FirstName.fromJson(json['first_name'] as String) : null,
  id: json['id'] != null ? ContactIdentifier.fromJson(json['id'] as String) : null,
  lastName: json['last_name'] != null ? LastName.fromJson(json['last_name'] as String) : null,
  organization: Organization2.fromJson(json['organization'] as String),
  phone: json['phone'] != null ? Telephone.fromJson(json['phone'] as String) : null,
  state: State2.fromJson(json['state'] as String),
  zip: json['zip'] != null ? Zipcode.fromJson(json['zip'] as String) : null,
); }

/// Address.
final Address address;

/// Optional address line for unit, floor, suite, etc.
final Address2? address2;

/// City.
final City city;

final Country? country;

final Email? email;

final Fax? fax;

final FirstName? firstName;

/// Contact Identifier.
final ContactIdentifier? id;

final LastName? lastName;

final Organization2 organization;

final Telephone? phone;

final State2 state;

final Zipcode? zip;

Map<String, dynamic> toJson() { return {
  'address': address.toJson(),
  if (address2 != null) 'address2': address2?.toJson(),
  'city': city.toJson(),
  if (country != null) 'country': country?.toJson(),
  if (email != null) 'email': email?.toJson(),
  if (fax != null) 'fax': fax?.toJson(),
  if (firstName != null) 'first_name': firstName?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (lastName != null) 'last_name': lastName?.toJson(),
  'organization': organization.toJson(),
  if (phone != null) 'phone': phone?.toJson(),
  'state': state.toJson(),
  if (zip != null) 'zip': zip?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('address') &&
      json.containsKey('city') &&
      json.containsKey('country') &&
      json.containsKey('first_name') &&
      json.containsKey('last_name') &&
      json.containsKey('organization') &&
      json.containsKey('phone') &&
      json.containsKey('state') &&
      json.containsKey('zip'); } 
ContactProperties copyWith({Address? address, Address2 Function()? address2, City? city, Country? Function()? country, Email Function()? email, Fax Function()? fax, FirstName? Function()? firstName, ContactIdentifier Function()? id, LastName? Function()? lastName, Organization2? organization, Telephone? Function()? phone, State2? state, Zipcode? Function()? zip, }) { return ContactProperties(
  address: address ?? this.address,
  address2: address2 != null ? address2() : this.address2,
  city: city ?? this.city,
  country: country != null ? country() : this.country,
  email: email != null ? email() : this.email,
  fax: fax != null ? fax() : this.fax,
  firstName: firstName != null ? firstName() : this.firstName,
  id: id != null ? id() : this.id,
  lastName: lastName != null ? lastName() : this.lastName,
  organization: organization ?? this.organization,
  phone: phone != null ? phone() : this.phone,
  state: state ?? this.state,
  zip: zip != null ? zip() : this.zip,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ContactProperties &&
          address == other.address &&
          address2 == other.address2 &&
          city == other.city &&
          country == other.country &&
          email == other.email &&
          fax == other.fax &&
          firstName == other.firstName &&
          id == other.id &&
          lastName == other.lastName &&
          organization == other.organization &&
          phone == other.phone &&
          state == other.state &&
          zip == other.zip; } 
@override int get hashCode { return Object.hash(address, address2, city, country, email, fax, firstName, id, lastName, organization, phone, state, zip); } 
@override String toString() { return 'ContactProperties(address: $address, address2: $address2, city: $city, country: $country, email: $email, fax: $fax, firstName: $firstName, id: $id, lastName: $lastName, organization: $organization, phone: $phone, state: $state, zip: $zip)'; } 
 }
