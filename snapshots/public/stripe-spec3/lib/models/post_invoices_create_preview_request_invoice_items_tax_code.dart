// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesCreatePreviewRequestInvoiceItemsTaxCodeVariant2 {const PostInvoicesCreatePreviewRequestInvoiceItemsTaxCodeVariant2._(this.value);

factory PostInvoicesCreatePreviewRequestInvoiceItemsTaxCodeVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesCreatePreviewRequestInvoiceItemsTaxCodeVariant2._(json),
}; }

static const PostInvoicesCreatePreviewRequestInvoiceItemsTaxCodeVariant2 $empty = PostInvoicesCreatePreviewRequestInvoiceItemsTaxCodeVariant2._('');

static const List<PostInvoicesCreatePreviewRequestInvoiceItemsTaxCodeVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestInvoiceItemsTaxCodeVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestInvoiceItemsTaxCodeVariant2($value)'; } 
 }

@immutable
final class PostInvoicesCreatePreviewRequestInvoiceItemsTaxCode {
  const PostInvoicesCreatePreviewRequestInvoiceItemsTaxCode({this.string = const Omittable.absent(),
this.postInvoicesCreatePreviewRequestInvoiceItemsTaxCodeVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesCreatePreviewRequestInvoiceItemsTaxCode._({required this.rawValue, required this.string,
required this.postInvoicesCreatePreviewRequestInvoiceItemsTaxCodeVariant2,});
  factory PostInvoicesCreatePreviewRequestInvoiceItemsTaxCode.fromJson(Object? json) => PostInvoicesCreatePreviewRequestInvoiceItemsTaxCode._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postInvoicesCreatePreviewRequestInvoiceItemsTaxCodeVariant2: parseAnyOfVariant<PostInvoicesCreatePreviewRequestInvoiceItemsTaxCodeVariant2>(json, (value) => PostInvoicesCreatePreviewRequestInvoiceItemsTaxCodeVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostInvoicesCreatePreviewRequestInvoiceItemsTaxCodeVariant2> postInvoicesCreatePreviewRequestInvoiceItemsTaxCodeVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postInvoicesCreatePreviewRequestInvoiceItemsTaxCodeVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postInvoicesCreatePreviewRequestInvoiceItemsTaxCodeVariant2.isPresent) postInvoicesCreatePreviewRequestInvoiceItemsTaxCodeVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesCreatePreviewRequestInvoiceItemsTaxCode && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesCreatePreviewRequestInvoiceItemsTaxCode(${toJson()})';
}
