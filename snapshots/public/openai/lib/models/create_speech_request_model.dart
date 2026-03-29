// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class CreateSpeechRequestModelVariant2 {const CreateSpeechRequestModelVariant2._(this.value);

factory CreateSpeechRequestModelVariant2.fromJson(String json) { return switch (json) {
  'tts-1' => tts1,
  'tts-1-hd' => tts1Hd,
  'gpt-4o-mini-tts' => gpt4oMiniTts,
  'gpt-4o-mini-tts-2025-12-15' => gpt4oMiniTts20251215,
  _ => CreateSpeechRequestModelVariant2._(json),
}; }

static const CreateSpeechRequestModelVariant2 tts1 = CreateSpeechRequestModelVariant2._('tts-1');

static const CreateSpeechRequestModelVariant2 tts1Hd = CreateSpeechRequestModelVariant2._('tts-1-hd');

static const CreateSpeechRequestModelVariant2 gpt4oMiniTts = CreateSpeechRequestModelVariant2._('gpt-4o-mini-tts');

static const CreateSpeechRequestModelVariant2 gpt4oMiniTts20251215 = CreateSpeechRequestModelVariant2._('gpt-4o-mini-tts-2025-12-15');

static const List<CreateSpeechRequestModelVariant2> values = [tts1, tts1Hd, gpt4oMiniTts, gpt4oMiniTts20251215];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateSpeechRequestModelVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreateSpeechRequestModelVariant2($value)'; } 
 }
typedef CreateSpeechRequestModel = OneOf2<String,CreateSpeechRequestModelVariant2>;