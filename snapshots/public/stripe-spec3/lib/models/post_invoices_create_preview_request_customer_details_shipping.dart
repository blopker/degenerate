// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'customer_shipping4.dart';@immutable final class PostInvoicesCreatePreviewRequestCustomerDetailsShippingVariant2 {const PostInvoicesCreatePreviewRequestCustomerDetailsShippingVariant2._(this.value);

factory PostInvoicesCreatePreviewRequestCustomerDetailsShippingVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostInvoicesCreatePreviewRequestCustomerDetailsShippingVariant2._(json),
};}

static const PostInvoicesCreatePreviewRequestCustomerDetailsShippingVariant2 $empty = PostInvoicesCreatePreviewRequestCustomerDetailsShippingVariant2._('');

static const List<PostInvoicesCreatePreviewRequestCustomerDetailsShippingVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestCustomerDetailsShippingVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoicesCreatePreviewRequestCustomerDetailsShippingVariant2($value)';}
}

@immutable
final class PostInvoicesCreatePreviewRequestCustomerDetailsShipping {
  const PostInvoicesCreatePreviewRequestCustomerDetailsShipping({this.customerShipping4 = const Omittable.absent(),
this.postInvoicesCreatePreviewRequestCustomerDetailsShippingVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesCreatePreviewRequestCustomerDetailsShipping._({required this.rawValue, required this.customerShipping4,
required this.postInvoicesCreatePreviewRequestCustomerDetailsShippingVariant2,});
  factory PostInvoicesCreatePreviewRequestCustomerDetailsShipping.fromJson(Object? json) => PostInvoicesCreatePreviewRequestCustomerDetailsShipping._(
    rawValue: Omittable(json),
    customerShipping4: parseAnyOfVariant<CustomerShipping4>(json, (value) => CustomerShipping4.fromJson(value! as Map<String, dynamic>)),
postInvoicesCreatePreviewRequestCustomerDetailsShippingVariant2: parseAnyOfVariant<PostInvoicesCreatePreviewRequestCustomerDetailsShippingVariant2>(json, (value) => PostInvoicesCreatePreviewRequestCustomerDetailsShippingVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<CustomerShipping4> customerShipping4;
final Omittable<PostInvoicesCreatePreviewRequestCustomerDetailsShippingVariant2> postInvoicesCreatePreviewRequestCustomerDetailsShippingVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => customerShipping4.isPresent || postInvoicesCreatePreviewRequestCustomerDetailsShippingVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (customerShipping4.isPresent) customerShipping4.value?.toJson(),
if (postInvoicesCreatePreviewRequestCustomerDetailsShippingVariant2.isPresent) postInvoicesCreatePreviewRequestCustomerDetailsShippingVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesCreatePreviewRequestCustomerDetailsShipping && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesCreatePreviewRequestCustomerDetailsShipping(${toJson()})';
}
