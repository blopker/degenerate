// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class TextToSpeech {const TextToSpeech({required this.prompt, this.lang = 'en', });

factory TextToSpeech.fromJson(Map<String, dynamic> json) { return TextToSpeech(
  lang: json.containsKey('lang') ? json['lang'] as String : 'en',
  prompt: json['prompt'] as String,
); }

/// The speech language (e.g., 'en' for English, 'fr' for French). Defaults to 'en' if not specified
final String lang;

/// A text description of the audio you want to generate
final String prompt;

Map<String, dynamic> toJson() { return {
  'lang': lang,
  'prompt': prompt,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('prompt') && json['prompt'] is String; } 
TextToSpeech copyWith({String Function()? lang, String? prompt, }) { return TextToSpeech(
  lang: lang != null ? lang() : this.lang,
  prompt: prompt ?? this.prompt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TextToSpeech &&
          lang == other.lang &&
          prompt == other.prompt; } 
@override int get hashCode { return Object.hash(lang, prompt); } 
@override String toString() { return 'TextToSpeech(lang: $lang, prompt: $prompt)'; } 
 }
