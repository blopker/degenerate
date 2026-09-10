// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesInvoiceAddLinesRequestLinesTaxRatesVariant2 {const PostInvoicesInvoiceAddLinesRequestLinesTaxRatesVariant2._(this.value);

factory PostInvoicesInvoiceAddLinesRequestLinesTaxRatesVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceAddLinesRequestLinesTaxRatesVariant2._(json),
};}

static const PostInvoicesInvoiceAddLinesRequestLinesTaxRatesVariant2 $empty = PostInvoicesInvoiceAddLinesRequestLinesTaxRatesVariant2._('');

static const List<PostInvoicesInvoiceAddLinesRequestLinesTaxRatesVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoicesInvoiceAddLinesRequestLinesTaxRatesVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoicesInvoiceAddLinesRequestLinesTaxRatesVariant2($value)';}
}

@immutable
final class PostInvoicesInvoiceAddLinesRequestLinesTaxRates {
  const PostInvoicesInvoiceAddLinesRequestLinesTaxRates({this.listString = const Omittable.absent(),
this.postInvoicesInvoiceAddLinesRequestLinesTaxRatesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesInvoiceAddLinesRequestLinesTaxRates._({required this.rawValue, required this.listString,
required this.postInvoicesInvoiceAddLinesRequestLinesTaxRatesVariant2,});
  factory PostInvoicesInvoiceAddLinesRequestLinesTaxRates.fromJson(Object? json) => PostInvoicesInvoiceAddLinesRequestLinesTaxRates._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postInvoicesInvoiceAddLinesRequestLinesTaxRatesVariant2: parseAnyOfVariant<PostInvoicesInvoiceAddLinesRequestLinesTaxRatesVariant2>(json, (value) => PostInvoicesInvoiceAddLinesRequestLinesTaxRatesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostInvoicesInvoiceAddLinesRequestLinesTaxRatesVariant2> postInvoicesInvoiceAddLinesRequestLinesTaxRatesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postInvoicesInvoiceAddLinesRequestLinesTaxRatesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postInvoicesInvoiceAddLinesRequestLinesTaxRatesVariant2.isPresent) postInvoicesInvoiceAddLinesRequestLinesTaxRatesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesInvoiceAddLinesRequestLinesTaxRates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesInvoiceAddLinesRequestLinesTaxRates(${toJson()})';
}
