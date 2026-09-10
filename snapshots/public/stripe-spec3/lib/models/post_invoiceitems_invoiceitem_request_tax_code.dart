// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoiceitemsInvoiceitemRequestTaxCodeVariant2 {const PostInvoiceitemsInvoiceitemRequestTaxCodeVariant2._(this.value);

factory PostInvoiceitemsInvoiceitemRequestTaxCodeVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostInvoiceitemsInvoiceitemRequestTaxCodeVariant2._(json),
};}

static const PostInvoiceitemsInvoiceitemRequestTaxCodeVariant2 $empty = PostInvoiceitemsInvoiceitemRequestTaxCodeVariant2._('');

static const List<PostInvoiceitemsInvoiceitemRequestTaxCodeVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoiceitemsInvoiceitemRequestTaxCodeVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoiceitemsInvoiceitemRequestTaxCodeVariant2($value)';}
}
/// A [tax code](https://docs.stripe.com/tax/tax-categories) ID.
@immutable
final class PostInvoiceitemsInvoiceitemRequestTaxCode {
  const PostInvoiceitemsInvoiceitemRequestTaxCode({this.string = const Omittable.absent(),
this.postInvoiceitemsInvoiceitemRequestTaxCodeVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoiceitemsInvoiceitemRequestTaxCode._({required this.rawValue, required this.string,
required this.postInvoiceitemsInvoiceitemRequestTaxCodeVariant2,});
  factory PostInvoiceitemsInvoiceitemRequestTaxCode.fromJson(Object? json) => PostInvoiceitemsInvoiceitemRequestTaxCode._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postInvoiceitemsInvoiceitemRequestTaxCodeVariant2: parseAnyOfVariant<PostInvoiceitemsInvoiceitemRequestTaxCodeVariant2>(json, (value) => PostInvoiceitemsInvoiceitemRequestTaxCodeVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostInvoiceitemsInvoiceitemRequestTaxCodeVariant2> postInvoiceitemsInvoiceitemRequestTaxCodeVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postInvoiceitemsInvoiceitemRequestTaxCodeVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postInvoiceitemsInvoiceitemRequestTaxCodeVariant2.isPresent) postInvoiceitemsInvoiceitemRequestTaxCodeVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoiceitemsInvoiceitemRequestTaxCode && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoiceitemsInvoiceitemRequestTaxCode(${toJson()})';
}
