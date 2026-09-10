// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostWebhookEndpointsRequestDescriptionVariant2 {const PostWebhookEndpointsRequestDescriptionVariant2._(this.value);

factory PostWebhookEndpointsRequestDescriptionVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostWebhookEndpointsRequestDescriptionVariant2._(json),
};}

static const PostWebhookEndpointsRequestDescriptionVariant2 $empty = PostWebhookEndpointsRequestDescriptionVariant2._('');

static const List<PostWebhookEndpointsRequestDescriptionVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostWebhookEndpointsRequestDescriptionVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostWebhookEndpointsRequestDescriptionVariant2($value)';}
}
/// An optional description of what the webhook is used for.
@immutable
final class PostWebhookEndpointsRequestDescription {
  const PostWebhookEndpointsRequestDescription({this.string = const Omittable.absent(),
this.postWebhookEndpointsRequestDescriptionVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostWebhookEndpointsRequestDescription._({required this.rawValue, required this.string,
required this.postWebhookEndpointsRequestDescriptionVariant2,});
  factory PostWebhookEndpointsRequestDescription.fromJson(Object? json) => PostWebhookEndpointsRequestDescription._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postWebhookEndpointsRequestDescriptionVariant2: parseAnyOfVariant<PostWebhookEndpointsRequestDescriptionVariant2>(json, (value) => PostWebhookEndpointsRequestDescriptionVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostWebhookEndpointsRequestDescriptionVariant2> postWebhookEndpointsRequestDescriptionVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postWebhookEndpointsRequestDescriptionVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postWebhookEndpointsRequestDescriptionVariant2.isPresent) postWebhookEndpointsRequestDescriptionVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostWebhookEndpointsRequestDescription && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostWebhookEndpointsRequestDescription(${toJson()})';
}
