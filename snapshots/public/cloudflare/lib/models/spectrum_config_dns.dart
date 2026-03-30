// GENERATED CODE - DO NOT MODIFY BY HAND

/// The name of the DNS record associated with the application.
extension type const SpectrumConfigDnsName(String value) {
factory SpectrumConfigDnsName.fromJson(String json) => SpectrumConfigDnsName(json);

String toJson() => value;

}
/// The type of DNS record associated with the application.
final class SpectrumConfigDnsType {const SpectrumConfigDnsType._(this.value);

factory SpectrumConfigDnsType.fromJson(String json) { return switch (json) {
  'CNAME' => cname,
  'ADDRESS' => address,
  _ => SpectrumConfigDnsType._(json),
}; }

static const SpectrumConfigDnsType cname = SpectrumConfigDnsType._('CNAME');

static const SpectrumConfigDnsType address = SpectrumConfigDnsType._('ADDRESS');

static const List<SpectrumConfigDnsType> values = [cname, address];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SpectrumConfigDnsType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SpectrumConfigDnsType($value)'; } 
 }
/// The name and type of DNS record for the Spectrum application.
final class SpectrumConfigDns {const SpectrumConfigDns({this.name, this.type, });

factory SpectrumConfigDns.fromJson(Map<String, dynamic> json) { return SpectrumConfigDns(
  name: json['name'] != null ? SpectrumConfigDnsName.fromJson(json['name'] as String) : null,
  type: json['type'] != null ? SpectrumConfigDnsType.fromJson(json['type'] as String) : null,
); }

final SpectrumConfigDnsName? name;

final SpectrumConfigDnsType? type;

Map<String, dynamic> toJson() { return {
  if (name != null) 'name': name?.toJson(),
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name', 'type'}.contains(key)); } 
SpectrumConfigDns copyWith({SpectrumConfigDnsName Function()? name, SpectrumConfigDnsType Function()? type, }) { return SpectrumConfigDns(
  name: name != null ? name() : this.name,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SpectrumConfigDns &&
          name == other.name &&
          type == other.type; } 
@override int get hashCode { return Object.hash(name, type); } 
@override String toString() { return 'SpectrumConfigDns(name: $name, type: $type)'; } 
 }
