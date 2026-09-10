// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AiSearchCreateInstancesResponseResultEmbeddingModelVariant1 {const AiSearchCreateInstancesResponseResultEmbeddingModelVariant1._(this.value);

factory AiSearchCreateInstancesResponseResultEmbeddingModelVariant1.fromJson(String json) {return switch (json) {
  '@cf/qwen/qwen3-embedding-0.6b' => cfQwenQwen3Embedding06b,
  '@cf/baai/bge-m3' => cfBaaiBgeM3,
  '@cf/baai/bge-large-en-v1.5' => cfBaaiBgeLargeEnV15,
  '@cf/google/embeddinggemma-300m' => cfGoogleEmbeddinggemma300m,
  'google-ai-studio/gemini-embedding-001' => googleAiStudioGeminiEmbedding001,
  'openai/text-embedding-3-small' => openaiTextEmbedding3Small,
  'openai/text-embedding-3-large' => openaiTextEmbedding3Large,
  _ => AiSearchCreateInstancesResponseResultEmbeddingModelVariant1._(json),
};}

static const AiSearchCreateInstancesResponseResultEmbeddingModelVariant1 cfQwenQwen3Embedding06b = AiSearchCreateInstancesResponseResultEmbeddingModelVariant1._('@cf/qwen/qwen3-embedding-0.6b');

static const AiSearchCreateInstancesResponseResultEmbeddingModelVariant1 cfBaaiBgeM3 = AiSearchCreateInstancesResponseResultEmbeddingModelVariant1._('@cf/baai/bge-m3');

static const AiSearchCreateInstancesResponseResultEmbeddingModelVariant1 cfBaaiBgeLargeEnV15 = AiSearchCreateInstancesResponseResultEmbeddingModelVariant1._('@cf/baai/bge-large-en-v1.5');

static const AiSearchCreateInstancesResponseResultEmbeddingModelVariant1 cfGoogleEmbeddinggemma300m = AiSearchCreateInstancesResponseResultEmbeddingModelVariant1._('@cf/google/embeddinggemma-300m');

static const AiSearchCreateInstancesResponseResultEmbeddingModelVariant1 googleAiStudioGeminiEmbedding001 = AiSearchCreateInstancesResponseResultEmbeddingModelVariant1._('google-ai-studio/gemini-embedding-001');

static const AiSearchCreateInstancesResponseResultEmbeddingModelVariant1 openaiTextEmbedding3Small = AiSearchCreateInstancesResponseResultEmbeddingModelVariant1._('openai/text-embedding-3-small');

static const AiSearchCreateInstancesResponseResultEmbeddingModelVariant1 openaiTextEmbedding3Large = AiSearchCreateInstancesResponseResultEmbeddingModelVariant1._('openai/text-embedding-3-large');

static const List<AiSearchCreateInstancesResponseResultEmbeddingModelVariant1> values = [cfQwenQwen3Embedding06b, cfBaaiBgeM3, cfBaaiBgeLargeEnV15, cfGoogleEmbeddinggemma300m, googleAiStudioGeminiEmbedding001, openaiTextEmbedding3Small, openaiTextEmbedding3Large];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AiSearchCreateInstancesResponseResultEmbeddingModelVariant1 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AiSearchCreateInstancesResponseResultEmbeddingModelVariant1($value)';}
}
@immutable final class AiSearchCreateInstancesResponseResultEmbeddingModelVariant2 {const AiSearchCreateInstancesResponseResultEmbeddingModelVariant2._(this.value);

factory AiSearchCreateInstancesResponseResultEmbeddingModelVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => AiSearchCreateInstancesResponseResultEmbeddingModelVariant2._(json),
};}

static const AiSearchCreateInstancesResponseResultEmbeddingModelVariant2 $empty = AiSearchCreateInstancesResponseResultEmbeddingModelVariant2._('');

static const List<AiSearchCreateInstancesResponseResultEmbeddingModelVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AiSearchCreateInstancesResponseResultEmbeddingModelVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AiSearchCreateInstancesResponseResultEmbeddingModelVariant2($value)';}
}

@immutable
final class AiSearchCreateInstancesResponseResultEmbeddingModel {
  const AiSearchCreateInstancesResponseResultEmbeddingModel({this.aiSearchCreateInstancesResponseResultEmbeddingModelVariant1 = const Omittable.absent(),
this.aiSearchCreateInstancesResponseResultEmbeddingModelVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const AiSearchCreateInstancesResponseResultEmbeddingModel._({required this.rawValue, required this.aiSearchCreateInstancesResponseResultEmbeddingModelVariant1,
required this.aiSearchCreateInstancesResponseResultEmbeddingModelVariant2,});
  factory AiSearchCreateInstancesResponseResultEmbeddingModel.fromJson(Object? json) => AiSearchCreateInstancesResponseResultEmbeddingModel._(
    rawValue: Omittable(json),
    aiSearchCreateInstancesResponseResultEmbeddingModelVariant1: parseAnyOfVariant<AiSearchCreateInstancesResponseResultEmbeddingModelVariant1>(json, (value) => AiSearchCreateInstancesResponseResultEmbeddingModelVariant1.fromJson(value! as String)),
aiSearchCreateInstancesResponseResultEmbeddingModelVariant2: parseAnyOfVariant<AiSearchCreateInstancesResponseResultEmbeddingModelVariant2>(json, (value) => AiSearchCreateInstancesResponseResultEmbeddingModelVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<AiSearchCreateInstancesResponseResultEmbeddingModelVariant1> aiSearchCreateInstancesResponseResultEmbeddingModelVariant1;
final Omittable<AiSearchCreateInstancesResponseResultEmbeddingModelVariant2> aiSearchCreateInstancesResponseResultEmbeddingModelVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => aiSearchCreateInstancesResponseResultEmbeddingModelVariant1.isPresent || aiSearchCreateInstancesResponseResultEmbeddingModelVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (aiSearchCreateInstancesResponseResultEmbeddingModelVariant1.isPresent) aiSearchCreateInstancesResponseResultEmbeddingModelVariant1.value?.toJson(),
if (aiSearchCreateInstancesResponseResultEmbeddingModelVariant2.isPresent) aiSearchCreateInstancesResponseResultEmbeddingModelVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AiSearchCreateInstancesResponseResultEmbeddingModel && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'AiSearchCreateInstancesResponseResultEmbeddingModel(${toJson()})';
}
