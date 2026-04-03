// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2 {const PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2._(this.value);

factory PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2._(json),
}; }

static const PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2 $empty = PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2._('');

static const List<PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2($value)'; } 
 }
typedef PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod = OneOf2<int,PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2>;
