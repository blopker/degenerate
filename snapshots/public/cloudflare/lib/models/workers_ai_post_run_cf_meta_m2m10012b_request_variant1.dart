// GENERATED CODE - DO NOT MODIFY BY HAND

final class WorkersAiPostRunCfMetaM2m10012bRequestVariant1 {const WorkersAiPostRunCfMetaM2m10012bRequestVariant1({this.sourceLang = 'en', required this.targetLang, required this.text, });

factory WorkersAiPostRunCfMetaM2m10012bRequestVariant1.fromJson(Map<String, dynamic> json) { return WorkersAiPostRunCfMetaM2m10012bRequestVariant1(
  sourceLang: json.containsKey('source_lang') ? json['source_lang'] as String : 'en',
  targetLang: json['target_lang'] as String,
  text: json['text'] as String,
); }

/// The language code of the source text (e.g., 'en' for English). Defaults to 'en' if not specified
final String sourceLang;

/// The language code to translate the text into (e.g., 'es' for Spanish)
final String targetLang;

/// The text to be translated
final String text;

Map<String, dynamic> toJson() { return {
  'source_lang': sourceLang,
  'target_lang': targetLang,
  'text': text,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('target_lang') && json['target_lang'] is String &&
      json.containsKey('text') && json['text'] is String; } 
WorkersAiPostRunCfMetaM2m10012bRequestVariant1 copyWith({String Function()? sourceLang, String? targetLang, String? text, }) { return WorkersAiPostRunCfMetaM2m10012bRequestVariant1(
  sourceLang: sourceLang != null ? sourceLang() : this.sourceLang,
  targetLang: targetLang ?? this.targetLang,
  text: text ?? this.text,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersAiPostRunCfMetaM2m10012bRequestVariant1 &&
          sourceLang == other.sourceLang &&
          targetLang == other.targetLang &&
          text == other.text; } 
@override int get hashCode { return Object.hash(sourceLang, targetLang, text); } 
@override String toString() { return 'WorkersAiPostRunCfMetaM2m10012bRequestVariant1(sourceLang: $sourceLang, targetLang: $targetLang, text: $text)'; } 
 }
