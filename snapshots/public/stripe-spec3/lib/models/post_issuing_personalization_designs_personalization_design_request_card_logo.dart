// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostIssuingPersonalizationDesignsPersonalizationDesignRequestCardLogoVariant2 {const PostIssuingPersonalizationDesignsPersonalizationDesignRequestCardLogoVariant2._(this.value);

factory PostIssuingPersonalizationDesignsPersonalizationDesignRequestCardLogoVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostIssuingPersonalizationDesignsPersonalizationDesignRequestCardLogoVariant2._(json),
}; }

static const PostIssuingPersonalizationDesignsPersonalizationDesignRequestCardLogoVariant2 $empty = PostIssuingPersonalizationDesignsPersonalizationDesignRequestCardLogoVariant2._('');

static const List<PostIssuingPersonalizationDesignsPersonalizationDesignRequestCardLogoVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIssuingPersonalizationDesignsPersonalizationDesignRequestCardLogoVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIssuingPersonalizationDesignsPersonalizationDesignRequestCardLogoVariant2($value)'; } 
 }
/// The file for the card logo, for use with physical bundles that support card logos. Must have a `purpose` value of `issuing_logo`.
@immutable
final class PostIssuingPersonalizationDesignsPersonalizationDesignRequestCardLogo {
  const PostIssuingPersonalizationDesignsPersonalizationDesignRequestCardLogo({this.string = const Omittable.absent(),
this.postIssuingPersonalizationDesignsPersonalizationDesignRequestCardLogoVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostIssuingPersonalizationDesignsPersonalizationDesignRequestCardLogo._({required this.rawValue, required this.string,
required this.postIssuingPersonalizationDesignsPersonalizationDesignRequestCardLogoVariant2,});
  factory PostIssuingPersonalizationDesignsPersonalizationDesignRequestCardLogo.fromJson(Object? json) => PostIssuingPersonalizationDesignsPersonalizationDesignRequestCardLogo._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postIssuingPersonalizationDesignsPersonalizationDesignRequestCardLogoVariant2: parseAnyOfVariant<PostIssuingPersonalizationDesignsPersonalizationDesignRequestCardLogoVariant2>(json, (value) => PostIssuingPersonalizationDesignsPersonalizationDesignRequestCardLogoVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostIssuingPersonalizationDesignsPersonalizationDesignRequestCardLogoVariant2> postIssuingPersonalizationDesignsPersonalizationDesignRequestCardLogoVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postIssuingPersonalizationDesignsPersonalizationDesignRequestCardLogoVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postIssuingPersonalizationDesignsPersonalizationDesignRequestCardLogoVariant2.isPresent) postIssuingPersonalizationDesignsPersonalizationDesignRequestCardLogoVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostIssuingPersonalizationDesignsPersonalizationDesignRequestCardLogo && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostIssuingPersonalizationDesignsPersonalizationDesignRequestCardLogo(${toJson()})';
}
