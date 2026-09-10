// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesInvoiceRequestNumberVariant2 {const PostInvoicesInvoiceRequestNumberVariant2._(this.value);

factory PostInvoicesInvoiceRequestNumberVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceRequestNumberVariant2._(json),
};}

static const PostInvoicesInvoiceRequestNumberVariant2 $empty = PostInvoicesInvoiceRequestNumberVariant2._('');

static const List<PostInvoicesInvoiceRequestNumberVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoicesInvoiceRequestNumberVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoicesInvoiceRequestNumberVariant2($value)';}
}
/// Set the number for this invoice. If no number is present then a number will be assigned automatically when the invoice is finalized. In many markets, regulations require invoices to be unique, sequential and / or gapless. You are responsible for ensuring this is true across all your different invoicing systems in the event that you edit the invoice number using our API. If you use only Stripe for your invoices and do not change invoice numbers, Stripe handles this aspect of compliance for you automatically.
@immutable
final class PostInvoicesInvoiceRequestNumber {
  const PostInvoicesInvoiceRequestNumber({this.string = const Omittable.absent(),
this.postInvoicesInvoiceRequestNumberVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesInvoiceRequestNumber._({required this.rawValue, required this.string,
required this.postInvoicesInvoiceRequestNumberVariant2,});
  factory PostInvoicesInvoiceRequestNumber.fromJson(Object? json) => PostInvoicesInvoiceRequestNumber._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postInvoicesInvoiceRequestNumberVariant2: parseAnyOfVariant<PostInvoicesInvoiceRequestNumberVariant2>(json, (value) => PostInvoicesInvoiceRequestNumberVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostInvoicesInvoiceRequestNumberVariant2> postInvoicesInvoiceRequestNumberVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postInvoicesInvoiceRequestNumberVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postInvoicesInvoiceRequestNumberVariant2.isPresent) postInvoicesInvoiceRequestNumberVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesInvoiceRequestNumber && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesInvoiceRequestNumber(${toJson()})';
}
