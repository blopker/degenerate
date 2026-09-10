// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesRequestShippingDetailsPhoneVariant2 {const PostInvoicesRequestShippingDetailsPhoneVariant2._(this.value);

factory PostInvoicesRequestShippingDetailsPhoneVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesRequestShippingDetailsPhoneVariant2._(json),
}; }

static const PostInvoicesRequestShippingDetailsPhoneVariant2 $empty = PostInvoicesRequestShippingDetailsPhoneVariant2._('');

static const List<PostInvoicesRequestShippingDetailsPhoneVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesRequestShippingDetailsPhoneVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesRequestShippingDetailsPhoneVariant2($value)'; } 
 }

@immutable
final class PostInvoicesRequestShippingDetailsPhone {
  const PostInvoicesRequestShippingDetailsPhone({this.string = const Omittable.absent(),
this.postInvoicesRequestShippingDetailsPhoneVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesRequestShippingDetailsPhone._({required this.rawValue, required this.string,
required this.postInvoicesRequestShippingDetailsPhoneVariant2,});
  factory PostInvoicesRequestShippingDetailsPhone.fromJson(Object? json) => PostInvoicesRequestShippingDetailsPhone._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postInvoicesRequestShippingDetailsPhoneVariant2: parseAnyOfVariant<PostInvoicesRequestShippingDetailsPhoneVariant2>(json, (value) => PostInvoicesRequestShippingDetailsPhoneVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostInvoicesRequestShippingDetailsPhoneVariant2> postInvoicesRequestShippingDetailsPhoneVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postInvoicesRequestShippingDetailsPhoneVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postInvoicesRequestShippingDetailsPhoneVariant2.isPresent) postInvoicesRequestShippingDetailsPhoneVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesRequestShippingDetailsPhone && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesRequestShippingDetailsPhone(${toJson()})';
}
