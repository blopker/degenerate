// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shipping_cost.dart';@immutable final class PostInvoicesInvoiceRequestShippingCostVariant2 {const PostInvoicesInvoiceRequestShippingCostVariant2._(this.value);

factory PostInvoicesInvoiceRequestShippingCostVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceRequestShippingCostVariant2._(json),
};}

static const PostInvoicesInvoiceRequestShippingCostVariant2 $empty = PostInvoicesInvoiceRequestShippingCostVariant2._('');

static const List<PostInvoicesInvoiceRequestShippingCostVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoicesInvoiceRequestShippingCostVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoicesInvoiceRequestShippingCostVariant2($value)';}
}
/// Settings for the cost of shipping for this invoice.
@immutable
final class PostInvoicesInvoiceRequestShippingCost {
  const PostInvoicesInvoiceRequestShippingCost({this.shippingCost = const Omittable.absent(),
this.postInvoicesInvoiceRequestShippingCostVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesInvoiceRequestShippingCost._({required this.rawValue, required this.shippingCost,
required this.postInvoicesInvoiceRequestShippingCostVariant2,});
  factory PostInvoicesInvoiceRequestShippingCost.fromJson(Object? json) => PostInvoicesInvoiceRequestShippingCost._(
    rawValue: Omittable(json),
    shippingCost: parseAnyOfVariant<ShippingCost>(json, (value) => ShippingCost.fromJson(value! as Map<String, dynamic>)),
postInvoicesInvoiceRequestShippingCostVariant2: parseAnyOfVariant<PostInvoicesInvoiceRequestShippingCostVariant2>(json, (value) => PostInvoicesInvoiceRequestShippingCostVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<ShippingCost> shippingCost;
final Omittable<PostInvoicesInvoiceRequestShippingCostVariant2> postInvoicesInvoiceRequestShippingCostVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => shippingCost.isPresent || postInvoicesInvoiceRequestShippingCostVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (shippingCost.isPresent) shippingCost.value?.toJson(),
if (postInvoicesInvoiceRequestShippingCostVariant2.isPresent) postInvoicesInvoiceRequestShippingCostVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesInvoiceRequestShippingCost && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesInvoiceRequestShippingCost(${toJson()})';
}
