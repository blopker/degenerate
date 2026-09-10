// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AiSearchListInstancesResponseResultEmbeddingModelVariant1 {const AiSearchListInstancesResponseResultEmbeddingModelVariant1._(this.value);

factory AiSearchListInstancesResponseResultEmbeddingModelVariant1.fromJson(String json) { return switch (json) {
  '@cf/qwen/qwen3-embedding-0.6b' => cfQwenQwen3Embedding06b,
  '@cf/baai/bge-m3' => cfBaaiBgeM3,
  '@cf/baai/bge-large-en-v1.5' => cfBaaiBgeLargeEnV15,
  '@cf/google/embeddinggemma-300m' => cfGoogleEmbeddinggemma300m,
  'google-ai-studio/gemini-embedding-001' => googleAiStudioGeminiEmbedding001,
  'openai/text-embedding-3-small' => openaiTextEmbedding3Small,
  'openai/text-embedding-3-large' => openaiTextEmbedding3Large,
  _ => AiSearchListInstancesResponseResultEmbeddingModelVariant1._(json),
}; }

static const AiSearchListInstancesResponseResultEmbeddingModelVariant1 cfQwenQwen3Embedding06b = AiSearchListInstancesResponseResultEmbeddingModelVariant1._('@cf/qwen/qwen3-embedding-0.6b');

static const AiSearchListInstancesResponseResultEmbeddingModelVariant1 cfBaaiBgeM3 = AiSearchListInstancesResponseResultEmbeddingModelVariant1._('@cf/baai/bge-m3');

static const AiSearchListInstancesResponseResultEmbeddingModelVariant1 cfBaaiBgeLargeEnV15 = AiSearchListInstancesResponseResultEmbeddingModelVariant1._('@cf/baai/bge-large-en-v1.5');

static const AiSearchListInstancesResponseResultEmbeddingModelVariant1 cfGoogleEmbeddinggemma300m = AiSearchListInstancesResponseResultEmbeddingModelVariant1._('@cf/google/embeddinggemma-300m');

static const AiSearchListInstancesResponseResultEmbeddingModelVariant1 googleAiStudioGeminiEmbedding001 = AiSearchListInstancesResponseResultEmbeddingModelVariant1._('google-ai-studio/gemini-embedding-001');

static const AiSearchListInstancesResponseResultEmbeddingModelVariant1 openaiTextEmbedding3Small = AiSearchListInstancesResponseResultEmbeddingModelVariant1._('openai/text-embedding-3-small');

static const AiSearchListInstancesResponseResultEmbeddingModelVariant1 openaiTextEmbedding3Large = AiSearchListInstancesResponseResultEmbeddingModelVariant1._('openai/text-embedding-3-large');

static const List<AiSearchListInstancesResponseResultEmbeddingModelVariant1> values = [cfQwenQwen3Embedding06b, cfBaaiBgeM3, cfBaaiBgeLargeEnV15, cfGoogleEmbeddinggemma300m, googleAiStudioGeminiEmbedding001, openaiTextEmbedding3Small, openaiTextEmbedding3Large];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchListInstancesResponseResultEmbeddingModelVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AiSearchListInstancesResponseResultEmbeddingModelVariant1($value)'; } 
 }
@immutable final class AiSearchListInstancesResponseResultEmbeddingModelVariant2 {const AiSearchListInstancesResponseResultEmbeddingModelVariant2._(this.value);

factory AiSearchListInstancesResponseResultEmbeddingModelVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => AiSearchListInstancesResponseResultEmbeddingModelVariant2._(json),
}; }

static const AiSearchListInstancesResponseResultEmbeddingModelVariant2 $empty = AiSearchListInstancesResponseResultEmbeddingModelVariant2._('');

static const List<AiSearchListInstancesResponseResultEmbeddingModelVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchListInstancesResponseResultEmbeddingModelVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AiSearchListInstancesResponseResultEmbeddingModelVariant2($value)'; } 
 }

@immutable
final class AiSearchListInstancesResponseResultEmbeddingModel {
  const AiSearchListInstancesResponseResultEmbeddingModel({this.aiSearchListInstancesResponseResultEmbeddingModelVariant1 = const Omittable.absent(),
this.aiSearchListInstancesResponseResultEmbeddingModelVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const AiSearchListInstancesResponseResultEmbeddingModel._({required this.rawValue, required this.aiSearchListInstancesResponseResultEmbeddingModelVariant1,
required this.aiSearchListInstancesResponseResultEmbeddingModelVariant2,});
  factory AiSearchListInstancesResponseResultEmbeddingModel.fromJson(Object? json) => AiSearchListInstancesResponseResultEmbeddingModel._(
    rawValue: Omittable(json),
    aiSearchListInstancesResponseResultEmbeddingModelVariant1: parseAnyOfVariant<AiSearchListInstancesResponseResultEmbeddingModelVariant1>(json, (value) => AiSearchListInstancesResponseResultEmbeddingModelVariant1.fromJson(value! as String)),
aiSearchListInstancesResponseResultEmbeddingModelVariant2: parseAnyOfVariant<AiSearchListInstancesResponseResultEmbeddingModelVariant2>(json, (value) => AiSearchListInstancesResponseResultEmbeddingModelVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<AiSearchListInstancesResponseResultEmbeddingModelVariant1> aiSearchListInstancesResponseResultEmbeddingModelVariant1;
final Omittable<AiSearchListInstancesResponseResultEmbeddingModelVariant2> aiSearchListInstancesResponseResultEmbeddingModelVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => aiSearchListInstancesResponseResultEmbeddingModelVariant1.isPresent || aiSearchListInstancesResponseResultEmbeddingModelVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (aiSearchListInstancesResponseResultEmbeddingModelVariant1.isPresent) aiSearchListInstancesResponseResultEmbeddingModelVariant1.value?.toJson(),
if (aiSearchListInstancesResponseResultEmbeddingModelVariant2.isPresent) aiSearchListInstancesResponseResultEmbeddingModelVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AiSearchListInstancesResponseResultEmbeddingModel && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'AiSearchListInstancesResponseResultEmbeddingModel(${toJson()})';
}
