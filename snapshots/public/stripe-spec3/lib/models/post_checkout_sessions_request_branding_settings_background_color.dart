// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCheckoutSessionsRequestBrandingSettingsBackgroundColorVariant2 {const PostCheckoutSessionsRequestBrandingSettingsBackgroundColorVariant2._(this.value);

factory PostCheckoutSessionsRequestBrandingSettingsBackgroundColorVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostCheckoutSessionsRequestBrandingSettingsBackgroundColorVariant2._(json),
};}

static const PostCheckoutSessionsRequestBrandingSettingsBackgroundColorVariant2 $empty = PostCheckoutSessionsRequestBrandingSettingsBackgroundColorVariant2._('');

static const List<PostCheckoutSessionsRequestBrandingSettingsBackgroundColorVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostCheckoutSessionsRequestBrandingSettingsBackgroundColorVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostCheckoutSessionsRequestBrandingSettingsBackgroundColorVariant2($value)';}
}

@immutable
final class PostCheckoutSessionsRequestBrandingSettingsBackgroundColor {
  const PostCheckoutSessionsRequestBrandingSettingsBackgroundColor({this.string = const Omittable.absent(),
this.postCheckoutSessionsRequestBrandingSettingsBackgroundColorVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCheckoutSessionsRequestBrandingSettingsBackgroundColor._({required this.rawValue, required this.string,
required this.postCheckoutSessionsRequestBrandingSettingsBackgroundColorVariant2,});
  factory PostCheckoutSessionsRequestBrandingSettingsBackgroundColor.fromJson(Object? json) => PostCheckoutSessionsRequestBrandingSettingsBackgroundColor._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postCheckoutSessionsRequestBrandingSettingsBackgroundColorVariant2: parseAnyOfVariant<PostCheckoutSessionsRequestBrandingSettingsBackgroundColorVariant2>(json, (value) => PostCheckoutSessionsRequestBrandingSettingsBackgroundColorVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostCheckoutSessionsRequestBrandingSettingsBackgroundColorVariant2> postCheckoutSessionsRequestBrandingSettingsBackgroundColorVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postCheckoutSessionsRequestBrandingSettingsBackgroundColorVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postCheckoutSessionsRequestBrandingSettingsBackgroundColorVariant2.isPresent) postCheckoutSessionsRequestBrandingSettingsBackgroundColorVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCheckoutSessionsRequestBrandingSettingsBackgroundColor && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCheckoutSessionsRequestBrandingSettingsBackgroundColor(${toJson()})';
}
