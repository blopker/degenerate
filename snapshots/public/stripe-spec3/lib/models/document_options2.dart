// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class DocumentOptions2AllowedTypes {const DocumentOptions2AllowedTypes._(this.value);

factory DocumentOptions2AllowedTypes.fromJson(String json) { return switch (json) {
  'driving_license' => drivingLicense,
  'id_card' => idCard,
  'passport' => passport,
  _ => DocumentOptions2AllowedTypes._(json),
}; }

static const DocumentOptions2AllowedTypes drivingLicense = DocumentOptions2AllowedTypes._('driving_license');

static const DocumentOptions2AllowedTypes idCard = DocumentOptions2AllowedTypes._('id_card');

static const DocumentOptions2AllowedTypes passport = DocumentOptions2AllowedTypes._('passport');

static const List<DocumentOptions2AllowedTypes> values = [drivingLicense, idCard, passport];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DocumentOptions2AllowedTypes && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DocumentOptions2AllowedTypes($value)'; } 
 }
final class DocumentOptions2 {const DocumentOptions2({this.allowedTypes, this.requireIdNumber, this.requireLiveCapture, this.requireMatchingSelfie, });

factory DocumentOptions2.fromJson(Map<String, dynamic> json) { return DocumentOptions2(
  allowedTypes: (json['allowed_types'] as List<dynamic>?)?.map((e) => DocumentOptions2AllowedTypes.fromJson(e as String)).toList(),
  requireIdNumber: json['require_id_number'] as bool?,
  requireLiveCapture: json['require_live_capture'] as bool?,
  requireMatchingSelfie: json['require_matching_selfie'] as bool?,
); }

final List<DocumentOptions2AllowedTypes>? allowedTypes;

final bool? requireIdNumber;

final bool? requireLiveCapture;

final bool? requireMatchingSelfie;

Map<String, dynamic> toJson() { return {
  if (allowedTypes != null) 'allowed_types': allowedTypes?.map((e) => e.toJson()).toList(),
  'require_id_number': ?requireIdNumber,
  'require_live_capture': ?requireLiveCapture,
  'require_matching_selfie': ?requireMatchingSelfie,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
DocumentOptions2 copyWith({List<DocumentOptions2AllowedTypes> Function()? allowedTypes, bool Function()? requireIdNumber, bool Function()? requireLiveCapture, bool Function()? requireMatchingSelfie, }) { return DocumentOptions2(
  allowedTypes: allowedTypes != null ? allowedTypes() : this.allowedTypes,
  requireIdNumber: requireIdNumber != null ? requireIdNumber() : this.requireIdNumber,
  requireLiveCapture: requireLiveCapture != null ? requireLiveCapture() : this.requireLiveCapture,
  requireMatchingSelfie: requireMatchingSelfie != null ? requireMatchingSelfie() : this.requireMatchingSelfie,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DocumentOptions2 &&
          listEquals(allowedTypes, other.allowedTypes) &&
          requireIdNumber == other.requireIdNumber &&
          requireLiveCapture == other.requireLiveCapture &&
          requireMatchingSelfie == other.requireMatchingSelfie; } 
@override int get hashCode { return Object.hash(Object.hashAll(allowedTypes ?? const []), requireIdNumber, requireLiveCapture, requireMatchingSelfie); } 
@override String toString() { return 'DocumentOptions2(allowedTypes: $allowedTypes, requireIdNumber: $requireIdNumber, requireLiveCapture: $requireLiveCapture, requireMatchingSelfie: $requireMatchingSelfie)'; } 
 }
