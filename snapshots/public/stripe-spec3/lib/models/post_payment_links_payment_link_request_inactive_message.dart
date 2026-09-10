// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentLinksPaymentLinkRequestInactiveMessageVariant2 {const PostPaymentLinksPaymentLinkRequestInactiveMessageVariant2._(this.value);

factory PostPaymentLinksPaymentLinkRequestInactiveMessageVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentLinksPaymentLinkRequestInactiveMessageVariant2._(json),
};}

static const PostPaymentLinksPaymentLinkRequestInactiveMessageVariant2 $empty = PostPaymentLinksPaymentLinkRequestInactiveMessageVariant2._('');

static const List<PostPaymentLinksPaymentLinkRequestInactiveMessageVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentLinksPaymentLinkRequestInactiveMessageVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentLinksPaymentLinkRequestInactiveMessageVariant2($value)';}
}
/// The custom message to be displayed to a customer when a payment link is no longer active.
@immutable
final class PostPaymentLinksPaymentLinkRequestInactiveMessage {
  const PostPaymentLinksPaymentLinkRequestInactiveMessage({this.string = const Omittable.absent(),
this.postPaymentLinksPaymentLinkRequestInactiveMessageVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentLinksPaymentLinkRequestInactiveMessage._({required this.rawValue, required this.string,
required this.postPaymentLinksPaymentLinkRequestInactiveMessageVariant2,});
  factory PostPaymentLinksPaymentLinkRequestInactiveMessage.fromJson(Object? json) => PostPaymentLinksPaymentLinkRequestInactiveMessage._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postPaymentLinksPaymentLinkRequestInactiveMessageVariant2: parseAnyOfVariant<PostPaymentLinksPaymentLinkRequestInactiveMessageVariant2>(json, (value) => PostPaymentLinksPaymentLinkRequestInactiveMessageVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostPaymentLinksPaymentLinkRequestInactiveMessageVariant2> postPaymentLinksPaymentLinkRequestInactiveMessageVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postPaymentLinksPaymentLinkRequestInactiveMessageVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postPaymentLinksPaymentLinkRequestInactiveMessageVariant2.isPresent) postPaymentLinksPaymentLinkRequestInactiveMessageVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentLinksPaymentLinkRequestInactiveMessage && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentLinksPaymentLinkRequestInactiveMessage(${toJson()})';
}
