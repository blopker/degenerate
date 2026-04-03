// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2 {const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2._(this.value);

factory PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2._(json),
}; }

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2 $empty = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2._('');

static const List<PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2($value)'; } 
 }
typedef PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmount = OneOf2<int,PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2>;
