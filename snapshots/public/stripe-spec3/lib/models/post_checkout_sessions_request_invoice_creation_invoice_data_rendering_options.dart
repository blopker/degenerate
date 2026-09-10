// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'checkout_rendering_options_param.dart';@immutable final class PostCheckoutSessionsRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2 {const PostCheckoutSessionsRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2._(this.value);

factory PostCheckoutSessionsRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostCheckoutSessionsRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2._(json),
};}

static const PostCheckoutSessionsRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2 $empty = PostCheckoutSessionsRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2._('');

static const List<PostCheckoutSessionsRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostCheckoutSessionsRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostCheckoutSessionsRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2($value)';}
}

@immutable
final class PostCheckoutSessionsRequestInvoiceCreationInvoiceDataRenderingOptions {
  const PostCheckoutSessionsRequestInvoiceCreationInvoiceDataRenderingOptions({this.checkoutRenderingOptionsParam = const Omittable.absent(),
this.postCheckoutSessionsRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCheckoutSessionsRequestInvoiceCreationInvoiceDataRenderingOptions._({required this.rawValue, required this.checkoutRenderingOptionsParam,
required this.postCheckoutSessionsRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2,});
  factory PostCheckoutSessionsRequestInvoiceCreationInvoiceDataRenderingOptions.fromJson(Object? json) => PostCheckoutSessionsRequestInvoiceCreationInvoiceDataRenderingOptions._(
    rawValue: Omittable(json),
    checkoutRenderingOptionsParam: parseAnyOfVariant<CheckoutRenderingOptionsParam>(json, (value) => CheckoutRenderingOptionsParam.fromJson(value! as Map<String, dynamic>)),
postCheckoutSessionsRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2: parseAnyOfVariant<PostCheckoutSessionsRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2>(json, (value) => PostCheckoutSessionsRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<CheckoutRenderingOptionsParam> checkoutRenderingOptionsParam;
final Omittable<PostCheckoutSessionsRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2> postCheckoutSessionsRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => checkoutRenderingOptionsParam.isPresent || postCheckoutSessionsRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (checkoutRenderingOptionsParam.isPresent) checkoutRenderingOptionsParam.value?.toJson(),
if (postCheckoutSessionsRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2.isPresent) postCheckoutSessionsRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCheckoutSessionsRequestInvoiceCreationInvoiceDataRenderingOptions && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCheckoutSessionsRequestInvoiceCreationInvoiceDataRenderingOptions(${toJson()})';
}
