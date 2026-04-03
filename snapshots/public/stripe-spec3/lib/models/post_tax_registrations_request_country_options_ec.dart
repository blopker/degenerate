// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTaxRegistrationsRequestCountryOptionsEcType {const PostTaxRegistrationsRequestCountryOptionsEcType._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsEcType.fromJson(String json) { return switch (json) {
  'simplified' => simplified,
  _ => PostTaxRegistrationsRequestCountryOptionsEcType._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsEcType simplified = PostTaxRegistrationsRequestCountryOptionsEcType._('simplified');

static const List<PostTaxRegistrationsRequestCountryOptionsEcType> values = [simplified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsEcType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsEcType($value)'; } 
 }
@immutable final class PostTaxRegistrationsRequestCountryOptionsEc {const PostTaxRegistrationsRequestCountryOptionsEc({required this.type});

factory PostTaxRegistrationsRequestCountryOptionsEc.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsEc(
  type: PostTaxRegistrationsRequestCountryOptionsEcType.fromJson(json['type'] as String),
); }

final PostTaxRegistrationsRequestCountryOptionsEcType type;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostTaxRegistrationsRequestCountryOptionsEc copyWith({PostTaxRegistrationsRequestCountryOptionsEcType? type}) { return PostTaxRegistrationsRequestCountryOptionsEc(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsEc &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsEc(type: $type)'; } 
 }
