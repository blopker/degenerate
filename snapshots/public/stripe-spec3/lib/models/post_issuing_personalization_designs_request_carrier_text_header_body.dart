// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostIssuingPersonalizationDesignsRequestCarrierTextHeaderBodyVariant2 {const PostIssuingPersonalizationDesignsRequestCarrierTextHeaderBodyVariant2._(this.value);

factory PostIssuingPersonalizationDesignsRequestCarrierTextHeaderBodyVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostIssuingPersonalizationDesignsRequestCarrierTextHeaderBodyVariant2._(json),
};}

static const PostIssuingPersonalizationDesignsRequestCarrierTextHeaderBodyVariant2 $empty = PostIssuingPersonalizationDesignsRequestCarrierTextHeaderBodyVariant2._('');

static const List<PostIssuingPersonalizationDesignsRequestCarrierTextHeaderBodyVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostIssuingPersonalizationDesignsRequestCarrierTextHeaderBodyVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostIssuingPersonalizationDesignsRequestCarrierTextHeaderBodyVariant2($value)';}
}

@immutable
final class PostIssuingPersonalizationDesignsRequestCarrierTextHeaderBody {
  const PostIssuingPersonalizationDesignsRequestCarrierTextHeaderBody({this.string = const Omittable.absent(),
this.postIssuingPersonalizationDesignsRequestCarrierTextHeaderBodyVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostIssuingPersonalizationDesignsRequestCarrierTextHeaderBody._({required this.rawValue, required this.string,
required this.postIssuingPersonalizationDesignsRequestCarrierTextHeaderBodyVariant2,});
  factory PostIssuingPersonalizationDesignsRequestCarrierTextHeaderBody.fromJson(Object? json) => PostIssuingPersonalizationDesignsRequestCarrierTextHeaderBody._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postIssuingPersonalizationDesignsRequestCarrierTextHeaderBodyVariant2: parseAnyOfVariant<PostIssuingPersonalizationDesignsRequestCarrierTextHeaderBodyVariant2>(json, (value) => PostIssuingPersonalizationDesignsRequestCarrierTextHeaderBodyVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostIssuingPersonalizationDesignsRequestCarrierTextHeaderBodyVariant2> postIssuingPersonalizationDesignsRequestCarrierTextHeaderBodyVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postIssuingPersonalizationDesignsRequestCarrierTextHeaderBodyVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postIssuingPersonalizationDesignsRequestCarrierTextHeaderBodyVariant2.isPresent) postIssuingPersonalizationDesignsRequestCarrierTextHeaderBodyVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostIssuingPersonalizationDesignsRequestCarrierTextHeaderBody && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostIssuingPersonalizationDesignsRequestCarrierTextHeaderBody(${toJson()})';
}
