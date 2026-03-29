// GENERATED CODE - DO NOT MODIFY BY HAND

/// Action to apply to the fine-grained personal access token.
final class OrgsUpdatePatAccessRequestAction {const OrgsUpdatePatAccessRequestAction._(this.value);

factory OrgsUpdatePatAccessRequestAction.fromJson(String json) { return switch (json) {
  'revoke' => revoke,
  _ => OrgsUpdatePatAccessRequestAction._(json),
}; }

static const OrgsUpdatePatAccessRequestAction revoke = OrgsUpdatePatAccessRequestAction._('revoke');

static const List<OrgsUpdatePatAccessRequestAction> values = [revoke];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsUpdatePatAccessRequestAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'OrgsUpdatePatAccessRequestAction($value)'; } 
 }
final class OrgsUpdatePatAccessRequest {const OrgsUpdatePatAccessRequest({required this.action});

factory OrgsUpdatePatAccessRequest.fromJson(Map<String, dynamic> json) { return OrgsUpdatePatAccessRequest(
  action: OrgsUpdatePatAccessRequestAction.fromJson(json['action'] as String),
); }

/// Action to apply to the fine-grained personal access token.
final OrgsUpdatePatAccessRequestAction action;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action'); } 
OrgsUpdatePatAccessRequest copyWith({OrgsUpdatePatAccessRequestAction? action}) { return OrgsUpdatePatAccessRequest(
  action: action ?? this.action,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OrgsUpdatePatAccessRequest &&
          action == other.action; } 
@override int get hashCode { return action.hashCode; } 
@override String toString() { return 'OrgsUpdatePatAccessRequest(action: $action)'; } 
 }
