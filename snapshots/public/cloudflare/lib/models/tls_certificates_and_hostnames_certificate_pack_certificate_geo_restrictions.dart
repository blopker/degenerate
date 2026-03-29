// GENERATED CODE - DO NOT MODIFY BY HAND

final class TlsCertificatesAndHostnamesCertificatePackCertificateGeoRestrictionsLabel {const TlsCertificatesAndHostnamesCertificatePackCertificateGeoRestrictionsLabel._(this.value);

factory TlsCertificatesAndHostnamesCertificatePackCertificateGeoRestrictionsLabel.fromJson(String json) { return switch (json) {
  'us' => us,
  'eu' => eu,
  'highest_security' => highestSecurity,
  _ => TlsCertificatesAndHostnamesCertificatePackCertificateGeoRestrictionsLabel._(json),
}; }

static const TlsCertificatesAndHostnamesCertificatePackCertificateGeoRestrictionsLabel us = TlsCertificatesAndHostnamesCertificatePackCertificateGeoRestrictionsLabel._('us');

static const TlsCertificatesAndHostnamesCertificatePackCertificateGeoRestrictionsLabel eu = TlsCertificatesAndHostnamesCertificatePackCertificateGeoRestrictionsLabel._('eu');

static const TlsCertificatesAndHostnamesCertificatePackCertificateGeoRestrictionsLabel highestSecurity = TlsCertificatesAndHostnamesCertificatePackCertificateGeoRestrictionsLabel._('highest_security');

static const List<TlsCertificatesAndHostnamesCertificatePackCertificateGeoRestrictionsLabel> values = [us, eu, highestSecurity];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TlsCertificatesAndHostnamesCertificatePackCertificateGeoRestrictionsLabel && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesCertificatePackCertificateGeoRestrictionsLabel($value)'; } 
 }
/// Specify the region where your private key can be held locally.
final class TlsCertificatesAndHostnamesCertificatePackCertificateGeoRestrictions {const TlsCertificatesAndHostnamesCertificatePackCertificateGeoRestrictions({this.label});

factory TlsCertificatesAndHostnamesCertificatePackCertificateGeoRestrictions.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesCertificatePackCertificateGeoRestrictions(
  label: json['label'] != null ? TlsCertificatesAndHostnamesCertificatePackCertificateGeoRestrictionsLabel.fromJson(json['label'] as String) : null,
); }

final TlsCertificatesAndHostnamesCertificatePackCertificateGeoRestrictionsLabel? label;

Map<String, dynamic> toJson() { return {
  if (label != null) 'label': label?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
TlsCertificatesAndHostnamesCertificatePackCertificateGeoRestrictions copyWith({TlsCertificatesAndHostnamesCertificatePackCertificateGeoRestrictionsLabel Function()? label}) { return TlsCertificatesAndHostnamesCertificatePackCertificateGeoRestrictions(
  label: label != null ? label() : this.label,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesCertificatePackCertificateGeoRestrictions &&
          label == other.label; } 
@override int get hashCode { return label.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesCertificatePackCertificateGeoRestrictions(label: $label)'; } 
 }
