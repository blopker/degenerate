// GENERATED CODE - DO NOT MODIFY BY HAND

final class AccountCallCallEvent {const AccountCallCallEvent({this.request, this.response, });

factory AccountCallCallEvent.fromJson(Map<String, dynamic> json) { return AccountCallCallEvent(
  request: json['request'],
  response: json['response'],
); }

/// Contains a dictionary representing the request of the call.
final dynamic request;

/// Contains a dictionary representing the call response, including a list of the call events.
final dynamic response;

Map<String, dynamic> toJson() { return {
  'request': ?request,
  'response': ?response,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'request', 'response'}.contains(key)); } 
AccountCallCallEvent copyWith({dynamic Function()? request, dynamic Function()? response, }) { return AccountCallCallEvent(
  request: request != null ? request() : this.request,
  response: response != null ? response() : this.response,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountCallCallEvent &&
          request == other.request &&
          response == other.response; } 
@override int get hashCode { return Object.hash(request, response); } 
@override String toString() { return 'AccountCallCallEvent(request: $request, response: $response)'; } 
 }
