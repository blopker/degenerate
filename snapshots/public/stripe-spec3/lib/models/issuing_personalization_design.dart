// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'file.dart';import 'issuing_personalization_design_card_logo.dart';import 'issuing_personalization_design_carrier_text2.dart';import 'issuing_personalization_design_physical_bundle.dart';import 'issuing_personalization_design_preferences.dart';import 'issuing_personalization_design_rejection_reasons.dart';import 'issuing_physical_bundle.dart';/// String representing the object's type. Objects of the same type share the same value.
final class IssuingPersonalizationDesignObject {const IssuingPersonalizationDesignObject._(this.value);

factory IssuingPersonalizationDesignObject.fromJson(String json) { return switch (json) {
  'issuing.personalization_design' => issuingPersonalizationDesign,
  _ => IssuingPersonalizationDesignObject._(json),
}; }

static const IssuingPersonalizationDesignObject issuingPersonalizationDesign = IssuingPersonalizationDesignObject._('issuing.personalization_design');

static const List<IssuingPersonalizationDesignObject> values = [issuingPersonalizationDesign];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingPersonalizationDesignObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingPersonalizationDesignObject($value)'; } 
 }
/// Whether this personalization design can be used to create cards.
final class IssuingPersonalizationDesignStatus {const IssuingPersonalizationDesignStatus._(this.value);

factory IssuingPersonalizationDesignStatus.fromJson(String json) { return switch (json) {
  'active' => active,
  'inactive' => inactive,
  'rejected' => rejected,
  'review' => review,
  _ => IssuingPersonalizationDesignStatus._(json),
}; }

static const IssuingPersonalizationDesignStatus active = IssuingPersonalizationDesignStatus._('active');

static const IssuingPersonalizationDesignStatus inactive = IssuingPersonalizationDesignStatus._('inactive');

static const IssuingPersonalizationDesignStatus rejected = IssuingPersonalizationDesignStatus._('rejected');

static const IssuingPersonalizationDesignStatus review = IssuingPersonalizationDesignStatus._('review');

static const List<IssuingPersonalizationDesignStatus> values = [active, inactive, rejected, review];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingPersonalizationDesignStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingPersonalizationDesignStatus($value)'; } 
 }
/// A Personalization Design is a logical grouping of a Physical Bundle, card logo, and carrier text that represents a product line.
final class IssuingPersonalizationDesign {const IssuingPersonalizationDesign({this.cardLogo, this.carrierText, required this.created, required this.id, required this.livemode, this.lookupKey, required this.metadata, this.name, required this.object, required this.physicalBundle, required this.preferences, required this.rejectionReasons, required this.status, });

factory IssuingPersonalizationDesign.fromJson(Map<String, dynamic> json) { return IssuingPersonalizationDesign(
  cardLogo: json['card_logo'] != null ? OneOf2.parse(json['card_logo'], fromA: (v) => v as String, fromB: (v) => File.fromJson(v as Map<String, dynamic>),) : null,
  carrierText: json['carrier_text'] != null ? IssuingPersonalizationDesignCarrierText2.fromJson(json['carrier_text'] as Map<String, dynamic>) : null,
  created: (json['created'] as num).toInt(),
  id: json['id'] as String,
  livemode: json['livemode'] as bool,
  lookupKey: json['lookup_key'] as String?,
  metadata: (json['metadata'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)),
  name: json['name'] as String?,
  object: IssuingPersonalizationDesignObject.fromJson(json['object'] as String),
  physicalBundle: OneOf2.parse(json['physical_bundle'], fromA: (v) => v as String, fromB: (v) => IssuingPhysicalBundle.fromJson(v as Map<String, dynamic>),),
  preferences: IssuingPersonalizationDesignPreferences.fromJson(json['preferences'] as Map<String, dynamic>),
  rejectionReasons: IssuingPersonalizationDesignRejectionReasons.fromJson(json['rejection_reasons'] as Map<String, dynamic>),
  status: IssuingPersonalizationDesignStatus.fromJson(json['status'] as String),
); }

/// The file for the card logo to use with physical bundles that support card logos. Must have a `purpose` value of `issuing_logo`.
final IssuingPersonalizationDesignCardLogo? cardLogo;

/// Hash containing carrier text, for use with physical bundles that support carrier text.
final IssuingPersonalizationDesignCarrierText2? carrierText;

/// Time at which the object was created. Measured in seconds since the Unix epoch.
final int created;

/// Unique identifier for the object.
final String id;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// A lookup key used to retrieve personalization designs dynamically from a static string. This may be up to 200 characters.
final String? lookupKey;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
final Map<String,String> metadata;

/// Friendly display name.
final String? name;

/// String representing the object's type. Objects of the same type share the same value.
final IssuingPersonalizationDesignObject object;

/// The physical bundle object belonging to this personalization design.
final IssuingPersonalizationDesignPhysicalBundle physicalBundle;

final IssuingPersonalizationDesignPreferences preferences;

final IssuingPersonalizationDesignRejectionReasons rejectionReasons;

/// Whether this personalization design can be used to create cards.
final IssuingPersonalizationDesignStatus status;

Map<String, dynamic> toJson() { return {
  if (cardLogo != null) 'card_logo': cardLogo?.toJson(),
  if (carrierText != null) 'carrier_text': carrierText?.toJson(),
  'created': created,
  'id': id,
  'livemode': livemode,
  'lookup_key': ?lookupKey,
  'metadata': metadata,
  'name': ?name,
  'object': object.toJson(),
  'physical_bundle': physicalBundle.toJson(),
  'preferences': preferences.toJson(),
  'rejection_reasons': rejectionReasons.toJson(),
  'status': status.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created') && json['created'] is num &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('metadata') &&
      json.containsKey('object') &&
      json.containsKey('physical_bundle') &&
      json.containsKey('preferences') &&
      json.containsKey('rejection_reasons') &&
      json.containsKey('status'); } 
IssuingPersonalizationDesign copyWith({IssuingPersonalizationDesignCardLogo? Function()? cardLogo, IssuingPersonalizationDesignCarrierText2? Function()? carrierText, int? created, String? id, bool? livemode, String? Function()? lookupKey, Map<String,String>? metadata, String? Function()? name, IssuingPersonalizationDesignObject? object, IssuingPersonalizationDesignPhysicalBundle? physicalBundle, IssuingPersonalizationDesignPreferences? preferences, IssuingPersonalizationDesignRejectionReasons? rejectionReasons, IssuingPersonalizationDesignStatus? status, }) { return IssuingPersonalizationDesign(
  cardLogo: cardLogo != null ? cardLogo() : this.cardLogo,
  carrierText: carrierText != null ? carrierText() : this.carrierText,
  created: created ?? this.created,
  id: id ?? this.id,
  livemode: livemode ?? this.livemode,
  lookupKey: lookupKey != null ? lookupKey() : this.lookupKey,
  metadata: metadata ?? this.metadata,
  name: name != null ? name() : this.name,
  object: object ?? this.object,
  physicalBundle: physicalBundle ?? this.physicalBundle,
  preferences: preferences ?? this.preferences,
  rejectionReasons: rejectionReasons ?? this.rejectionReasons,
  status: status ?? this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingPersonalizationDesign &&
          cardLogo == other.cardLogo &&
          carrierText == other.carrierText &&
          created == other.created &&
          id == other.id &&
          livemode == other.livemode &&
          lookupKey == other.lookupKey &&
          metadata == other.metadata &&
          name == other.name &&
          object == other.object &&
          physicalBundle == other.physicalBundle &&
          preferences == other.preferences &&
          rejectionReasons == other.rejectionReasons &&
          status == other.status; } 
@override int get hashCode { return Object.hash(cardLogo, carrierText, created, id, livemode, lookupKey, metadata, name, object, physicalBundle, preferences, rejectionReasons, status); } 
@override String toString() { return 'IssuingPersonalizationDesign(cardLogo: $cardLogo, carrierText: $carrierText, created: $created, id: $id, livemode: $livemode, lookupKey: $lookupKey, metadata: $metadata, name: $name, object: $object, physicalBundle: $physicalBundle, preferences: $preferences, rejectionReasons: $rejectionReasons, status: $status)'; } 
 }
