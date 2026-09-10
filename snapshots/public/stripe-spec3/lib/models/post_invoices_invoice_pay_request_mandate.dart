// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesInvoicePayRequestMandateVariant2 {const PostInvoicesInvoicePayRequestMandateVariant2._(this.value);

factory PostInvoicesInvoicePayRequestMandateVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoicePayRequestMandateVariant2._(json),
}; }

static const PostInvoicesInvoicePayRequestMandateVariant2 $empty = PostInvoicesInvoicePayRequestMandateVariant2._('');

static const List<PostInvoicesInvoicePayRequestMandateVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesInvoicePayRequestMandateVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesInvoicePayRequestMandateVariant2($value)'; } 
 }
/// ID of the mandate to be used for this invoice. It must correspond to the payment method used to pay the invoice, including the payment_method param or the invoice's default_payment_method or default_source, if set.
@immutable
final class PostInvoicesInvoicePayRequestMandate {
  const PostInvoicesInvoicePayRequestMandate({this.string = const Omittable.absent(),
this.postInvoicesInvoicePayRequestMandateVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesInvoicePayRequestMandate._({required this.rawValue, required this.string,
required this.postInvoicesInvoicePayRequestMandateVariant2,});
  factory PostInvoicesInvoicePayRequestMandate.fromJson(Object? json) => PostInvoicesInvoicePayRequestMandate._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postInvoicesInvoicePayRequestMandateVariant2: parseAnyOfVariant<PostInvoicesInvoicePayRequestMandateVariant2>(json, (value) => PostInvoicesInvoicePayRequestMandateVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostInvoicesInvoicePayRequestMandateVariant2> postInvoicesInvoicePayRequestMandateVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postInvoicesInvoicePayRequestMandateVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postInvoicesInvoicePayRequestMandateVariant2.isPresent) postInvoicesInvoicePayRequestMandateVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesInvoicePayRequestMandate && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesInvoicePayRequestMandate(${toJson()})';
}
