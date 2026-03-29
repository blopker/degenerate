// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'issuing_cardholder_address.dart';import 'issuing_cardholder_company2.dart';import 'issuing_cardholder_individual2.dart';import 'issuing_cardholder_requirements.dart';import 'issuing_cardholder_spending_controls.dart';/// String representing the object's type. Objects of the same type share the same value.
final class IssuingCardholderObject {const IssuingCardholderObject._(this.value);

factory IssuingCardholderObject.fromJson(String json) { return switch (json) {
  'issuing.cardholder' => issuingCardholder,
  _ => IssuingCardholderObject._(json),
}; }

static const IssuingCardholderObject issuingCardholder = IssuingCardholderObject._('issuing.cardholder');

static const List<IssuingCardholderObject> values = [issuingCardholder];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingCardholderObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingCardholderObject($value)'; } 
 }
final class IssuingCardholderPreferredLocales {const IssuingCardholderPreferredLocales._(this.value);

factory IssuingCardholderPreferredLocales.fromJson(String json) { return switch (json) {
  'de' => de,
  'en' => en,
  'es' => es,
  'fr' => fr,
  'it' => it,
  _ => IssuingCardholderPreferredLocales._(json),
}; }

static const IssuingCardholderPreferredLocales de = IssuingCardholderPreferredLocales._('de');

static const IssuingCardholderPreferredLocales en = IssuingCardholderPreferredLocales._('en');

static const IssuingCardholderPreferredLocales es = IssuingCardholderPreferredLocales._('es');

static const IssuingCardholderPreferredLocales fr = IssuingCardholderPreferredLocales._('fr');

static const IssuingCardholderPreferredLocales it = IssuingCardholderPreferredLocales._('it');

static const List<IssuingCardholderPreferredLocales> values = [de, en, es, fr, it];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingCardholderPreferredLocales && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingCardholderPreferredLocales($value)'; } 
 }
/// Specifies whether to permit authorizations on this cardholder's cards.
final class IssuingCardholderStatus {const IssuingCardholderStatus._(this.value);

factory IssuingCardholderStatus.fromJson(String json) { return switch (json) {
  'active' => active,
  'blocked' => blocked,
  'inactive' => inactive,
  _ => IssuingCardholderStatus._(json),
}; }

static const IssuingCardholderStatus active = IssuingCardholderStatus._('active');

static const IssuingCardholderStatus blocked = IssuingCardholderStatus._('blocked');

static const IssuingCardholderStatus inactive = IssuingCardholderStatus._('inactive');

static const List<IssuingCardholderStatus> values = [active, blocked, inactive];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingCardholderStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingCardholderStatus($value)'; } 
 }
/// One of `individual` or `company`. See [Choose a cardholder type](https://docs.stripe.com/issuing/other/choose-cardholder) for more details.
final class IssuingCardholderType {const IssuingCardholderType._(this.value);

factory IssuingCardholderType.fromJson(String json) { return switch (json) {
  'company' => company,
  'individual' => individual,
  _ => IssuingCardholderType._(json),
}; }

static const IssuingCardholderType company = IssuingCardholderType._('company');

static const IssuingCardholderType individual = IssuingCardholderType._('individual');

static const List<IssuingCardholderType> values = [company, individual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingCardholderType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingCardholderType($value)'; } 
 }
/// An Issuing `Cardholder` object represents an individual or business entity who is [issued](https://docs.stripe.com/issuing) cards.
/// 
/// Related guide: [How to create a cardholder](https://docs.stripe.com/issuing/cards/virtual/issue-cards#create-cardholder)
final class IssuingCardholder {const IssuingCardholder({required this.billing, this.company, required this.created, this.email, required this.id, this.individual, required this.livemode, required this.metadata, required this.name, required this.object, this.phoneNumber, this.preferredLocales, required this.requirements, this.spendingControls, required this.status, required this.type, });

factory IssuingCardholder.fromJson(Map<String, dynamic> json) { return IssuingCardholder(
  billing: IssuingCardholderAddress.fromJson(json['billing'] as Map<String, dynamic>),
  company: json['company'] != null ? IssuingCardholderCompany2.fromJson(json['company'] as Map<String, dynamic>) : null,
  created: (json['created'] as num).toInt(),
  email: json['email'] as String?,
  id: json['id'] as String,
  individual: json['individual'] != null ? IssuingCardholderIndividual2.fromJson(json['individual'] as Map<String, dynamic>) : null,
  livemode: json['livemode'] as bool,
  metadata: (json['metadata'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)),
  name: json['name'] as String,
  object: IssuingCardholderObject.fromJson(json['object'] as String),
  phoneNumber: json['phone_number'] as String?,
  preferredLocales: (json['preferred_locales'] as List<dynamic>?)?.map((e) => IssuingCardholderPreferredLocales.fromJson(e as String)).toList(),
  requirements: IssuingCardholderRequirements.fromJson(json['requirements'] as Map<String, dynamic>),
  spendingControls: json['spending_controls'] != null ? IssuingCardholderSpendingControls.fromJson(json['spending_controls'] as Map<String, dynamic>) : null,
  status: IssuingCardholderStatus.fromJson(json['status'] as String),
  type: IssuingCardholderType.fromJson(json['type'] as String),
); }

final IssuingCardholderAddress billing;

/// Additional information about a `company` cardholder.
final IssuingCardholderCompany2? company;

/// Time at which the object was created. Measured in seconds since the Unix epoch.
final int created;

/// The cardholder's email address.
final String? email;

/// Unique identifier for the object.
final String id;

/// Additional information about an `individual` cardholder.
final IssuingCardholderIndividual2? individual;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
final Map<String,String> metadata;

/// The cardholder's name. This will be printed on cards issued to them.
final String name;

/// String representing the object's type. Objects of the same type share the same value.
final IssuingCardholderObject object;

/// The cardholder's phone number. This is required for all cardholders who will be creating EU cards. See the [3D Secure documentation](https://docs.stripe.com/issuing/3d-secure#when-is-3d-secure-applied) for more details.
final String? phoneNumber;

/// The cardholder’s preferred locales (languages), ordered by preference. Locales can be `de`, `en`, `es`, `fr`, or `it`.
///  This changes the language of the [3D Secure flow](https://docs.stripe.com/issuing/3d-secure) and one-time password messages sent to the cardholder.
final List<IssuingCardholderPreferredLocales>? preferredLocales;

final IssuingCardholderRequirements requirements;

/// Rules that control spending across this cardholder's cards. Refer to our [documentation](https://docs.stripe.com/issuing/controls/spending-controls) for more details.
final IssuingCardholderSpendingControls? spendingControls;

/// Specifies whether to permit authorizations on this cardholder's cards.
final IssuingCardholderStatus status;

/// One of `individual` or `company`. See [Choose a cardholder type](https://docs.stripe.com/issuing/other/choose-cardholder) for more details.
final IssuingCardholderType type;

Map<String, dynamic> toJson() { return {
  'billing': billing.toJson(),
  if (company != null) 'company': company?.toJson(),
  'created': created,
  'email': ?email,
  'id': id,
  if (individual != null) 'individual': individual?.toJson(),
  'livemode': livemode,
  'metadata': metadata,
  'name': name,
  'object': object.toJson(),
  'phone_number': ?phoneNumber,
  if (preferredLocales != null) 'preferred_locales': preferredLocales?.map((e) => e.toJson()).toList(),
  'requirements': requirements.toJson(),
  if (spendingControls != null) 'spending_controls': spendingControls?.toJson(),
  'status': status.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('billing') &&
      json.containsKey('created') && json['created'] is num &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('metadata') &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('object') &&
      json.containsKey('requirements') &&
      json.containsKey('status') &&
      json.containsKey('type'); } 
IssuingCardholder copyWith({IssuingCardholderAddress? billing, IssuingCardholderCompany2? Function()? company, int? created, String? Function()? email, String? id, IssuingCardholderIndividual2? Function()? individual, bool? livemode, Map<String,String>? metadata, String? name, IssuingCardholderObject? object, String? Function()? phoneNumber, List<IssuingCardholderPreferredLocales>? Function()? preferredLocales, IssuingCardholderRequirements? requirements, IssuingCardholderSpendingControls? Function()? spendingControls, IssuingCardholderStatus? status, IssuingCardholderType? type, }) { return IssuingCardholder(
  billing: billing ?? this.billing,
  company: company != null ? company() : this.company,
  created: created ?? this.created,
  email: email != null ? email() : this.email,
  id: id ?? this.id,
  individual: individual != null ? individual() : this.individual,
  livemode: livemode ?? this.livemode,
  metadata: metadata ?? this.metadata,
  name: name ?? this.name,
  object: object ?? this.object,
  phoneNumber: phoneNumber != null ? phoneNumber() : this.phoneNumber,
  preferredLocales: preferredLocales != null ? preferredLocales() : this.preferredLocales,
  requirements: requirements ?? this.requirements,
  spendingControls: spendingControls != null ? spendingControls() : this.spendingControls,
  status: status ?? this.status,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingCardholder &&
          billing == other.billing &&
          company == other.company &&
          created == other.created &&
          email == other.email &&
          id == other.id &&
          individual == other.individual &&
          livemode == other.livemode &&
          metadata == other.metadata &&
          name == other.name &&
          object == other.object &&
          phoneNumber == other.phoneNumber &&
          listEquals(preferredLocales, other.preferredLocales) &&
          requirements == other.requirements &&
          spendingControls == other.spendingControls &&
          status == other.status &&
          type == other.type; } 
@override int get hashCode { return Object.hash(billing, company, created, email, id, individual, livemode, metadata, name, object, phoneNumber, Object.hashAll(preferredLocales ?? const []), requirements, spendingControls, status, type); } 
@override String toString() { return 'IssuingCardholder(billing: $billing, company: $company, created: $created, email: $email, id: $id, individual: $individual, livemode: $livemode, metadata: $metadata, name: $name, object: $object, phoneNumber: $phoneNumber, preferredLocales: $preferredLocales, requirements: $requirements, spendingControls: $spendingControls, status: $status, type: $type)'; } 
 }
