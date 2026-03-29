// GENERATED CODE - DO NOT MODIFY BY HAND

final class Translation2 {const Translation2({this.translatedText});

factory Translation2.fromJson(Map<String, dynamic> json) { return Translation2(
  translatedText: json['translated_text'] as String?,
); }

/// The translated text in the target language
final String? translatedText;

Map<String, dynamic> toJson() { return {
  'translated_text': ?translatedText,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'translated_text'}.contains(key)); } 
Translation2 copyWith({String Function()? translatedText}) { return Translation2(
  translatedText: translatedText != null ? translatedText() : this.translatedText,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Translation2 &&
          translatedText == other.translatedText; } 
@override int get hashCode { return translatedText.hashCode; } 
@override String toString() { return 'Translation2(translatedText: $translatedText)'; } 
 }
