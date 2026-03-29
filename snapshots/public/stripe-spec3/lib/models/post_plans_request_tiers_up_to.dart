// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostPlansRequestTiersUpToVariant1 {const PostPlansRequestTiersUpToVariant1._(this.value);

factory PostPlansRequestTiersUpToVariant1.fromJson(String json) { return switch (json) {
  'inf' => inf,
  _ => PostPlansRequestTiersUpToVariant1._(json),
}; }

static const PostPlansRequestTiersUpToVariant1 inf = PostPlansRequestTiersUpToVariant1._('inf');

static const List<PostPlansRequestTiersUpToVariant1> values = [inf];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPlansRequestTiersUpToVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPlansRequestTiersUpToVariant1($value)'; } 
 }
typedef PostPlansRequestTiersUpTo = OneOf2<PostPlansRequestTiersUpToVariant1,int>;