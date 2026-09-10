// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostIssuingPersonalizationDesignsRequestCarrierTextFooterBodyVariant2 {const PostIssuingPersonalizationDesignsRequestCarrierTextFooterBodyVariant2._(this.value);

factory PostIssuingPersonalizationDesignsRequestCarrierTextFooterBodyVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostIssuingPersonalizationDesignsRequestCarrierTextFooterBodyVariant2._(json),
}; }

static const PostIssuingPersonalizationDesignsRequestCarrierTextFooterBodyVariant2 $empty = PostIssuingPersonalizationDesignsRequestCarrierTextFooterBodyVariant2._('');

static const List<PostIssuingPersonalizationDesignsRequestCarrierTextFooterBodyVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIssuingPersonalizationDesignsRequestCarrierTextFooterBodyVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIssuingPersonalizationDesignsRequestCarrierTextFooterBodyVariant2($value)'; } 
 }

@immutable
final class PostIssuingPersonalizationDesignsRequestCarrierTextFooterBody {
  const PostIssuingPersonalizationDesignsRequestCarrierTextFooterBody({this.string = const Omittable.absent(),
this.postIssuingPersonalizationDesignsRequestCarrierTextFooterBodyVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostIssuingPersonalizationDesignsRequestCarrierTextFooterBody._({required this.rawValue, required this.string,
required this.postIssuingPersonalizationDesignsRequestCarrierTextFooterBodyVariant2,});
  factory PostIssuingPersonalizationDesignsRequestCarrierTextFooterBody.fromJson(Object? json) => PostIssuingPersonalizationDesignsRequestCarrierTextFooterBody._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postIssuingPersonalizationDesignsRequestCarrierTextFooterBodyVariant2: parseAnyOfVariant<PostIssuingPersonalizationDesignsRequestCarrierTextFooterBodyVariant2>(json, (value) => PostIssuingPersonalizationDesignsRequestCarrierTextFooterBodyVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostIssuingPersonalizationDesignsRequestCarrierTextFooterBodyVariant2> postIssuingPersonalizationDesignsRequestCarrierTextFooterBodyVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postIssuingPersonalizationDesignsRequestCarrierTextFooterBodyVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postIssuingPersonalizationDesignsRequestCarrierTextFooterBodyVariant2.isPresent) postIssuingPersonalizationDesignsRequestCarrierTextFooterBodyVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostIssuingPersonalizationDesignsRequestCarrierTextFooterBody && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostIssuingPersonalizationDesignsRequestCarrierTextFooterBody(${toJson()})';
}
