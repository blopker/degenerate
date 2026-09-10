// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCheckoutSessionsRequestBrandingSettingsButtonColorVariant2 {const PostCheckoutSessionsRequestBrandingSettingsButtonColorVariant2._(this.value);

factory PostCheckoutSessionsRequestBrandingSettingsButtonColorVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCheckoutSessionsRequestBrandingSettingsButtonColorVariant2._(json),
}; }

static const PostCheckoutSessionsRequestBrandingSettingsButtonColorVariant2 $empty = PostCheckoutSessionsRequestBrandingSettingsButtonColorVariant2._('');

static const List<PostCheckoutSessionsRequestBrandingSettingsButtonColorVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestBrandingSettingsButtonColorVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestBrandingSettingsButtonColorVariant2($value)'; } 
 }

@immutable
final class PostCheckoutSessionsRequestBrandingSettingsButtonColor {
  const PostCheckoutSessionsRequestBrandingSettingsButtonColor({this.string = const Omittable.absent(),
this.postCheckoutSessionsRequestBrandingSettingsButtonColorVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCheckoutSessionsRequestBrandingSettingsButtonColor._({required this.rawValue, required this.string,
required this.postCheckoutSessionsRequestBrandingSettingsButtonColorVariant2,});
  factory PostCheckoutSessionsRequestBrandingSettingsButtonColor.fromJson(Object? json) => PostCheckoutSessionsRequestBrandingSettingsButtonColor._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postCheckoutSessionsRequestBrandingSettingsButtonColorVariant2: parseAnyOfVariant<PostCheckoutSessionsRequestBrandingSettingsButtonColorVariant2>(json, (value) => PostCheckoutSessionsRequestBrandingSettingsButtonColorVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostCheckoutSessionsRequestBrandingSettingsButtonColorVariant2> postCheckoutSessionsRequestBrandingSettingsButtonColorVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postCheckoutSessionsRequestBrandingSettingsButtonColorVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postCheckoutSessionsRequestBrandingSettingsButtonColorVariant2.isPresent) postCheckoutSessionsRequestBrandingSettingsButtonColorVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCheckoutSessionsRequestBrandingSettingsButtonColor && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCheckoutSessionsRequestBrandingSettingsButtonColor(${toJson()})';
}
