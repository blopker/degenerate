// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'transfer_data_specs7.dart';final class PostSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2 {const PostSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2._(this.value);

factory PostSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2._(json),
}; }

static const PostSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2 $empty = PostSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2._('');

static const List<PostSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2($value)'; } 
 }
typedef PostSubscriptionsSubscriptionExposedIdRequestTransferData = OneOf2<TransferDataSpecs7,PostSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2>;