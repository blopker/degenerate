// GENERATED CODE - DO NOT MODIFY BY HAND

import 'responses_client_event_response_create.dart';/// Client events accepted by the Responses WebSocket server.
/// 
final class ResponsesClientEvent {const ResponsesClientEvent({this.responsesClientEventResponseCreate});

factory ResponsesClientEvent.fromJson(Map<String, dynamic> json) { return ResponsesClientEvent(
  responsesClientEventResponseCreate: ResponsesClientEventResponseCreate.canParse(json) ? ResponsesClientEventResponseCreate.fromJson(json) : null,
); }

final ResponsesClientEventResponseCreate? responsesClientEventResponseCreate;

/// At least one variant must be present.
bool get isValid { return responsesClientEventResponseCreate != null; } 
Map<String, dynamic> toJson() { return {
  ...?responsesClientEventResponseCreate?.toJson(),
}; } 
 }
