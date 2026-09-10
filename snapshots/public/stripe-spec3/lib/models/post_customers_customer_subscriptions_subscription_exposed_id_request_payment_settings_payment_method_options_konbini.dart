// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param11.dart';@immutable final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2 {const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2._(this.value);

factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2._(json),
};}

static const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2 $empty = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2._('');

static const List<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2($value)';}
}

@immutable
final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbini {
  const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbini({this.invoicePaymentMethodOptionsParam11 = const Omittable.absent(),
this.postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbini._({required this.rawValue, required this.invoicePaymentMethodOptionsParam11,
required this.postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2,});
  factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbini.fromJson(Object? json) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbini._(
    rawValue: Omittable(json),
    invoicePaymentMethodOptionsParam11: parseAnyOfVariant<InvoicePaymentMethodOptionsParam11>(json, (value) => InvoicePaymentMethodOptionsParam11.fromJson(value! as Map<String, dynamic>)),
postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2: parseAnyOfVariant<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2>(json, (value) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InvoicePaymentMethodOptionsParam11> invoicePaymentMethodOptionsParam11;
final Omittable<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2> postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => invoicePaymentMethodOptionsParam11.isPresent || postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (invoicePaymentMethodOptionsParam11.isPresent) invoicePaymentMethodOptionsParam11.value?.toJson(),
if (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2.isPresent) postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbini && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbini(${toJson()})';
}
