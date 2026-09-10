// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AiSearchUpdateInstancesResponseResultEmbeddingModelVariant1 {const AiSearchUpdateInstancesResponseResultEmbeddingModelVariant1._(this.value);

factory AiSearchUpdateInstancesResponseResultEmbeddingModelVariant1.fromJson(String json) { return switch (json) {
  '@cf/qwen/qwen3-embedding-0.6b' => cfQwenQwen3Embedding06b,
  '@cf/baai/bge-m3' => cfBaaiBgeM3,
  '@cf/baai/bge-large-en-v1.5' => cfBaaiBgeLargeEnV15,
  '@cf/google/embeddinggemma-300m' => cfGoogleEmbeddinggemma300m,
  'google-ai-studio/gemini-embedding-001' => googleAiStudioGeminiEmbedding001,
  'openai/text-embedding-3-small' => openaiTextEmbedding3Small,
  'openai/text-embedding-3-large' => openaiTextEmbedding3Large,
  _ => AiSearchUpdateInstancesResponseResultEmbeddingModelVariant1._(json),
}; }

static const AiSearchUpdateInstancesResponseResultEmbeddingModelVariant1 cfQwenQwen3Embedding06b = AiSearchUpdateInstancesResponseResultEmbeddingModelVariant1._('@cf/qwen/qwen3-embedding-0.6b');

static const AiSearchUpdateInstancesResponseResultEmbeddingModelVariant1 cfBaaiBgeM3 = AiSearchUpdateInstancesResponseResultEmbeddingModelVariant1._('@cf/baai/bge-m3');

static const AiSearchUpdateInstancesResponseResultEmbeddingModelVariant1 cfBaaiBgeLargeEnV15 = AiSearchUpdateInstancesResponseResultEmbeddingModelVariant1._('@cf/baai/bge-large-en-v1.5');

static const AiSearchUpdateInstancesResponseResultEmbeddingModelVariant1 cfGoogleEmbeddinggemma300m = AiSearchUpdateInstancesResponseResultEmbeddingModelVariant1._('@cf/google/embeddinggemma-300m');

static const AiSearchUpdateInstancesResponseResultEmbeddingModelVariant1 googleAiStudioGeminiEmbedding001 = AiSearchUpdateInstancesResponseResultEmbeddingModelVariant1._('google-ai-studio/gemini-embedding-001');

static const AiSearchUpdateInstancesResponseResultEmbeddingModelVariant1 openaiTextEmbedding3Small = AiSearchUpdateInstancesResponseResultEmbeddingModelVariant1._('openai/text-embedding-3-small');

static const AiSearchUpdateInstancesResponseResultEmbeddingModelVariant1 openaiTextEmbedding3Large = AiSearchUpdateInstancesResponseResultEmbeddingModelVariant1._('openai/text-embedding-3-large');

static const List<AiSearchUpdateInstancesResponseResultEmbeddingModelVariant1> values = [cfQwenQwen3Embedding06b, cfBaaiBgeM3, cfBaaiBgeLargeEnV15, cfGoogleEmbeddinggemma300m, googleAiStudioGeminiEmbedding001, openaiTextEmbedding3Small, openaiTextEmbedding3Large];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchUpdateInstancesResponseResultEmbeddingModelVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AiSearchUpdateInstancesResponseResultEmbeddingModelVariant1($value)'; } 
 }
@immutable final class AiSearchUpdateInstancesResponseResultEmbeddingModelVariant2 {const AiSearchUpdateInstancesResponseResultEmbeddingModelVariant2._(this.value);

factory AiSearchUpdateInstancesResponseResultEmbeddingModelVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => AiSearchUpdateInstancesResponseResultEmbeddingModelVariant2._(json),
}; }

static const AiSearchUpdateInstancesResponseResultEmbeddingModelVariant2 $empty = AiSearchUpdateInstancesResponseResultEmbeddingModelVariant2._('');

static const List<AiSearchUpdateInstancesResponseResultEmbeddingModelVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchUpdateInstancesResponseResultEmbeddingModelVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AiSearchUpdateInstancesResponseResultEmbeddingModelVariant2($value)'; } 
 }

@immutable
final class AiSearchUpdateInstancesResponseResultEmbeddingModel {
  const AiSearchUpdateInstancesResponseResultEmbeddingModel({this.aiSearchUpdateInstancesResponseResultEmbeddingModelVariant1 = const Omittable.absent(),
this.aiSearchUpdateInstancesResponseResultEmbeddingModelVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const AiSearchUpdateInstancesResponseResultEmbeddingModel._({required this.rawValue, required this.aiSearchUpdateInstancesResponseResultEmbeddingModelVariant1,
required this.aiSearchUpdateInstancesResponseResultEmbeddingModelVariant2,});
  factory AiSearchUpdateInstancesResponseResultEmbeddingModel.fromJson(Object? json) => AiSearchUpdateInstancesResponseResultEmbeddingModel._(
    rawValue: Omittable(json),
    aiSearchUpdateInstancesResponseResultEmbeddingModelVariant1: parseAnyOfVariant<AiSearchUpdateInstancesResponseResultEmbeddingModelVariant1>(json, (value) => AiSearchUpdateInstancesResponseResultEmbeddingModelVariant1.fromJson(value! as String)),
aiSearchUpdateInstancesResponseResultEmbeddingModelVariant2: parseAnyOfVariant<AiSearchUpdateInstancesResponseResultEmbeddingModelVariant2>(json, (value) => AiSearchUpdateInstancesResponseResultEmbeddingModelVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<AiSearchUpdateInstancesResponseResultEmbeddingModelVariant1> aiSearchUpdateInstancesResponseResultEmbeddingModelVariant1;
final Omittable<AiSearchUpdateInstancesResponseResultEmbeddingModelVariant2> aiSearchUpdateInstancesResponseResultEmbeddingModelVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => aiSearchUpdateInstancesResponseResultEmbeddingModelVariant1.isPresent || aiSearchUpdateInstancesResponseResultEmbeddingModelVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (aiSearchUpdateInstancesResponseResultEmbeddingModelVariant1.isPresent) aiSearchUpdateInstancesResponseResultEmbeddingModelVariant1.value?.toJson(),
if (aiSearchUpdateInstancesResponseResultEmbeddingModelVariant2.isPresent) aiSearchUpdateInstancesResponseResultEmbeddingModelVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AiSearchUpdateInstancesResponseResultEmbeddingModel && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'AiSearchUpdateInstancesResponseResultEmbeddingModel(${toJson()})';
}
