// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccountCallCallEvent {const AccountCallCallEvent({this.request = const Omittable.absent(), this.response = const Omittable.absent(), });

factory AccountCallCallEvent.fromJson(Map<String, dynamic> json) { return AccountCallCallEvent(
  request: json.containsKey('request') ? Omittable(json['request']) : const Omittable.absent(),
  response: json.containsKey('response') ? Omittable(json['response']) : const Omittable.absent(),
); }

/// Contains a dictionary representing the request of the call.
final Omittable<dynamic> request;

/// Contains a dictionary representing the call response, including a list of the call events.
final Omittable<dynamic> response;

Map<String, dynamic> toJson() { return {
  if (request.isPresent) 'request': request.value,
  if (response.isPresent) 'response': response.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'request', 'response'}.contains(key)); } 
AccountCallCallEvent copyWith({Omittable<dynamic>? request, Omittable<dynamic>? response, }) { return AccountCallCallEvent(
  request: request ?? this.request,
  response: response ?? this.response,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountCallCallEvent &&
          request == other.request &&
          response == other.response; } 
@override int get hashCode { return Object.hash(request, response); } 
@override String toString() { return 'AccountCallCallEvent(request: $request, response: $response)'; } 
 }
