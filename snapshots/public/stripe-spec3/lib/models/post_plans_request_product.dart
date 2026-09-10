// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'inline_product_params.dart';
@immutable
final class PostPlansRequestProduct {
  const PostPlansRequestProduct({this.inlineProductParams = const Omittable.absent(),
this.string = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPlansRequestProduct._({required this.rawValue, required this.inlineProductParams,
required this.string,});
  factory PostPlansRequestProduct.fromJson(Object? json) => PostPlansRequestProduct._(
    rawValue: Omittable(json),
    inlineProductParams: parseAnyOfVariant<InlineProductParams>(json, (value) => InlineProductParams.fromJson(value! as Map<String, dynamic>)),
string: parseAnyOfVariant<String>(json, (value) => value! as String),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InlineProductParams> inlineProductParams;
final Omittable<String> string;

  /// Whether at least one known variant matched.
  bool get isValid => inlineProductParams.isPresent || string.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (inlineProductParams.isPresent) inlineProductParams.value?.toJson(),
if (string.isPresent) string.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPlansRequestProduct && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPlansRequestProduct(${toJson()})';
}
