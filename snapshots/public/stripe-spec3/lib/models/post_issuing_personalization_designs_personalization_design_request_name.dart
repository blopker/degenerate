// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostIssuingPersonalizationDesignsPersonalizationDesignRequestNameVariant2 {const PostIssuingPersonalizationDesignsPersonalizationDesignRequestNameVariant2._(this.value);

factory PostIssuingPersonalizationDesignsPersonalizationDesignRequestNameVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostIssuingPersonalizationDesignsPersonalizationDesignRequestNameVariant2._(json),
}; }

static const PostIssuingPersonalizationDesignsPersonalizationDesignRequestNameVariant2 $empty = PostIssuingPersonalizationDesignsPersonalizationDesignRequestNameVariant2._('');

static const List<PostIssuingPersonalizationDesignsPersonalizationDesignRequestNameVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIssuingPersonalizationDesignsPersonalizationDesignRequestNameVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIssuingPersonalizationDesignsPersonalizationDesignRequestNameVariant2($value)'; } 
 }
/// Friendly display name. Providing an empty string will set the field to null.
@immutable
final class PostIssuingPersonalizationDesignsPersonalizationDesignRequestName {
  const PostIssuingPersonalizationDesignsPersonalizationDesignRequestName({this.string = const Omittable.absent(),
this.postIssuingPersonalizationDesignsPersonalizationDesignRequestNameVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostIssuingPersonalizationDesignsPersonalizationDesignRequestName._({required this.rawValue, required this.string,
required this.postIssuingPersonalizationDesignsPersonalizationDesignRequestNameVariant2,});
  factory PostIssuingPersonalizationDesignsPersonalizationDesignRequestName.fromJson(Object? json) => PostIssuingPersonalizationDesignsPersonalizationDesignRequestName._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postIssuingPersonalizationDesignsPersonalizationDesignRequestNameVariant2: parseAnyOfVariant<PostIssuingPersonalizationDesignsPersonalizationDesignRequestNameVariant2>(json, (value) => PostIssuingPersonalizationDesignsPersonalizationDesignRequestNameVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostIssuingPersonalizationDesignsPersonalizationDesignRequestNameVariant2> postIssuingPersonalizationDesignsPersonalizationDesignRequestNameVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postIssuingPersonalizationDesignsPersonalizationDesignRequestNameVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postIssuingPersonalizationDesignsPersonalizationDesignRequestNameVariant2.isPresent) postIssuingPersonalizationDesignsPersonalizationDesignRequestNameVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostIssuingPersonalizationDesignsPersonalizationDesignRequestName && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostIssuingPersonalizationDesignsPersonalizationDesignRequestName(${toJson()})';
}
