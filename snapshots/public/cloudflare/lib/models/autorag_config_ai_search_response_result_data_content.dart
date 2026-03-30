// GENERATED CODE - DO NOT MODIFY BY HAND

final class AutoragConfigAiSearchResponseResultDataContent {const AutoragConfigAiSearchResponseResultDataContent({this.text, this.type, });

factory AutoragConfigAiSearchResponseResultDataContent.fromJson(Map<String, dynamic> json) { return AutoragConfigAiSearchResponseResultDataContent(
  text: json['text'] as String?,
  type: json['type'] as String?,
); }

final String? text;

final String? type;

Map<String, dynamic> toJson() { return {
  'text': ?text,
  'type': ?type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'text', 'type'}.contains(key)); } 
AutoragConfigAiSearchResponseResultDataContent copyWith({String Function()? text, String Function()? type, }) { return AutoragConfigAiSearchResponseResultDataContent(
  text: text != null ? text() : this.text,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AutoragConfigAiSearchResponseResultDataContent &&
          text == other.text &&
          type == other.type; } 
@override int get hashCode { return Object.hash(text, type); } 
@override String toString() { return 'AutoragConfigAiSearchResponseResultDataContent(text: $text, type: $type)'; } 
 }
