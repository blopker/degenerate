// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostIssuingPersonalizationDesignsPersonalizationDesignRequestCardLogoVariant2 {const PostIssuingPersonalizationDesignsPersonalizationDesignRequestCardLogoVariant2._(this.value);

factory PostIssuingPersonalizationDesignsPersonalizationDesignRequestCardLogoVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostIssuingPersonalizationDesignsPersonalizationDesignRequestCardLogoVariant2._(json),
}; }

static const PostIssuingPersonalizationDesignsPersonalizationDesignRequestCardLogoVariant2 $empty = PostIssuingPersonalizationDesignsPersonalizationDesignRequestCardLogoVariant2._('');

static const List<PostIssuingPersonalizationDesignsPersonalizationDesignRequestCardLogoVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIssuingPersonalizationDesignsPersonalizationDesignRequestCardLogoVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIssuingPersonalizationDesignsPersonalizationDesignRequestCardLogoVariant2($value)'; } 
 }
typedef PostIssuingPersonalizationDesignsPersonalizationDesignRequestCardLogo = OneOf2<String,PostIssuingPersonalizationDesignsPersonalizationDesignRequestCardLogoVariant2>;