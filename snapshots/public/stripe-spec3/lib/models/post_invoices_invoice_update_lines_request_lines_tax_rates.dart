// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesInvoiceUpdateLinesRequestLinesTaxRatesVariant2 {const PostInvoicesInvoiceUpdateLinesRequestLinesTaxRatesVariant2._(this.value);

factory PostInvoicesInvoiceUpdateLinesRequestLinesTaxRatesVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceUpdateLinesRequestLinesTaxRatesVariant2._(json),
};}

static const PostInvoicesInvoiceUpdateLinesRequestLinesTaxRatesVariant2 $empty = PostInvoicesInvoiceUpdateLinesRequestLinesTaxRatesVariant2._('');

static const List<PostInvoicesInvoiceUpdateLinesRequestLinesTaxRatesVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoicesInvoiceUpdateLinesRequestLinesTaxRatesVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoicesInvoiceUpdateLinesRequestLinesTaxRatesVariant2($value)';}
}

@immutable
final class PostInvoicesInvoiceUpdateLinesRequestLinesTaxRates {
  const PostInvoicesInvoiceUpdateLinesRequestLinesTaxRates({this.listString = const Omittable.absent(),
this.postInvoicesInvoiceUpdateLinesRequestLinesTaxRatesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesInvoiceUpdateLinesRequestLinesTaxRates._({required this.rawValue, required this.listString,
required this.postInvoicesInvoiceUpdateLinesRequestLinesTaxRatesVariant2,});
  factory PostInvoicesInvoiceUpdateLinesRequestLinesTaxRates.fromJson(Object? json) => PostInvoicesInvoiceUpdateLinesRequestLinesTaxRates._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postInvoicesInvoiceUpdateLinesRequestLinesTaxRatesVariant2: parseAnyOfVariant<PostInvoicesInvoiceUpdateLinesRequestLinesTaxRatesVariant2>(json, (value) => PostInvoicesInvoiceUpdateLinesRequestLinesTaxRatesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostInvoicesInvoiceUpdateLinesRequestLinesTaxRatesVariant2> postInvoicesInvoiceUpdateLinesRequestLinesTaxRatesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postInvoicesInvoiceUpdateLinesRequestLinesTaxRatesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postInvoicesInvoiceUpdateLinesRequestLinesTaxRatesVariant2.isPresent) postInvoicesInvoiceUpdateLinesRequestLinesTaxRatesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesInvoiceUpdateLinesRequestLinesTaxRates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesInvoiceUpdateLinesRequestLinesTaxRates(${toJson()})';
}
