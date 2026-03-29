// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2 {const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2._(this.value);

factory PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2._(json),
}; }

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2 $empty = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2._('');

static const List<PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2($value)'; } 
 }
typedef PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix = OneOf2<String,PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2>;