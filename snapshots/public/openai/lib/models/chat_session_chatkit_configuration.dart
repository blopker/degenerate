// GENERATED CODE - DO NOT MODIFY BY HAND

import 'chat_session_automatic_thread_titling.dart';import 'chat_session_file_upload.dart';import 'chat_session_history.dart';/// ChatKit configuration for the session.
final class ChatSessionChatkitConfiguration {const ChatSessionChatkitConfiguration({required this.automaticThreadTitling, required this.fileUpload, required this.history, });

factory ChatSessionChatkitConfiguration.fromJson(Map<String, dynamic> json) { return ChatSessionChatkitConfiguration(
  automaticThreadTitling: ChatSessionAutomaticThreadTitling.fromJson(json['automatic_thread_titling'] as Map<String, dynamic>),
  fileUpload: ChatSessionFileUpload.fromJson(json['file_upload'] as Map<String, dynamic>),
  history: ChatSessionHistory.fromJson(json['history'] as Map<String, dynamic>),
); }

/// Automatic thread titling preferences.
final ChatSessionAutomaticThreadTitling automaticThreadTitling;

/// Upload settings for the session.
final ChatSessionFileUpload fileUpload;

/// History retention configuration.
final ChatSessionHistory history;

Map<String, dynamic> toJson() { return {
  'automatic_thread_titling': automaticThreadTitling.toJson(),
  'file_upload': fileUpload.toJson(),
  'history': history.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('automatic_thread_titling') &&
      json.containsKey('file_upload') &&
      json.containsKey('history'); } 
ChatSessionChatkitConfiguration copyWith({ChatSessionAutomaticThreadTitling? automaticThreadTitling, ChatSessionFileUpload? fileUpload, ChatSessionHistory? history, }) { return ChatSessionChatkitConfiguration(
  automaticThreadTitling: automaticThreadTitling ?? this.automaticThreadTitling,
  fileUpload: fileUpload ?? this.fileUpload,
  history: history ?? this.history,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ChatSessionChatkitConfiguration &&
          automaticThreadTitling == other.automaticThreadTitling &&
          fileUpload == other.fileUpload &&
          history == other.history; } 
@override int get hashCode { return Object.hash(automaticThreadTitling, fileUpload, history); } 
@override String toString() { return 'ChatSessionChatkitConfiguration(automaticThreadTitling: $automaticThreadTitling, fileUpload: $fileUpload, history: $history)'; } 
 }
