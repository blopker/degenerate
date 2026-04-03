// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTaxRegistrationsRequestCountryOptionsCrType {const PostTaxRegistrationsRequestCountryOptionsCrType._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsCrType.fromJson(String json) { return switch (json) {
  'simplified' => simplified,
  _ => PostTaxRegistrationsRequestCountryOptionsCrType._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsCrType simplified = PostTaxRegistrationsRequestCountryOptionsCrType._('simplified');

static const List<PostTaxRegistrationsRequestCountryOptionsCrType> values = [simplified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsCrType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsCrType($value)'; } 
 }
@immutable final class PostTaxRegistrationsRequestCountryOptionsCr {const PostTaxRegistrationsRequestCountryOptionsCr({required this.type});

factory PostTaxRegistrationsRequestCountryOptionsCr.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsCr(
  type: PostTaxRegistrationsRequestCountryOptionsCrType.fromJson(json['type'] as String),
); }

final PostTaxRegistrationsRequestCountryOptionsCrType type;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostTaxRegistrationsRequestCountryOptionsCr copyWith({PostTaxRegistrationsRequestCountryOptionsCrType? type}) { return PostTaxRegistrationsRequestCountryOptionsCr(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsCr &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsCr(type: $type)'; } 
 }
