// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTaxRegistrationsIdRequestExpiresAtVariant1 {const PostTaxRegistrationsIdRequestExpiresAtVariant1._(this.value);

factory PostTaxRegistrationsIdRequestExpiresAtVariant1.fromJson(String json) { return switch (json) {
  'now' => now,
  _ => PostTaxRegistrationsIdRequestExpiresAtVariant1._(json),
}; }

static const PostTaxRegistrationsIdRequestExpiresAtVariant1 now = PostTaxRegistrationsIdRequestExpiresAtVariant1._('now');

static const List<PostTaxRegistrationsIdRequestExpiresAtVariant1> values = [now];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsIdRequestExpiresAtVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsIdRequestExpiresAtVariant1($value)'; } 
 }
@immutable final class PostTaxRegistrationsIdRequestExpiresAtVariant3 {const PostTaxRegistrationsIdRequestExpiresAtVariant3._(this.value);

factory PostTaxRegistrationsIdRequestExpiresAtVariant3.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTaxRegistrationsIdRequestExpiresAtVariant3._(json),
}; }

static const PostTaxRegistrationsIdRequestExpiresAtVariant3 $empty = PostTaxRegistrationsIdRequestExpiresAtVariant3._('');

static const List<PostTaxRegistrationsIdRequestExpiresAtVariant3> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsIdRequestExpiresAtVariant3 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsIdRequestExpiresAtVariant3($value)'; } 
 }
typedef PostTaxRegistrationsIdRequestExpiresAt = OneOf3<PostTaxRegistrationsIdRequestExpiresAtVariant1,int,PostTaxRegistrationsIdRequestExpiresAtVariant3>;
