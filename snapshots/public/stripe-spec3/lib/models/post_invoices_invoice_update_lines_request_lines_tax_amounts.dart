// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_invoices_invoice_update_lines_request_lines_tax_amounts_variant1.dart';@immutable final class PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant2 {const PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant2._(this.value);

factory PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant2._(json),
};}

static const PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant2 $empty = PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant2._('');

static const List<PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant2($value)';}
}

@immutable
final class PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmounts {
  const PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmounts({this.listPostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1 = const Omittable.absent(),
this.postInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmounts._({required this.rawValue, required this.listPostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1,
required this.postInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant2,});
  factory PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmounts.fromJson(Object? json) => PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmounts._(
    rawValue: Omittable(json),
    listPostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1: parseAnyOfVariant<List<PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant2: parseAnyOfVariant<PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant2>(json, (value) => PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1>> listPostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1;
final Omittable<PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant2> postInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1.isPresent || postInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1.isPresent) listPostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1.value?.map((e) => e.toJson()).toList(),
if (postInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant2.isPresent) postInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmounts && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmounts(${toJson()})';
}
