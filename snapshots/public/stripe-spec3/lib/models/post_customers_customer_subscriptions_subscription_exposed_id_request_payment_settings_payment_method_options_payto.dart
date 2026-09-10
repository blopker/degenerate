// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param12.dart';@immutable final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2 {const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2._(this.value);

factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2._(json),
};}

static const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2 $empty = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2._('');

static const List<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2($value)';}
}

@immutable
final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPayto {
  const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPayto({this.invoicePaymentMethodOptionsParam12 = const Omittable.absent(),
this.postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPayto._({required this.rawValue, required this.invoicePaymentMethodOptionsParam12,
required this.postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2,});
  factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPayto.fromJson(Object? json) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPayto._(
    rawValue: Omittable(json),
    invoicePaymentMethodOptionsParam12: parseAnyOfVariant<InvoicePaymentMethodOptionsParam12>(json, (value) => InvoicePaymentMethodOptionsParam12.fromJson(value! as Map<String, dynamic>)),
postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2: parseAnyOfVariant<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2>(json, (value) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InvoicePaymentMethodOptionsParam12> invoicePaymentMethodOptionsParam12;
final Omittable<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2> postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => invoicePaymentMethodOptionsParam12.isPresent || postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (invoicePaymentMethodOptionsParam12.isPresent) invoicePaymentMethodOptionsParam12.value?.toJson(),
if (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2.isPresent) postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPayto && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPayto(${toJson()})';
}
