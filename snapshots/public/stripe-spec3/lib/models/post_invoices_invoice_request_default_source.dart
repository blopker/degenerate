// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesInvoiceRequestDefaultSourceVariant2 {const PostInvoicesInvoiceRequestDefaultSourceVariant2._(this.value);

factory PostInvoicesInvoiceRequestDefaultSourceVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceRequestDefaultSourceVariant2._(json),
}; }

static const PostInvoicesInvoiceRequestDefaultSourceVariant2 $empty = PostInvoicesInvoiceRequestDefaultSourceVariant2._('');

static const List<PostInvoicesInvoiceRequestDefaultSourceVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesInvoiceRequestDefaultSourceVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesInvoiceRequestDefaultSourceVariant2($value)'; } 
 }
/// ID of the default payment source for the invoice. It must belong to the customer associated with the invoice and be in a chargeable state. If not set, defaults to the subscription's default source, if any, or to the customer's default source.
@immutable
final class PostInvoicesInvoiceRequestDefaultSource {
  const PostInvoicesInvoiceRequestDefaultSource({this.string = const Omittable.absent(),
this.postInvoicesInvoiceRequestDefaultSourceVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesInvoiceRequestDefaultSource._({required this.rawValue, required this.string,
required this.postInvoicesInvoiceRequestDefaultSourceVariant2,});
  factory PostInvoicesInvoiceRequestDefaultSource.fromJson(Object? json) => PostInvoicesInvoiceRequestDefaultSource._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postInvoicesInvoiceRequestDefaultSourceVariant2: parseAnyOfVariant<PostInvoicesInvoiceRequestDefaultSourceVariant2>(json, (value) => PostInvoicesInvoiceRequestDefaultSourceVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostInvoicesInvoiceRequestDefaultSourceVariant2> postInvoicesInvoiceRequestDefaultSourceVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postInvoicesInvoiceRequestDefaultSourceVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postInvoicesInvoiceRequestDefaultSourceVariant2.isPresent) postInvoicesInvoiceRequestDefaultSourceVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesInvoiceRequestDefaultSource && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesInvoiceRequestDefaultSource(${toJson()})';
}
