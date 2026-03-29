// GENERATED CODE - DO NOT MODIFY BY HAND

final class GetIdentityVerificationReportsType {const GetIdentityVerificationReportsType._(this.value);

factory GetIdentityVerificationReportsType.fromJson(String json) { return switch (json) {
  'document' => document,
  'id_number' => idNumber,
  _ => GetIdentityVerificationReportsType._(json),
}; }

static const GetIdentityVerificationReportsType document = GetIdentityVerificationReportsType._('document');

static const GetIdentityVerificationReportsType idNumber = GetIdentityVerificationReportsType._('id_number');

static const List<GetIdentityVerificationReportsType> values = [document, idNumber];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetIdentityVerificationReportsType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetIdentityVerificationReportsType($value)'; } 
 }
