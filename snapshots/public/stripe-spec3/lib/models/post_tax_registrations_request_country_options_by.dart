// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTaxRegistrationsRequestCountryOptionsByType {const PostTaxRegistrationsRequestCountryOptionsByType._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsByType.fromJson(String json) { return switch (json) {
  'simplified' => simplified,
  _ => PostTaxRegistrationsRequestCountryOptionsByType._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsByType simplified = PostTaxRegistrationsRequestCountryOptionsByType._('simplified');

static const List<PostTaxRegistrationsRequestCountryOptionsByType> values = [simplified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsByType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsByType($value)'; } 
 }
@immutable final class PostTaxRegistrationsRequestCountryOptionsBy {const PostTaxRegistrationsRequestCountryOptionsBy({required this.type});

factory PostTaxRegistrationsRequestCountryOptionsBy.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsBy(
  type: PostTaxRegistrationsRequestCountryOptionsByType.fromJson(json['type'] as String),
); }

final PostTaxRegistrationsRequestCountryOptionsByType type;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostTaxRegistrationsRequestCountryOptionsBy copyWith({PostTaxRegistrationsRequestCountryOptionsByType? type}) { return PostTaxRegistrationsRequestCountryOptionsBy(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsBy &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsBy(type: $type)'; } 
 }
