// GENERATED CODE - DO NOT MODIFY BY HAND

final class WorkersAiPostWebsocketRunCfTestHelloWorldCogResponse400Errors {const WorkersAiPostWebsocketRunCfTestHelloWorldCogResponse400Errors({required this.message});

factory WorkersAiPostWebsocketRunCfTestHelloWorldCogResponse400Errors.fromJson(Map<String, dynamic> json) { return WorkersAiPostWebsocketRunCfTestHelloWorldCogResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
WorkersAiPostWebsocketRunCfTestHelloWorldCogResponse400Errors copyWith({String? message}) { return WorkersAiPostWebsocketRunCfTestHelloWorldCogResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersAiPostWebsocketRunCfTestHelloWorldCogResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'WorkersAiPostWebsocketRunCfTestHelloWorldCogResponse400Errors(message: $message)'; } 
 }
