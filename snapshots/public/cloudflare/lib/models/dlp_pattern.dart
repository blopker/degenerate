// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DlpValidation {const DlpValidation._(this.value);

factory DlpValidation.fromJson(String json) { return switch (json) {
  'luhn' => luhn,
  _ => DlpValidation._(json),
}; }

static const DlpValidation luhn = DlpValidation._('luhn');

static const List<DlpValidation> values = [luhn];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DlpValidation && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DlpValidation($value)'; } 
 }
@immutable final class DlpPattern {const DlpPattern({required this.regex, this.validation, });

factory DlpPattern.fromJson(Map<String, dynamic> json) { return DlpPattern(
  regex: json['regex'] as String,
  validation: json['validation'] != null ? DlpValidation.fromJson(json['validation'] as String) : null,
); }

final String regex;

final DlpValidation? validation;

Map<String, dynamic> toJson() { return {
  'regex': regex,
  if (validation != null) 'validation': validation?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('regex') && json['regex'] is String; } 
DlpPattern copyWith({String? regex, DlpValidation Function()? validation, }) { return DlpPattern(
  regex: regex ?? this.regex,
  validation: validation != null ? validation() : this.validation,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpPattern &&
          regex == other.regex &&
          validation == other.validation; } 
@override int get hashCode { return Object.hash(regex, validation); } 
@override String toString() { return 'DlpPattern(regex: $regex, validation: $validation)'; } 
 }
