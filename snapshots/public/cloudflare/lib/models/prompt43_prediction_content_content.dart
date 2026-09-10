// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'prompt43_prediction_content_content_variant2.dart';
@immutable
final class Prompt43PredictionContentContent {
  const Prompt43PredictionContentContent({this.string = const Omittable.absent(),
this.listPrompt43PredictionContentContentVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const Prompt43PredictionContentContent._({required this.rawValue, required this.string,
required this.listPrompt43PredictionContentContentVariant2,});
  factory Prompt43PredictionContentContent.fromJson(Object? json) => Prompt43PredictionContentContent._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
listPrompt43PredictionContentContentVariant2: parseAnyOfVariant<List<Prompt43PredictionContentContentVariant2>>(json, (value) => (value! as List<dynamic>).map((e) => Prompt43PredictionContentContentVariant2.fromJson(e as Map<String, dynamic>)).toList()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<List<Prompt43PredictionContentContentVariant2>> listPrompt43PredictionContentContentVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || listPrompt43PredictionContentContentVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (listPrompt43PredictionContentContentVariant2.isPresent) listPrompt43PredictionContentContentVariant2.value?.map((e) => e.toJson()).toList(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is Prompt43PredictionContentContent && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'Prompt43PredictionContentContent(${toJson()})';
}
