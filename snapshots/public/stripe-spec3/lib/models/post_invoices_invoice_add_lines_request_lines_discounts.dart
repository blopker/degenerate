// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_invoices_invoice_add_lines_request_lines_discounts_variant1.dart';@immutable final class PostInvoicesInvoiceAddLinesRequestLinesDiscountsVariant2 {const PostInvoicesInvoiceAddLinesRequestLinesDiscountsVariant2._(this.value);

factory PostInvoicesInvoiceAddLinesRequestLinesDiscountsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceAddLinesRequestLinesDiscountsVariant2._(json),
};}

static const PostInvoicesInvoiceAddLinesRequestLinesDiscountsVariant2 $empty = PostInvoicesInvoiceAddLinesRequestLinesDiscountsVariant2._('');

static const List<PostInvoicesInvoiceAddLinesRequestLinesDiscountsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoicesInvoiceAddLinesRequestLinesDiscountsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoicesInvoiceAddLinesRequestLinesDiscountsVariant2($value)';}
}

@immutable
final class PostInvoicesInvoiceAddLinesRequestLinesDiscounts {
  const PostInvoicesInvoiceAddLinesRequestLinesDiscounts({this.listPostInvoicesInvoiceAddLinesRequestLinesDiscountsVariant1 = const Omittable.absent(),
this.postInvoicesInvoiceAddLinesRequestLinesDiscountsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesInvoiceAddLinesRequestLinesDiscounts._({required this.rawValue, required this.listPostInvoicesInvoiceAddLinesRequestLinesDiscountsVariant1,
required this.postInvoicesInvoiceAddLinesRequestLinesDiscountsVariant2,});
  factory PostInvoicesInvoiceAddLinesRequestLinesDiscounts.fromJson(Object? json) => PostInvoicesInvoiceAddLinesRequestLinesDiscounts._(
    rawValue: Omittable(json),
    listPostInvoicesInvoiceAddLinesRequestLinesDiscountsVariant1: parseAnyOfVariant<List<PostInvoicesInvoiceAddLinesRequestLinesDiscountsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostInvoicesInvoiceAddLinesRequestLinesDiscountsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postInvoicesInvoiceAddLinesRequestLinesDiscountsVariant2: parseAnyOfVariant<PostInvoicesInvoiceAddLinesRequestLinesDiscountsVariant2>(json, (value) => PostInvoicesInvoiceAddLinesRequestLinesDiscountsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostInvoicesInvoiceAddLinesRequestLinesDiscountsVariant1>> listPostInvoicesInvoiceAddLinesRequestLinesDiscountsVariant1;
final Omittable<PostInvoicesInvoiceAddLinesRequestLinesDiscountsVariant2> postInvoicesInvoiceAddLinesRequestLinesDiscountsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostInvoicesInvoiceAddLinesRequestLinesDiscountsVariant1.isPresent || postInvoicesInvoiceAddLinesRequestLinesDiscountsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostInvoicesInvoiceAddLinesRequestLinesDiscountsVariant1.isPresent) listPostInvoicesInvoiceAddLinesRequestLinesDiscountsVariant1.value?.map((e) => e.toJson()).toList(),
if (postInvoicesInvoiceAddLinesRequestLinesDiscountsVariant2.isPresent) postInvoicesInvoiceAddLinesRequestLinesDiscountsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesInvoiceAddLinesRequestLinesDiscounts && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesInvoiceAddLinesRequestLinesDiscounts(${toJson()})';
}
