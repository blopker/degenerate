// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesInvoiceRequestAccountTaxIdsVariant2 {const PostInvoicesInvoiceRequestAccountTaxIdsVariant2._(this.value);

factory PostInvoicesInvoiceRequestAccountTaxIdsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceRequestAccountTaxIdsVariant2._(json),
};}

static const PostInvoicesInvoiceRequestAccountTaxIdsVariant2 $empty = PostInvoicesInvoiceRequestAccountTaxIdsVariant2._('');

static const List<PostInvoicesInvoiceRequestAccountTaxIdsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoicesInvoiceRequestAccountTaxIdsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoicesInvoiceRequestAccountTaxIdsVariant2($value)';}
}
/// The account tax IDs associated with the invoice. Only editable when the invoice is a draft.
@immutable
final class PostInvoicesInvoiceRequestAccountTaxIds {
  const PostInvoicesInvoiceRequestAccountTaxIds({this.listString = const Omittable.absent(),
this.postInvoicesInvoiceRequestAccountTaxIdsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesInvoiceRequestAccountTaxIds._({required this.rawValue, required this.listString,
required this.postInvoicesInvoiceRequestAccountTaxIdsVariant2,});
  factory PostInvoicesInvoiceRequestAccountTaxIds.fromJson(Object? json) => PostInvoicesInvoiceRequestAccountTaxIds._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postInvoicesInvoiceRequestAccountTaxIdsVariant2: parseAnyOfVariant<PostInvoicesInvoiceRequestAccountTaxIdsVariant2>(json, (value) => PostInvoicesInvoiceRequestAccountTaxIdsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostInvoicesInvoiceRequestAccountTaxIdsVariant2> postInvoicesInvoiceRequestAccountTaxIdsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postInvoicesInvoiceRequestAccountTaxIdsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postInvoicesInvoiceRequestAccountTaxIdsVariant2.isPresent) postInvoicesInvoiceRequestAccountTaxIdsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesInvoiceRequestAccountTaxIds && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesInvoiceRequestAccountTaxIds(${toJson()})';
}
