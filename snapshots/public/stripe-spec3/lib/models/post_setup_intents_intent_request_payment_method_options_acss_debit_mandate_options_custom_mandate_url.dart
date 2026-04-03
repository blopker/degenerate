// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSetupIntentsIntentRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2 {const PostSetupIntentsIntentRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2._(this.value);

factory PostSetupIntentsIntentRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsIntentRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2._(json),
}; }

static const PostSetupIntentsIntentRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2 $empty = PostSetupIntentsIntentRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2._('');

static const List<PostSetupIntentsIntentRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsIntentRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2($value)'; } 
 }
typedef PostSetupIntentsIntentRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrl = OneOf2<String,PostSetupIntentsIntentRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2>;
