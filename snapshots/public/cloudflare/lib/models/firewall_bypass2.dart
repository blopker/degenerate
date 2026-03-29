// GENERATED CODE - DO NOT MODIFY BY HAND

final class FirewallBypass2Name {const FirewallBypass2Name._(this.value);

factory FirewallBypass2Name.fromJson(String json) { return switch (json) {
  'url' => url,
  _ => FirewallBypass2Name._(json),
}; }

static const FirewallBypass2Name url = FirewallBypass2Name._('url');

static const List<FirewallBypass2Name> values = [url];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FirewallBypass2Name && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FirewallBypass2Name($value)'; } 
 }
final class FirewallBypass2 {const FirewallBypass2({this.name, this.value, });

factory FirewallBypass2.fromJson(Map<String, dynamic> json) { return FirewallBypass2(
  name: json['name'] != null ? FirewallBypass2Name.fromJson(json['name'] as String) : null,
  value: json['value'] as String?,
); }

final FirewallBypass2Name? name;

/// The URL to bypass.
final String? value;

Map<String, dynamic> toJson() { return {
  if (name != null) 'name': name?.toJson(),
  'value': ?value,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
FirewallBypass2 copyWith({FirewallBypass2Name Function()? name, String Function()? value, }) { return FirewallBypass2(
  name: name != null ? name() : this.name,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FirewallBypass2 &&
          name == other.name &&
          value == other.value; } 
@override int get hashCode { return Object.hash(name, value); } 
@override String toString() { return 'FirewallBypass2(name: $name, value: $value)'; } 
 }
