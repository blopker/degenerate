// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'checkout_rendering_options_param2.dart';@immutable final class PostPaymentLinksRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2 {const PostPaymentLinksRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2._(this.value);

factory PostPaymentLinksRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentLinksRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2._(json),
}; }

static const PostPaymentLinksRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2 $empty = PostPaymentLinksRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2._('');

static const List<PostPaymentLinksRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2($value)'; } 
 }

@immutable
final class PostPaymentLinksRequestInvoiceCreationInvoiceDataRenderingOptions {
  const PostPaymentLinksRequestInvoiceCreationInvoiceDataRenderingOptions({this.checkoutRenderingOptionsParam2 = const Omittable.absent(),
this.postPaymentLinksRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentLinksRequestInvoiceCreationInvoiceDataRenderingOptions._({required this.rawValue, required this.checkoutRenderingOptionsParam2,
required this.postPaymentLinksRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2,});
  factory PostPaymentLinksRequestInvoiceCreationInvoiceDataRenderingOptions.fromJson(Object? json) => PostPaymentLinksRequestInvoiceCreationInvoiceDataRenderingOptions._(
    rawValue: Omittable(json),
    checkoutRenderingOptionsParam2: parseAnyOfVariant<CheckoutRenderingOptionsParam2>(json, (value) => CheckoutRenderingOptionsParam2.fromJson(value! as Map<String, dynamic>)),
postPaymentLinksRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2: parseAnyOfVariant<PostPaymentLinksRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2>(json, (value) => PostPaymentLinksRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<CheckoutRenderingOptionsParam2> checkoutRenderingOptionsParam2;
final Omittable<PostPaymentLinksRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2> postPaymentLinksRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => checkoutRenderingOptionsParam2.isPresent || postPaymentLinksRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (checkoutRenderingOptionsParam2.isPresent) checkoutRenderingOptionsParam2.value?.toJson(),
if (postPaymentLinksRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2.isPresent) postPaymentLinksRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentLinksRequestInvoiceCreationInvoiceDataRenderingOptions && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentLinksRequestInvoiceCreationInvoiceDataRenderingOptions(${toJson()})';
}
