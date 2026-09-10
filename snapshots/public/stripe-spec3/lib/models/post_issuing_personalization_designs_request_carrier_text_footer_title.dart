// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostIssuingPersonalizationDesignsRequestCarrierTextFooterTitleVariant2 {const PostIssuingPersonalizationDesignsRequestCarrierTextFooterTitleVariant2._(this.value);

factory PostIssuingPersonalizationDesignsRequestCarrierTextFooterTitleVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostIssuingPersonalizationDesignsRequestCarrierTextFooterTitleVariant2._(json),
};}

static const PostIssuingPersonalizationDesignsRequestCarrierTextFooterTitleVariant2 $empty = PostIssuingPersonalizationDesignsRequestCarrierTextFooterTitleVariant2._('');

static const List<PostIssuingPersonalizationDesignsRequestCarrierTextFooterTitleVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostIssuingPersonalizationDesignsRequestCarrierTextFooterTitleVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostIssuingPersonalizationDesignsRequestCarrierTextFooterTitleVariant2($value)';}
}

@immutable
final class PostIssuingPersonalizationDesignsRequestCarrierTextFooterTitle {
  const PostIssuingPersonalizationDesignsRequestCarrierTextFooterTitle({this.string = const Omittable.absent(),
this.postIssuingPersonalizationDesignsRequestCarrierTextFooterTitleVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostIssuingPersonalizationDesignsRequestCarrierTextFooterTitle._({required this.rawValue, required this.string,
required this.postIssuingPersonalizationDesignsRequestCarrierTextFooterTitleVariant2,});
  factory PostIssuingPersonalizationDesignsRequestCarrierTextFooterTitle.fromJson(Object? json) => PostIssuingPersonalizationDesignsRequestCarrierTextFooterTitle._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postIssuingPersonalizationDesignsRequestCarrierTextFooterTitleVariant2: parseAnyOfVariant<PostIssuingPersonalizationDesignsRequestCarrierTextFooterTitleVariant2>(json, (value) => PostIssuingPersonalizationDesignsRequestCarrierTextFooterTitleVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostIssuingPersonalizationDesignsRequestCarrierTextFooterTitleVariant2> postIssuingPersonalizationDesignsRequestCarrierTextFooterTitleVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postIssuingPersonalizationDesignsRequestCarrierTextFooterTitleVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postIssuingPersonalizationDesignsRequestCarrierTextFooterTitleVariant2.isPresent) postIssuingPersonalizationDesignsRequestCarrierTextFooterTitleVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostIssuingPersonalizationDesignsRequestCarrierTextFooterTitle && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostIssuingPersonalizationDesignsRequestCarrierTextFooterTitle(${toJson()})';
}
