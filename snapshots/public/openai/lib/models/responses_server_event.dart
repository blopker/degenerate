// GENERATED CODE - DO NOT MODIFY BY HAND

import 'response_stream_event.dart';/// Server events emitted by the Responses WebSocket server.
/// 
final class ResponsesServerEvent {const ResponsesServerEvent({this.responseStreamEvent});

factory ResponsesServerEvent.fromJson(Map<String, dynamic> json) { return ResponsesServerEvent(
  responseStreamEvent: ResponseStreamEvent.fromJson(json),
); }

final ResponseStreamEvent? responseStreamEvent;

/// At least one variant must be present.
bool get isValid { return responseStreamEvent != null; } 
Map<String, dynamic> toJson() { return {
  if (responseStreamEvent != null) 'responseStreamEvent': responseStreamEvent!.toJson(),
}; } 
 }
