// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostIssuingPersonalizationDesignsPersonalizationDesignRequestLookupKeyVariant2 {const PostIssuingPersonalizationDesignsPersonalizationDesignRequestLookupKeyVariant2._(this.value);

factory PostIssuingPersonalizationDesignsPersonalizationDesignRequestLookupKeyVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostIssuingPersonalizationDesignsPersonalizationDesignRequestLookupKeyVariant2._(json),
}; }

static const PostIssuingPersonalizationDesignsPersonalizationDesignRequestLookupKeyVariant2 $empty = PostIssuingPersonalizationDesignsPersonalizationDesignRequestLookupKeyVariant2._('');

static const List<PostIssuingPersonalizationDesignsPersonalizationDesignRequestLookupKeyVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIssuingPersonalizationDesignsPersonalizationDesignRequestLookupKeyVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIssuingPersonalizationDesignsPersonalizationDesignRequestLookupKeyVariant2($value)'; } 
 }
/// A lookup key used to retrieve personalization designs dynamically from a static string. This may be up to 200 characters.
@immutable
final class PostIssuingPersonalizationDesignsPersonalizationDesignRequestLookupKey {
  const PostIssuingPersonalizationDesignsPersonalizationDesignRequestLookupKey({this.string = const Omittable.absent(),
this.postIssuingPersonalizationDesignsPersonalizationDesignRequestLookupKeyVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostIssuingPersonalizationDesignsPersonalizationDesignRequestLookupKey._({required this.rawValue, required this.string,
required this.postIssuingPersonalizationDesignsPersonalizationDesignRequestLookupKeyVariant2,});
  factory PostIssuingPersonalizationDesignsPersonalizationDesignRequestLookupKey.fromJson(Object? json) => PostIssuingPersonalizationDesignsPersonalizationDesignRequestLookupKey._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postIssuingPersonalizationDesignsPersonalizationDesignRequestLookupKeyVariant2: parseAnyOfVariant<PostIssuingPersonalizationDesignsPersonalizationDesignRequestLookupKeyVariant2>(json, (value) => PostIssuingPersonalizationDesignsPersonalizationDesignRequestLookupKeyVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostIssuingPersonalizationDesignsPersonalizationDesignRequestLookupKeyVariant2> postIssuingPersonalizationDesignsPersonalizationDesignRequestLookupKeyVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postIssuingPersonalizationDesignsPersonalizationDesignRequestLookupKeyVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postIssuingPersonalizationDesignsPersonalizationDesignRequestLookupKeyVariant2.isPresent) postIssuingPersonalizationDesignsPersonalizationDesignRequestLookupKeyVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostIssuingPersonalizationDesignsPersonalizationDesignRequestLookupKey && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostIssuingPersonalizationDesignsPersonalizationDesignRequestLookupKey(${toJson()})';
}
