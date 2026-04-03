// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2 {const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2._(this.value);

factory PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2._(json),
}; }

static const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2 $empty = PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2._('');

static const List<PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2($value)'; } 
 }
typedef PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsStartDate = OneOf2<String,PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2>;
