// GENERATED CODE - DO NOT MODIFY BY HAND

/// Infrastructure type of this ASN.
final class DosAsnType {const DosAsnType._(this.value);

factory DosAsnType.fromJson(String json) { return switch (json) {
  'hosting_provider' => hostingProvider,
  'isp' => isp,
  'organization' => organization,
  _ => DosAsnType._(json),
}; }

static const DosAsnType hostingProvider = DosAsnType._('hosting_provider');

static const DosAsnType isp = DosAsnType._('isp');

static const DosAsnType organization = DosAsnType._('organization');

static const List<DosAsnType> values = [hostingProvider, isp, organization];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DosAsnType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DosAsnType($value)'; } 
 }
