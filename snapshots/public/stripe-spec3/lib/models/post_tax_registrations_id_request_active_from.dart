// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTaxRegistrationsIdRequestActiveFromVariant1 {const PostTaxRegistrationsIdRequestActiveFromVariant1._(this.value);

factory PostTaxRegistrationsIdRequestActiveFromVariant1.fromJson(String json) { return switch (json) {
  'now' => now,
  _ => PostTaxRegistrationsIdRequestActiveFromVariant1._(json),
}; }

static const PostTaxRegistrationsIdRequestActiveFromVariant1 now = PostTaxRegistrationsIdRequestActiveFromVariant1._('now');

static const List<PostTaxRegistrationsIdRequestActiveFromVariant1> values = [now];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsIdRequestActiveFromVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsIdRequestActiveFromVariant1($value)'; } 
 }
typedef PostTaxRegistrationsIdRequestActiveFrom = OneOf2<PostTaxRegistrationsIdRequestActiveFromVariant1,int>;
