// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_ai_post_run_cf_google_embeddinggemma300m_request_text.dart';@immutable final class WorkersAiPostRunCfGoogleEmbeddinggemma300mRequest {const WorkersAiPostRunCfGoogleEmbeddinggemma300mRequest({required this.text});

factory WorkersAiPostRunCfGoogleEmbeddinggemma300mRequest.fromJson(Map<String, dynamic> json) { return WorkersAiPostRunCfGoogleEmbeddinggemma300mRequest(
  text: OneOf2.parse(json['text'], fromA: (v) => v as String, fromB: (v) => (v as List<dynamic>).map((e) => e as String).toList(),),
); }

final WorkersAiPostRunCfGoogleEmbeddinggemma300mRequestText text;

Map<String, dynamic> toJson() { return {
  'text': text.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('text'); } 
WorkersAiPostRunCfGoogleEmbeddinggemma300mRequest copyWith({WorkersAiPostRunCfGoogleEmbeddinggemma300mRequestText? text}) { return WorkersAiPostRunCfGoogleEmbeddinggemma300mRequest(
  text: text ?? this.text,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersAiPostRunCfGoogleEmbeddinggemma300mRequest &&
          text == other.text; } 
@override int get hashCode { return text.hashCode; } 
@override String toString() { return 'WorkersAiPostRunCfGoogleEmbeddinggemma300mRequest(text: $text)'; } 
 }
