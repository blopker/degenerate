// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'checkout_rendering_options_param3.dart';@immutable final class PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2 {const PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2._(this.value);

factory PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2._(json),
};}

static const PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2 $empty = PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2._('');

static const List<PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2($value)';}
}

@immutable
final class PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataRenderingOptions {
  const PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataRenderingOptions({this.checkoutRenderingOptionsParam3 = const Omittable.absent(),
this.postPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataRenderingOptions._({required this.rawValue, required this.checkoutRenderingOptionsParam3,
required this.postPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2,});
  factory PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataRenderingOptions.fromJson(Object? json) => PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataRenderingOptions._(
    rawValue: Omittable(json),
    checkoutRenderingOptionsParam3: parseAnyOfVariant<CheckoutRenderingOptionsParam3>(json, (value) => CheckoutRenderingOptionsParam3.fromJson(value! as Map<String, dynamic>)),
postPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2: parseAnyOfVariant<PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2>(json, (value) => PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<CheckoutRenderingOptionsParam3> checkoutRenderingOptionsParam3;
final Omittable<PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2> postPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => checkoutRenderingOptionsParam3.isPresent || postPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (checkoutRenderingOptionsParam3.isPresent) checkoutRenderingOptionsParam3.value?.toJson(),
if (postPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2.isPresent) postPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataRenderingOptions && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataRenderingOptions(${toJson()})';
}
