// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The action requested by the user.
@immutable final class WebhookCheckRunRequestedActionRequestedAction {const WebhookCheckRunRequestedActionRequestedAction({this.identifier});

factory WebhookCheckRunRequestedActionRequestedAction.fromJson(Map<String, dynamic> json) { return WebhookCheckRunRequestedActionRequestedAction(
  identifier: json['identifier'] as String?,
); }

/// The integrator reference of the action requested by the user.
final String? identifier;

Map<String, dynamic> toJson() { return {
  'identifier': ?identifier,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'identifier'}.contains(key)); } 
WebhookCheckRunRequestedActionRequestedAction copyWith({String Function()? identifier}) { return WebhookCheckRunRequestedActionRequestedAction(
  identifier: identifier != null ? identifier() : this.identifier,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookCheckRunRequestedActionRequestedAction &&
          identifier == other.identifier; } 
@override int get hashCode { return identifier.hashCode; } 
@override String toString() { return 'WebhookCheckRunRequestedActionRequestedAction(identifier: $identifier)'; } 
 }
