// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTaxRegistrationsRequestCountryOptionsTjType {const PostTaxRegistrationsRequestCountryOptionsTjType._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsTjType.fromJson(String json) { return switch (json) {
  'simplified' => simplified,
  _ => PostTaxRegistrationsRequestCountryOptionsTjType._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsTjType simplified = PostTaxRegistrationsRequestCountryOptionsTjType._('simplified');

static const List<PostTaxRegistrationsRequestCountryOptionsTjType> values = [simplified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsTjType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsTjType($value)'; } 
 }
@immutable final class PostTaxRegistrationsRequestCountryOptionsTj {const PostTaxRegistrationsRequestCountryOptionsTj({required this.type});

factory PostTaxRegistrationsRequestCountryOptionsTj.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsTj(
  type: PostTaxRegistrationsRequestCountryOptionsTjType.fromJson(json['type'] as String),
); }

final PostTaxRegistrationsRequestCountryOptionsTjType type;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostTaxRegistrationsRequestCountryOptionsTj copyWith({PostTaxRegistrationsRequestCountryOptionsTjType? type}) { return PostTaxRegistrationsRequestCountryOptionsTj(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsTj &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsTj(type: $type)'; } 
 }
