// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTaxRegistrationsRequestCountryOptionsGeType {const PostTaxRegistrationsRequestCountryOptionsGeType._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsGeType.fromJson(String json) { return switch (json) {
  'simplified' => simplified,
  _ => PostTaxRegistrationsRequestCountryOptionsGeType._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsGeType simplified = PostTaxRegistrationsRequestCountryOptionsGeType._('simplified');

static const List<PostTaxRegistrationsRequestCountryOptionsGeType> values = [simplified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsGeType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsGeType($value)'; } 
 }
@immutable final class PostTaxRegistrationsRequestCountryOptionsGe {const PostTaxRegistrationsRequestCountryOptionsGe({required this.type});

factory PostTaxRegistrationsRequestCountryOptionsGe.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsGe(
  type: PostTaxRegistrationsRequestCountryOptionsGeType.fromJson(json['type'] as String),
); }

final PostTaxRegistrationsRequestCountryOptionsGeType type;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostTaxRegistrationsRequestCountryOptionsGe copyWith({PostTaxRegistrationsRequestCountryOptionsGeType? type}) { return PostTaxRegistrationsRequestCountryOptionsGe(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsGe &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsGe(type: $type)'; } 
 }
