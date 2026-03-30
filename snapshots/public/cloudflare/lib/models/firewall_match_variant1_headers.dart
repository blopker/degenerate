// GENERATED CODE - DO NOT MODIFY BY HAND

/// The name of the response header to match.
extension type const FirewallHeaderName(String value) {
factory FirewallHeaderName.fromJson(String json) => FirewallHeaderName(json);

String toJson() => value;

}
/// The operator used when matching: `eq` means "equal" and `ne` means "not equal".
final class FirewallHeaderOp {const FirewallHeaderOp._(this.value);

factory FirewallHeaderOp.fromJson(String json) { return switch (json) {
  'eq' => eq,
  'ne' => ne,
  _ => FirewallHeaderOp._(json),
}; }

static const FirewallHeaderOp eq = FirewallHeaderOp._('eq');

static const FirewallHeaderOp ne = FirewallHeaderOp._('ne');

static const List<FirewallHeaderOp> values = [eq, ne];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FirewallHeaderOp && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FirewallHeaderOp($value)'; } 
 }
/// The value of the response header, which must match exactly.
extension type const FirewallHeaderValue(String value) {
factory FirewallHeaderValue.fromJson(String json) => FirewallHeaderValue(json);

String toJson() => value;

}
final class FirewallMatchVariant1Headers {const FirewallMatchVariant1Headers({this.name, this.op, this.value, });

factory FirewallMatchVariant1Headers.fromJson(Map<String, dynamic> json) { return FirewallMatchVariant1Headers(
  name: json['name'] != null ? FirewallHeaderName.fromJson(json['name'] as String) : null,
  op: json['op'] != null ? FirewallHeaderOp.fromJson(json['op'] as String) : null,
  value: json['value'] != null ? FirewallHeaderValue.fromJson(json['value'] as String) : null,
); }

/// The name of the response header to match.
final FirewallHeaderName? name;

/// The operator used when matching: `eq` means "equal" and `ne` means "not equal".
final FirewallHeaderOp? op;

/// The value of the response header, which must match exactly.
final FirewallHeaderValue? value;

Map<String, dynamic> toJson() { return {
  if (name != null) 'name': name?.toJson(),
  if (op != null) 'op': op?.toJson(),
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name', 'op', 'value'}.contains(key)); } 
FirewallMatchVariant1Headers copyWith({FirewallHeaderName Function()? name, FirewallHeaderOp Function()? op, FirewallHeaderValue Function()? value, }) { return FirewallMatchVariant1Headers(
  name: name != null ? name() : this.name,
  op: op != null ? op() : this.op,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FirewallMatchVariant1Headers &&
          name == other.name &&
          op == other.op &&
          value == other.value; } 
@override int get hashCode { return Object.hash(name, op, value); } 
@override String toString() { return 'FirewallMatchVariant1Headers(name: $name, op: $op, value: $value)'; } 
 }
