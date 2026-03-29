// GENERATED CODE - DO NOT MODIFY BY HAND

/// A URL citation when using web search.
final class ChatCompletionResponseMessageAnnotationsUrlCitation {const ChatCompletionResponseMessageAnnotationsUrlCitation({required this.endIndex, required this.startIndex, required this.url, required this.title, });

factory ChatCompletionResponseMessageAnnotationsUrlCitation.fromJson(Map<String, dynamic> json) { return ChatCompletionResponseMessageAnnotationsUrlCitation(
  endIndex: (json['end_index'] as num).toInt(),
  startIndex: (json['start_index'] as num).toInt(),
  url: json['url'] as String,
  title: json['title'] as String,
); }

/// The index of the last character of the URL citation in the message.
final int endIndex;

/// The index of the first character of the URL citation in the message.
final int startIndex;

/// The URL of the web resource.
final String url;

/// The title of the web resource.
final String title;

Map<String, dynamic> toJson() { return {
  'end_index': endIndex,
  'start_index': startIndex,
  'url': url,
  'title': title,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('end_index') && json['end_index'] is num &&
      json.containsKey('start_index') && json['start_index'] is num &&
      json.containsKey('url') && json['url'] is String &&
      json.containsKey('title') && json['title'] is String; } 
ChatCompletionResponseMessageAnnotationsUrlCitation copyWith({int? endIndex, int? startIndex, String? url, String? title, }) { return ChatCompletionResponseMessageAnnotationsUrlCitation(
  endIndex: endIndex ?? this.endIndex,
  startIndex: startIndex ?? this.startIndex,
  url: url ?? this.url,
  title: title ?? this.title,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ChatCompletionResponseMessageAnnotationsUrlCitation &&
          endIndex == other.endIndex &&
          startIndex == other.startIndex &&
          url == other.url &&
          title == other.title; } 
@override int get hashCode { return Object.hash(endIndex, startIndex, url, title); } 
@override String toString() { return 'ChatCompletionResponseMessageAnnotationsUrlCitation(endIndex: $endIndex, startIndex: $startIndex, url: $url, title: $title)'; } 
 }
