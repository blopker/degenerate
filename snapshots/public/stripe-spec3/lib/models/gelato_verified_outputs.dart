// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'address.dart';import 'gelato_data_verified_outputs_date.dart';/// The user's verified id number type.
@immutable final class GelatoVerifiedOutputsIdNumberType {const GelatoVerifiedOutputsIdNumberType._(this.value);

factory GelatoVerifiedOutputsIdNumberType.fromJson(String json) { return switch (json) {
  'br_cpf' => brCpf,
  'sg_nric' => sgNric,
  'us_ssn' => usSsn,
  _ => GelatoVerifiedOutputsIdNumberType._(json),
}; }

static const GelatoVerifiedOutputsIdNumberType brCpf = GelatoVerifiedOutputsIdNumberType._('br_cpf');

static const GelatoVerifiedOutputsIdNumberType sgNric = GelatoVerifiedOutputsIdNumberType._('sg_nric');

static const GelatoVerifiedOutputsIdNumberType usSsn = GelatoVerifiedOutputsIdNumberType._('us_ssn');

static const List<GelatoVerifiedOutputsIdNumberType> values = [brCpf, sgNric, usSsn];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GelatoVerifiedOutputsIdNumberType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GelatoVerifiedOutputsIdNumberType($value)'; } 
 }
/// The user's verified sex.
@immutable final class GelatoVerifiedOutputsSex {const GelatoVerifiedOutputsSex._(this.value);

factory GelatoVerifiedOutputsSex.fromJson(String json) { return switch (json) {
  '[redacted]' => redacted,
  'female' => female,
  'male' => male,
  'unknown' => unknown,
  _ => GelatoVerifiedOutputsSex._(json),
}; }

static const GelatoVerifiedOutputsSex redacted = GelatoVerifiedOutputsSex._('[redacted]');

static const GelatoVerifiedOutputsSex female = GelatoVerifiedOutputsSex._('female');

static const GelatoVerifiedOutputsSex male = GelatoVerifiedOutputsSex._('male');

static const GelatoVerifiedOutputsSex unknown = GelatoVerifiedOutputsSex._('unknown');

static const List<GelatoVerifiedOutputsSex> values = [redacted, female, male, unknown];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GelatoVerifiedOutputsSex && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GelatoVerifiedOutputsSex($value)'; } 
 }
/// 
@immutable final class GelatoVerifiedOutputs {const GelatoVerifiedOutputs({this.address = const Omittable.absent(), this.dob = const Omittable.absent(), this.email = const Omittable.absent(), this.firstName = const Omittable.absent(), this.idNumber = const Omittable.absent(), this.idNumberType = const Omittable.absent(), this.lastName = const Omittable.absent(), this.phone = const Omittable.absent(), this.sex = const Omittable.absent(), this.unparsedPlaceOfBirth = const Omittable.absent(), this.unparsedSex = const Omittable.absent(), });

factory GelatoVerifiedOutputs.fromJson(Map<String, dynamic> json) { return GelatoVerifiedOutputs(
  address: json.containsKey('address') ? Omittable(json['address'] != null ? Address.fromJson(json['address'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  dob: json.containsKey('dob') ? Omittable(json['dob'] != null ? GelatoDataVerifiedOutputsDate.fromJson(json['dob'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  email: json.containsKey('email') ? Omittable(json['email'] as String?) : const Omittable.absent(),
  firstName: json.containsKey('first_name') ? Omittable(json['first_name'] as String?) : const Omittable.absent(),
  idNumber: json.containsKey('id_number') ? Omittable(json['id_number'] as String?) : const Omittable.absent(),
  idNumberType: json.containsKey('id_number_type') ? Omittable(json['id_number_type'] != null ? GelatoVerifiedOutputsIdNumberType.fromJson(json['id_number_type'] as String) : null) : const Omittable.absent(),
  lastName: json.containsKey('last_name') ? Omittable(json['last_name'] as String?) : const Omittable.absent(),
  phone: json.containsKey('phone') ? Omittable(json['phone'] as String?) : const Omittable.absent(),
  sex: json.containsKey('sex') ? Omittable(json['sex'] != null ? GelatoVerifiedOutputsSex.fromJson(json['sex'] as String) : null) : const Omittable.absent(),
  unparsedPlaceOfBirth: json.containsKey('unparsed_place_of_birth') ? Omittable(json['unparsed_place_of_birth'] as String?) : const Omittable.absent(),
  unparsedSex: json.containsKey('unparsed_sex') ? Omittable(json['unparsed_sex'] as String?) : const Omittable.absent(),
); }

/// The user's verified address.
final Omittable<Address?> address;

/// The user’s verified date of birth.
final Omittable<GelatoDataVerifiedOutputsDate?> dob;

/// The user's verified email address
final Omittable<String?> email;

/// The user's verified first name.
final Omittable<String?> firstName;

/// The user's verified id number.
final Omittable<String?> idNumber;

/// The user's verified id number type.
final Omittable<GelatoVerifiedOutputsIdNumberType?> idNumberType;

/// The user's verified last name.
final Omittable<String?> lastName;

/// The user's verified phone number
final Omittable<String?> phone;

/// The user's verified sex.
final Omittable<GelatoVerifiedOutputsSex?> sex;

/// The user's verified place of birth as it appears in the document.
final Omittable<String?> unparsedPlaceOfBirth;

/// The user's verified sex as it appears in the document.
final Omittable<String?> unparsedSex;

Map<String, dynamic> toJson() { return {
  if (address.isPresent) 'address': address.value?.toJson(),
  if (dob.isPresent) 'dob': dob.value?.toJson(),
  if (email.isPresent) 'email': email.value,
  if (firstName.isPresent) 'first_name': firstName.value,
  if (idNumber.isPresent) 'id_number': idNumber.value,
  if (idNumberType.isPresent) 'id_number_type': idNumberType.value?.toJson(),
  if (lastName.isPresent) 'last_name': lastName.value,
  if (phone.isPresent) 'phone': phone.value,
  if (sex.isPresent) 'sex': sex.value?.toJson(),
  if (unparsedPlaceOfBirth.isPresent) 'unparsed_place_of_birth': unparsedPlaceOfBirth.value,
  if (unparsedSex.isPresent) 'unparsed_sex': unparsedSex.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'address', 'dob', 'email', 'first_name', 'id_number', 'id_number_type', 'last_name', 'phone', 'sex', 'unparsed_place_of_birth', 'unparsed_sex'}.contains(key)); } 
GelatoVerifiedOutputs copyWith({Omittable<Address?>? address, Omittable<GelatoDataVerifiedOutputsDate?>? dob, Omittable<String?>? email, Omittable<String?>? firstName, Omittable<String?>? idNumber, Omittable<GelatoVerifiedOutputsIdNumberType?>? idNumberType, Omittable<String?>? lastName, Omittable<String?>? phone, Omittable<GelatoVerifiedOutputsSex?>? sex, Omittable<String?>? unparsedPlaceOfBirth, Omittable<String?>? unparsedSex, }) { return GelatoVerifiedOutputs(
  address: address ?? this.address,
  dob: dob ?? this.dob,
  email: email ?? this.email,
  firstName: firstName ?? this.firstName,
  idNumber: idNumber ?? this.idNumber,
  idNumberType: idNumberType ?? this.idNumberType,
  lastName: lastName ?? this.lastName,
  phone: phone ?? this.phone,
  sex: sex ?? this.sex,
  unparsedPlaceOfBirth: unparsedPlaceOfBirth ?? this.unparsedPlaceOfBirth,
  unparsedSex: unparsedSex ?? this.unparsedSex,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GelatoVerifiedOutputs &&
          address == other.address &&
          dob == other.dob &&
          email == other.email &&
          firstName == other.firstName &&
          idNumber == other.idNumber &&
          idNumberType == other.idNumberType &&
          lastName == other.lastName &&
          phone == other.phone &&
          sex == other.sex &&
          unparsedPlaceOfBirth == other.unparsedPlaceOfBirth &&
          unparsedSex == other.unparsedSex; } 
@override int get hashCode { return Object.hash(address, dob, email, firstName, idNumber, idNumberType, lastName, phone, sex, unparsedPlaceOfBirth, unparsedSex); } 
@override String toString() { return 'GelatoVerifiedOutputs(address: $address, dob: $dob, email: $email, firstName: $firstName, idNumber: $idNumber, idNumberType: $idNumberType, lastName: $lastName, phone: $phone, sex: $sex, unparsedPlaceOfBirth: $unparsedPlaceOfBirth, unparsedSex: $unparsedSex)'; } 
 }
