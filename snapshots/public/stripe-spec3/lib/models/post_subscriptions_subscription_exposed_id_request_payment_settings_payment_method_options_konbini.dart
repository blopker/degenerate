// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param41.dart';@immutable final class PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2 {const PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2._(this.value);

factory PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2._(json),
}; }

static const PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2 $empty = PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2._('');

static const List<PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2($value)'; } 
 }

@immutable
final class PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbini {
  const PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbini({this.invoicePaymentMethodOptionsParam41 = const Omittable.absent(),
this.postSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbini._({required this.rawValue, required this.invoicePaymentMethodOptionsParam41,
required this.postSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2,});
  factory PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbini.fromJson(Object? json) => PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbini._(
    rawValue: Omittable(json),
    invoicePaymentMethodOptionsParam41: parseAnyOfVariant<InvoicePaymentMethodOptionsParam41>(json, (value) => InvoicePaymentMethodOptionsParam41.fromJson(value! as Map<String, dynamic>)),
postSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2: parseAnyOfVariant<PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2>(json, (value) => PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InvoicePaymentMethodOptionsParam41> invoicePaymentMethodOptionsParam41;
final Omittable<PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2> postSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => invoicePaymentMethodOptionsParam41.isPresent || postSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (invoicePaymentMethodOptionsParam41.isPresent) invoicePaymentMethodOptionsParam41.value?.toJson(),
if (postSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2.isPresent) postSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbini && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsKonbini(${toJson()})';
}
