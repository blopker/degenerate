// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'carrier_text_param.dart';@immutable final class PostIssuingPersonalizationDesignsPersonalizationDesignRequestCarrierTextVariant2 {const PostIssuingPersonalizationDesignsPersonalizationDesignRequestCarrierTextVariant2._(this.value);

factory PostIssuingPersonalizationDesignsPersonalizationDesignRequestCarrierTextVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostIssuingPersonalizationDesignsPersonalizationDesignRequestCarrierTextVariant2._(json),
}; }

static const PostIssuingPersonalizationDesignsPersonalizationDesignRequestCarrierTextVariant2 $empty = PostIssuingPersonalizationDesignsPersonalizationDesignRequestCarrierTextVariant2._('');

static const List<PostIssuingPersonalizationDesignsPersonalizationDesignRequestCarrierTextVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIssuingPersonalizationDesignsPersonalizationDesignRequestCarrierTextVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIssuingPersonalizationDesignsPersonalizationDesignRequestCarrierTextVariant2($value)'; } 
 }
/// Hash containing carrier text, for use with physical bundles that support carrier text.
@immutable
final class PostIssuingPersonalizationDesignsPersonalizationDesignRequestCarrierText {
  const PostIssuingPersonalizationDesignsPersonalizationDesignRequestCarrierText({this.carrierTextParam = const Omittable.absent(),
this.postIssuingPersonalizationDesignsPersonalizationDesignRequestCarrierTextVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostIssuingPersonalizationDesignsPersonalizationDesignRequestCarrierText._({required this.rawValue, required this.carrierTextParam,
required this.postIssuingPersonalizationDesignsPersonalizationDesignRequestCarrierTextVariant2,});
  factory PostIssuingPersonalizationDesignsPersonalizationDesignRequestCarrierText.fromJson(Object? json) => PostIssuingPersonalizationDesignsPersonalizationDesignRequestCarrierText._(
    rawValue: Omittable(json),
    carrierTextParam: parseAnyOfVariant<CarrierTextParam>(json, (value) => CarrierTextParam.fromJson(value! as Map<String, dynamic>)),
postIssuingPersonalizationDesignsPersonalizationDesignRequestCarrierTextVariant2: parseAnyOfVariant<PostIssuingPersonalizationDesignsPersonalizationDesignRequestCarrierTextVariant2>(json, (value) => PostIssuingPersonalizationDesignsPersonalizationDesignRequestCarrierTextVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<CarrierTextParam> carrierTextParam;
final Omittable<PostIssuingPersonalizationDesignsPersonalizationDesignRequestCarrierTextVariant2> postIssuingPersonalizationDesignsPersonalizationDesignRequestCarrierTextVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => carrierTextParam.isPresent || postIssuingPersonalizationDesignsPersonalizationDesignRequestCarrierTextVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (carrierTextParam.isPresent) carrierTextParam.value?.toJson(),
if (postIssuingPersonalizationDesignsPersonalizationDesignRequestCarrierTextVariant2.isPresent) postIssuingPersonalizationDesignsPersonalizationDesignRequestCarrierTextVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostIssuingPersonalizationDesignsPersonalizationDesignRequestCarrierText && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostIssuingPersonalizationDesignsPersonalizationDesignRequestCarrierText(${toJson()})';
}
