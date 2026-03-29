// GENERATED CODE - DO NOT MODIFY BY HAND

/// Specifies the preset to use for the index.
final class VectorizeIndexPreset {const VectorizeIndexPreset._(this.value);

factory VectorizeIndexPreset.fromJson(String json) { return switch (json) {
  '@cf/baai/bge-small-en-v1.5' => cfBaaiBgeSmallEnV15,
  '@cf/baai/bge-base-en-v1.5' => cfBaaiBgeBaseEnV15,
  '@cf/baai/bge-large-en-v1.5' => cfBaaiBgeLargeEnV15,
  'openai/text-embedding-ada-002' => openaiTextEmbeddingAda002,
  'cohere/embed-multilingual-v2.0' => cohereEmbedMultilingualV20,
  _ => VectorizeIndexPreset._(json),
}; }

static const VectorizeIndexPreset cfBaaiBgeSmallEnV15 = VectorizeIndexPreset._('@cf/baai/bge-small-en-v1.5');

static const VectorizeIndexPreset cfBaaiBgeBaseEnV15 = VectorizeIndexPreset._('@cf/baai/bge-base-en-v1.5');

static const VectorizeIndexPreset cfBaaiBgeLargeEnV15 = VectorizeIndexPreset._('@cf/baai/bge-large-en-v1.5');

static const VectorizeIndexPreset openaiTextEmbeddingAda002 = VectorizeIndexPreset._('openai/text-embedding-ada-002');

static const VectorizeIndexPreset cohereEmbedMultilingualV20 = VectorizeIndexPreset._('cohere/embed-multilingual-v2.0');

static const List<VectorizeIndexPreset> values = [cfBaaiBgeSmallEnV15, cfBaaiBgeBaseEnV15, cfBaaiBgeLargeEnV15, openaiTextEmbeddingAda002, cohereEmbedMultilingualV20];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is VectorizeIndexPreset && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'VectorizeIndexPreset($value)'; } 
 }
final class VectorizeIndexPresetConfiguration {const VectorizeIndexPresetConfiguration({required this.preset});

factory VectorizeIndexPresetConfiguration.fromJson(Map<String, dynamic> json) { return VectorizeIndexPresetConfiguration(
  preset: VectorizeIndexPreset.fromJson(json['preset'] as String),
); }

/// Specifies the preset to use for the index.
final VectorizeIndexPreset preset;

Map<String, dynamic> toJson() { return {
  'preset': preset.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('preset'); } 
VectorizeIndexPresetConfiguration copyWith({VectorizeIndexPreset? preset}) { return VectorizeIndexPresetConfiguration(
  preset: preset ?? this.preset,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorizeIndexPresetConfiguration &&
          preset == other.preset; } 
@override int get hashCode { return preset.hashCode; } 
@override String toString() { return 'VectorizeIndexPresetConfiguration(preset: $preset)'; } 
 }
