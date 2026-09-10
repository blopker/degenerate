// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesRequestAccountTaxIdsVariant2 {const PostInvoicesRequestAccountTaxIdsVariant2._(this.value);

factory PostInvoicesRequestAccountTaxIdsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostInvoicesRequestAccountTaxIdsVariant2._(json),
};}

static const PostInvoicesRequestAccountTaxIdsVariant2 $empty = PostInvoicesRequestAccountTaxIdsVariant2._('');

static const List<PostInvoicesRequestAccountTaxIdsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoicesRequestAccountTaxIdsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoicesRequestAccountTaxIdsVariant2($value)';}
}
/// The account tax IDs associated with the invoice. Only editable when the invoice is a draft.
@immutable
final class PostInvoicesRequestAccountTaxIds {
  const PostInvoicesRequestAccountTaxIds({this.listString = const Omittable.absent(),
this.postInvoicesRequestAccountTaxIdsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesRequestAccountTaxIds._({required this.rawValue, required this.listString,
required this.postInvoicesRequestAccountTaxIdsVariant2,});
  factory PostInvoicesRequestAccountTaxIds.fromJson(Object? json) => PostInvoicesRequestAccountTaxIds._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postInvoicesRequestAccountTaxIdsVariant2: parseAnyOfVariant<PostInvoicesRequestAccountTaxIdsVariant2>(json, (value) => PostInvoicesRequestAccountTaxIdsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostInvoicesRequestAccountTaxIdsVariant2> postInvoicesRequestAccountTaxIdsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postInvoicesRequestAccountTaxIdsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postInvoicesRequestAccountTaxIdsVariant2.isPresent) postInvoicesRequestAccountTaxIdsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesRequestAccountTaxIds && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesRequestAccountTaxIds(${toJson()})';
}
