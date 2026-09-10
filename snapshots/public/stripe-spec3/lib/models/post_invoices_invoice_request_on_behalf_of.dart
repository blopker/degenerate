// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesInvoiceRequestOnBehalfOfVariant2 {const PostInvoicesInvoiceRequestOnBehalfOfVariant2._(this.value);

factory PostInvoicesInvoiceRequestOnBehalfOfVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceRequestOnBehalfOfVariant2._(json),
};}

static const PostInvoicesInvoiceRequestOnBehalfOfVariant2 $empty = PostInvoicesInvoiceRequestOnBehalfOfVariant2._('');

static const List<PostInvoicesInvoiceRequestOnBehalfOfVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoicesInvoiceRequestOnBehalfOfVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoicesInvoiceRequestOnBehalfOfVariant2($value)';}
}
/// The account (if any) for which the funds of the invoice payment are intended. If set, the invoice will be presented with the branding and support information of the specified account. See the [Invoices with Connect](https://docs.stripe.com/billing/invoices/connect) documentation for details.
@immutable
final class PostInvoicesInvoiceRequestOnBehalfOf {
  const PostInvoicesInvoiceRequestOnBehalfOf({this.string = const Omittable.absent(),
this.postInvoicesInvoiceRequestOnBehalfOfVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesInvoiceRequestOnBehalfOf._({required this.rawValue, required this.string,
required this.postInvoicesInvoiceRequestOnBehalfOfVariant2,});
  factory PostInvoicesInvoiceRequestOnBehalfOf.fromJson(Object? json) => PostInvoicesInvoiceRequestOnBehalfOf._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postInvoicesInvoiceRequestOnBehalfOfVariant2: parseAnyOfVariant<PostInvoicesInvoiceRequestOnBehalfOfVariant2>(json, (value) => PostInvoicesInvoiceRequestOnBehalfOfVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostInvoicesInvoiceRequestOnBehalfOfVariant2> postInvoicesInvoiceRequestOnBehalfOfVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postInvoicesInvoiceRequestOnBehalfOfVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postInvoicesInvoiceRequestOnBehalfOfVariant2.isPresent) postInvoicesInvoiceRequestOnBehalfOfVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesInvoiceRequestOnBehalfOf && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesInvoiceRequestOnBehalfOf(${toJson()})';
}
