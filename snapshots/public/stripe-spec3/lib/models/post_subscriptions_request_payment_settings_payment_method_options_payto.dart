// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param35.dart';@immutable final class PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2 {const PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2._(this.value);

factory PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2._(json),
};}

static const PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2 $empty = PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2._('');

static const List<PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2($value)';}
}

@immutable
final class PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsPayto {
  const PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsPayto({this.invoicePaymentMethodOptionsParam35 = const Omittable.absent(),
this.postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsPayto._({required this.rawValue, required this.invoicePaymentMethodOptionsParam35,
required this.postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2,});
  factory PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsPayto.fromJson(Object? json) => PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsPayto._(
    rawValue: Omittable(json),
    invoicePaymentMethodOptionsParam35: parseAnyOfVariant<InvoicePaymentMethodOptionsParam35>(json, (value) => InvoicePaymentMethodOptionsParam35.fromJson(value! as Map<String, dynamic>)),
postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2: parseAnyOfVariant<PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2>(json, (value) => PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InvoicePaymentMethodOptionsParam35> invoicePaymentMethodOptionsParam35;
final Omittable<PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2> postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => invoicePaymentMethodOptionsParam35.isPresent || postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (invoicePaymentMethodOptionsParam35.isPresent) invoicePaymentMethodOptionsParam35.value?.toJson(),
if (postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2.isPresent) postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsPayto && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsPayto(${toJson()})';
}
