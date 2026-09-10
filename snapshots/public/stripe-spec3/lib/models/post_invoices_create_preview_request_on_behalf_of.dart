// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesCreatePreviewRequestOnBehalfOfVariant2 {const PostInvoicesCreatePreviewRequestOnBehalfOfVariant2._(this.value);

factory PostInvoicesCreatePreviewRequestOnBehalfOfVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostInvoicesCreatePreviewRequestOnBehalfOfVariant2._(json),
};}

static const PostInvoicesCreatePreviewRequestOnBehalfOfVariant2 $empty = PostInvoicesCreatePreviewRequestOnBehalfOfVariant2._('');

static const List<PostInvoicesCreatePreviewRequestOnBehalfOfVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestOnBehalfOfVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoicesCreatePreviewRequestOnBehalfOfVariant2($value)';}
}
/// The account (if any) for which the funds of the invoice payment are intended. If set, the invoice will be presented with the branding and support information of the specified account. See the [Invoices with Connect](https://docs.stripe.com/billing/invoices/connect) documentation for details.
@immutable
final class PostInvoicesCreatePreviewRequestOnBehalfOf {
  const PostInvoicesCreatePreviewRequestOnBehalfOf({this.string = const Omittable.absent(),
this.postInvoicesCreatePreviewRequestOnBehalfOfVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesCreatePreviewRequestOnBehalfOf._({required this.rawValue, required this.string,
required this.postInvoicesCreatePreviewRequestOnBehalfOfVariant2,});
  factory PostInvoicesCreatePreviewRequestOnBehalfOf.fromJson(Object? json) => PostInvoicesCreatePreviewRequestOnBehalfOf._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postInvoicesCreatePreviewRequestOnBehalfOfVariant2: parseAnyOfVariant<PostInvoicesCreatePreviewRequestOnBehalfOfVariant2>(json, (value) => PostInvoicesCreatePreviewRequestOnBehalfOfVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostInvoicesCreatePreviewRequestOnBehalfOfVariant2> postInvoicesCreatePreviewRequestOnBehalfOfVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postInvoicesCreatePreviewRequestOnBehalfOfVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postInvoicesCreatePreviewRequestOnBehalfOfVariant2.isPresent) postInvoicesCreatePreviewRequestOnBehalfOfVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesCreatePreviewRequestOnBehalfOf && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesCreatePreviewRequestOnBehalfOf(${toJson()})';
}
