// GENERATED CODE - DO NOT MODIFY BY HAND

/// Strictness of the DOB matching policy to apply.
final class GelatoSessionMatchingOptionsDob {const GelatoSessionMatchingOptionsDob._(this.value);

factory GelatoSessionMatchingOptionsDob.fromJson(String json) { return switch (json) {
  'none' => none,
  'similar' => similar,
  _ => GelatoSessionMatchingOptionsDob._(json),
}; }

static const GelatoSessionMatchingOptionsDob none = GelatoSessionMatchingOptionsDob._('none');

static const GelatoSessionMatchingOptionsDob similar = GelatoSessionMatchingOptionsDob._('similar');

static const List<GelatoSessionMatchingOptionsDob> values = [none, similar];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GelatoSessionMatchingOptionsDob && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GelatoSessionMatchingOptionsDob($value)'; } 
 }
/// Strictness of the name matching policy to apply.
final class GelatoSessionMatchingOptionsName {const GelatoSessionMatchingOptionsName._(this.value);

factory GelatoSessionMatchingOptionsName.fromJson(String json) { return switch (json) {
  'none' => none,
  'similar' => similar,
  _ => GelatoSessionMatchingOptionsName._(json),
}; }

static const GelatoSessionMatchingOptionsName none = GelatoSessionMatchingOptionsName._('none');

static const GelatoSessionMatchingOptionsName similar = GelatoSessionMatchingOptionsName._('similar');

static const List<GelatoSessionMatchingOptionsName> values = [none, similar];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GelatoSessionMatchingOptionsName && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GelatoSessionMatchingOptionsName($value)'; } 
 }
/// 
final class GelatoSessionMatchingOptions {const GelatoSessionMatchingOptions({this.dob, this.name, });

factory GelatoSessionMatchingOptions.fromJson(Map<String, dynamic> json) { return GelatoSessionMatchingOptions(
  dob: json['dob'] != null ? GelatoSessionMatchingOptionsDob.fromJson(json['dob'] as String) : null,
  name: json['name'] != null ? GelatoSessionMatchingOptionsName.fromJson(json['name'] as String) : null,
); }

/// Strictness of the DOB matching policy to apply.
final GelatoSessionMatchingOptionsDob? dob;

/// Strictness of the name matching policy to apply.
final GelatoSessionMatchingOptionsName? name;

Map<String, dynamic> toJson() { return {
  if (dob != null) 'dob': dob?.toJson(),
  if (name != null) 'name': name?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
GelatoSessionMatchingOptions copyWith({GelatoSessionMatchingOptionsDob Function()? dob, GelatoSessionMatchingOptionsName Function()? name, }) { return GelatoSessionMatchingOptions(
  dob: dob != null ? dob() : this.dob,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GelatoSessionMatchingOptions &&
          dob == other.dob &&
          name == other.name; } 
@override int get hashCode { return Object.hash(dob, name); } 
@override String toString() { return 'GelatoSessionMatchingOptions(dob: $dob, name: $name)'; } 
 }
