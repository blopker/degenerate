// GENERATED CODE - DO NOT MODIFY BY HAND

/// Event data payload.
/// 
final class WebhookResponseIncompleteData {const WebhookResponseIncompleteData({required this.id});

factory WebhookResponseIncompleteData.fromJson(Map<String, dynamic> json) { return WebhookResponseIncompleteData(
  id: json['id'] as String,
); }

/// The unique ID of the model response.
/// 
final String id;

Map<String, dynamic> toJson() { return {
  'id': id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String; } 
WebhookResponseIncompleteData copyWith({String? id}) { return WebhookResponseIncompleteData(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookResponseIncompleteData &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'WebhookResponseIncompleteData(id: $id)'; } 
 }
