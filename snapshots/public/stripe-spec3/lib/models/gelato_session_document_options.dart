// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class GelatoSessionDocumentOptionsAllowedTypes {const GelatoSessionDocumentOptionsAllowedTypes._(this.value);

factory GelatoSessionDocumentOptionsAllowedTypes.fromJson(String json) { return switch (json) {
  'driving_license' => drivingLicense,
  'id_card' => idCard,
  'passport' => passport,
  _ => GelatoSessionDocumentOptionsAllowedTypes._(json),
}; }

static const GelatoSessionDocumentOptionsAllowedTypes drivingLicense = GelatoSessionDocumentOptionsAllowedTypes._('driving_license');

static const GelatoSessionDocumentOptionsAllowedTypes idCard = GelatoSessionDocumentOptionsAllowedTypes._('id_card');

static const GelatoSessionDocumentOptionsAllowedTypes passport = GelatoSessionDocumentOptionsAllowedTypes._('passport');

static const List<GelatoSessionDocumentOptionsAllowedTypes> values = [drivingLicense, idCard, passport];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GelatoSessionDocumentOptionsAllowedTypes && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GelatoSessionDocumentOptionsAllowedTypes($value)'; } 
 }
/// 
final class GelatoSessionDocumentOptions {const GelatoSessionDocumentOptions({this.allowedTypes, this.requireIdNumber, this.requireLiveCapture, this.requireMatchingSelfie, });

factory GelatoSessionDocumentOptions.fromJson(Map<String, dynamic> json) { return GelatoSessionDocumentOptions(
  allowedTypes: (json['allowed_types'] as List<dynamic>?)?.map((e) => GelatoSessionDocumentOptionsAllowedTypes.fromJson(e as String)).toList(),
  requireIdNumber: json['require_id_number'] as bool?,
  requireLiveCapture: json['require_live_capture'] as bool?,
  requireMatchingSelfie: json['require_matching_selfie'] as bool?,
); }

/// Array of strings of allowed identity document types. If the provided identity document isn’t one of the allowed types, the verification check will fail with a document_type_not_allowed error code.
final List<GelatoSessionDocumentOptionsAllowedTypes>? allowedTypes;

/// Collect an ID number and perform an [ID number check](https://docs.stripe.com/identity/verification-checks?type=id-number) with the document’s extracted name and date of birth.
final bool? requireIdNumber;

/// Disable image uploads, identity document images have to be captured using the device’s camera.
final bool? requireLiveCapture;

/// Capture a face image and perform a [selfie check](https://docs.stripe.com/identity/verification-checks?type=selfie) comparing a photo ID and a picture of your user’s face. [Learn more](https://docs.stripe.com/identity/selfie).
final bool? requireMatchingSelfie;

Map<String, dynamic> toJson() { return {
  if (allowedTypes != null) 'allowed_types': allowedTypes?.map((e) => e.toJson()).toList(),
  'require_id_number': ?requireIdNumber,
  'require_live_capture': ?requireLiveCapture,
  'require_matching_selfie': ?requireMatchingSelfie,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'allowed_types', 'require_id_number', 'require_live_capture', 'require_matching_selfie'}.contains(key)); } 
GelatoSessionDocumentOptions copyWith({List<GelatoSessionDocumentOptionsAllowedTypes> Function()? allowedTypes, bool Function()? requireIdNumber, bool Function()? requireLiveCapture, bool Function()? requireMatchingSelfie, }) { return GelatoSessionDocumentOptions(
  allowedTypes: allowedTypes != null ? allowedTypes() : this.allowedTypes,
  requireIdNumber: requireIdNumber != null ? requireIdNumber() : this.requireIdNumber,
  requireLiveCapture: requireLiveCapture != null ? requireLiveCapture() : this.requireLiveCapture,
  requireMatchingSelfie: requireMatchingSelfie != null ? requireMatchingSelfie() : this.requireMatchingSelfie,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GelatoSessionDocumentOptions &&
          listEquals(allowedTypes, other.allowedTypes) &&
          requireIdNumber == other.requireIdNumber &&
          requireLiveCapture == other.requireLiveCapture &&
          requireMatchingSelfie == other.requireMatchingSelfie; } 
@override int get hashCode { return Object.hash(Object.hashAll(allowedTypes ?? const []), requireIdNumber, requireLiveCapture, requireMatchingSelfie); } 
@override String toString() { return 'GelatoSessionDocumentOptions(allowedTypes: $allowedTypes, requireIdNumber: $requireIdNumber, requireLiveCapture: $requireLiveCapture, requireMatchingSelfie: $requireMatchingSelfie)'; } 
 }
