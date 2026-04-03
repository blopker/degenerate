// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostIssuingPersonalizationDesignsPersonalizationDesignRequestNameVariant2 {const PostIssuingPersonalizationDesignsPersonalizationDesignRequestNameVariant2._(this.value);

factory PostIssuingPersonalizationDesignsPersonalizationDesignRequestNameVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostIssuingPersonalizationDesignsPersonalizationDesignRequestNameVariant2._(json),
}; }

static const PostIssuingPersonalizationDesignsPersonalizationDesignRequestNameVariant2 $empty = PostIssuingPersonalizationDesignsPersonalizationDesignRequestNameVariant2._('');

static const List<PostIssuingPersonalizationDesignsPersonalizationDesignRequestNameVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIssuingPersonalizationDesignsPersonalizationDesignRequestNameVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIssuingPersonalizationDesignsPersonalizationDesignRequestNameVariant2($value)'; } 
 }
typedef PostIssuingPersonalizationDesignsPersonalizationDesignRequestName = OneOf2<String,PostIssuingPersonalizationDesignsPersonalizationDesignRequestNameVariant2>;
