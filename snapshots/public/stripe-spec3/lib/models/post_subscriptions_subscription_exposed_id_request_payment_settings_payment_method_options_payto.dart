// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param42.dart';@immutable final class PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2 {const PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2._(this.value);

factory PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2._(json),
}; }

static const PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2 $empty = PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2._('');

static const List<PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2($value)'; } 
 }

@immutable
final class PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPayto {
  const PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPayto({this.invoicePaymentMethodOptionsParam42 = const Omittable.absent(),
this.postSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPayto._({required this.rawValue, required this.invoicePaymentMethodOptionsParam42,
required this.postSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2,});
  factory PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPayto.fromJson(Object? json) => PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPayto._(
    rawValue: Omittable(json),
    invoicePaymentMethodOptionsParam42: parseAnyOfVariant<InvoicePaymentMethodOptionsParam42>(json, (value) => InvoicePaymentMethodOptionsParam42.fromJson(value! as Map<String, dynamic>)),
postSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2: parseAnyOfVariant<PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2>(json, (value) => PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InvoicePaymentMethodOptionsParam42> invoicePaymentMethodOptionsParam42;
final Omittable<PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2> postSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => invoicePaymentMethodOptionsParam42.isPresent || postSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (invoicePaymentMethodOptionsParam42.isPresent) invoicePaymentMethodOptionsParam42.value?.toJson(),
if (postSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2.isPresent) postSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPayto && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsPayto(${toJson()})';
}
