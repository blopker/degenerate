// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_invoices_invoice_add_lines_request_lines_tax_amounts_variant1.dart';@immutable final class PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant2 {const PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant2._(this.value);

factory PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant2._(json),
};}

static const PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant2 $empty = PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant2._('');

static const List<PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant2($value)';}
}

@immutable
final class PostInvoicesInvoiceAddLinesRequestLinesTaxAmounts {
  const PostInvoicesInvoiceAddLinesRequestLinesTaxAmounts({this.listPostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1 = const Omittable.absent(),
this.postInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesInvoiceAddLinesRequestLinesTaxAmounts._({required this.rawValue, required this.listPostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1,
required this.postInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant2,});
  factory PostInvoicesInvoiceAddLinesRequestLinesTaxAmounts.fromJson(Object? json) => PostInvoicesInvoiceAddLinesRequestLinesTaxAmounts._(
    rawValue: Omittable(json),
    listPostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1: parseAnyOfVariant<List<PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant2: parseAnyOfVariant<PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant2>(json, (value) => PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1>> listPostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1;
final Omittable<PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant2> postInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1.isPresent || postInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1.isPresent) listPostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1.value?.map((e) => e.toJson()).toList(),
if (postInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant2.isPresent) postInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesInvoiceAddLinesRequestLinesTaxAmounts && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesInvoiceAddLinesRequestLinesTaxAmounts(${toJson()})';
}
