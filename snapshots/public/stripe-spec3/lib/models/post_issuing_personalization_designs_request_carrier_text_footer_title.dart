// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostIssuingPersonalizationDesignsRequestCarrierTextFooterTitleVariant2 {const PostIssuingPersonalizationDesignsRequestCarrierTextFooterTitleVariant2._(this.value);

factory PostIssuingPersonalizationDesignsRequestCarrierTextFooterTitleVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostIssuingPersonalizationDesignsRequestCarrierTextFooterTitleVariant2._(json),
}; }

static const PostIssuingPersonalizationDesignsRequestCarrierTextFooterTitleVariant2 $empty = PostIssuingPersonalizationDesignsRequestCarrierTextFooterTitleVariant2._('');

static const List<PostIssuingPersonalizationDesignsRequestCarrierTextFooterTitleVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIssuingPersonalizationDesignsRequestCarrierTextFooterTitleVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIssuingPersonalizationDesignsRequestCarrierTextFooterTitleVariant2($value)'; } 
 }
typedef PostIssuingPersonalizationDesignsRequestCarrierTextFooterTitle = OneOf2<String,PostIssuingPersonalizationDesignsRequestCarrierTextFooterTitleVariant2>;
