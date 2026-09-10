// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param34.dart';@immutable final class PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2 {const PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2._(this.value);

factory PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2._(json),
}; }

static const PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2 $empty = PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2._('');

static const List<PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2($value)'; } 
 }

@immutable
final class PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbini {
  const PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbini({this.invoicePaymentMethodOptionsParam34 = const Omittable.absent(),
this.postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbini._({required this.rawValue, required this.invoicePaymentMethodOptionsParam34,
required this.postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2,});
  factory PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbini.fromJson(Object? json) => PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbini._(
    rawValue: Omittable(json),
    invoicePaymentMethodOptionsParam34: parseAnyOfVariant<InvoicePaymentMethodOptionsParam34>(json, (value) => InvoicePaymentMethodOptionsParam34.fromJson(value! as Map<String, dynamic>)),
postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2: parseAnyOfVariant<PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2>(json, (value) => PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InvoicePaymentMethodOptionsParam34> invoicePaymentMethodOptionsParam34;
final Omittable<PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2> postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => invoicePaymentMethodOptionsParam34.isPresent || postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (invoicePaymentMethodOptionsParam34.isPresent) invoicePaymentMethodOptionsParam34.value?.toJson(),
if (postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2.isPresent) postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbini && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsKonbini(${toJson()})';
}
