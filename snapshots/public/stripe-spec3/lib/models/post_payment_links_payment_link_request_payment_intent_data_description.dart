// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentLinksPaymentLinkRequestPaymentIntentDataDescriptionVariant2 {const PostPaymentLinksPaymentLinkRequestPaymentIntentDataDescriptionVariant2._(this.value);

factory PostPaymentLinksPaymentLinkRequestPaymentIntentDataDescriptionVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentLinksPaymentLinkRequestPaymentIntentDataDescriptionVariant2._(json),
}; }

static const PostPaymentLinksPaymentLinkRequestPaymentIntentDataDescriptionVariant2 $empty = PostPaymentLinksPaymentLinkRequestPaymentIntentDataDescriptionVariant2._('');

static const List<PostPaymentLinksPaymentLinkRequestPaymentIntentDataDescriptionVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksPaymentLinkRequestPaymentIntentDataDescriptionVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksPaymentLinkRequestPaymentIntentDataDescriptionVariant2($value)'; } 
 }

@immutable
final class PostPaymentLinksPaymentLinkRequestPaymentIntentDataDescription {
  const PostPaymentLinksPaymentLinkRequestPaymentIntentDataDescription({this.string = const Omittable.absent(),
this.postPaymentLinksPaymentLinkRequestPaymentIntentDataDescriptionVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentLinksPaymentLinkRequestPaymentIntentDataDescription._({required this.rawValue, required this.string,
required this.postPaymentLinksPaymentLinkRequestPaymentIntentDataDescriptionVariant2,});
  factory PostPaymentLinksPaymentLinkRequestPaymentIntentDataDescription.fromJson(Object? json) => PostPaymentLinksPaymentLinkRequestPaymentIntentDataDescription._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postPaymentLinksPaymentLinkRequestPaymentIntentDataDescriptionVariant2: parseAnyOfVariant<PostPaymentLinksPaymentLinkRequestPaymentIntentDataDescriptionVariant2>(json, (value) => PostPaymentLinksPaymentLinkRequestPaymentIntentDataDescriptionVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostPaymentLinksPaymentLinkRequestPaymentIntentDataDescriptionVariant2> postPaymentLinksPaymentLinkRequestPaymentIntentDataDescriptionVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postPaymentLinksPaymentLinkRequestPaymentIntentDataDescriptionVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postPaymentLinksPaymentLinkRequestPaymentIntentDataDescriptionVariant2.isPresent) postPaymentLinksPaymentLinkRequestPaymentIntentDataDescriptionVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentLinksPaymentLinkRequestPaymentIntentDataDescription && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentLinksPaymentLinkRequestPaymentIntentDataDescription(${toJson()})';
}
