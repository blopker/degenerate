// GENERATED CODE - DO NOT MODIFY BY HAND

/// Options for streaming response. Only set this when you set `stream: true`.
/// 
final class ChatCompletionStreamOptions {const ChatCompletionStreamOptions({this.includeUsage, this.includeObfuscation, });

factory ChatCompletionStreamOptions.fromJson(Map<String, dynamic> json) { return ChatCompletionStreamOptions(
  includeUsage: json['include_usage'] as bool?,
  includeObfuscation: json['include_obfuscation'] as bool?,
); }

/// If set, an additional chunk will be streamed before the `data: [DONE]`
/// message. The `usage` field on this chunk shows the token usage statistics
/// for the entire request, and the `choices` field will always be an empty
/// array.
/// 
/// All other chunks will also include a `usage` field, but with a null
/// value. **NOTE:** If the stream is interrupted, you may not receive the
/// final usage chunk which contains the total token usage for the request.
/// 
final bool? includeUsage;

/// When true, stream obfuscation will be enabled. Stream obfuscation adds
/// random characters to an `obfuscation` field on streaming delta events to
/// normalize payload sizes as a mitigation to certain side-channel attacks.
/// These obfuscation fields are included by default, but add a small amount
/// of overhead to the data stream. You can set `include_obfuscation` to
/// false to optimize for bandwidth if you trust the network links between
/// your application and the OpenAI API.
/// 
final bool? includeObfuscation;

Map<String, dynamic> toJson() { return {
  'include_usage': ?includeUsage,
  'include_obfuscation': ?includeObfuscation,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ChatCompletionStreamOptions copyWith({bool Function()? includeUsage, bool Function()? includeObfuscation, }) { return ChatCompletionStreamOptions(
  includeUsage: includeUsage != null ? includeUsage() : this.includeUsage,
  includeObfuscation: includeObfuscation != null ? includeObfuscation() : this.includeObfuscation,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ChatCompletionStreamOptions &&
          includeUsage == other.includeUsage &&
          includeObfuscation == other.includeObfuscation; } 
@override int get hashCode { return Object.hash(includeUsage, includeObfuscation); } 
@override String toString() { return 'ChatCompletionStreamOptions(includeUsage: $includeUsage, includeObfuscation: $includeObfuscation)'; } 
 }
