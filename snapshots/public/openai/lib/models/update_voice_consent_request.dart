// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class UpdateVoiceConsentRequest {const UpdateVoiceConsentRequest({required this.name});

factory UpdateVoiceConsentRequest.fromJson(Map<String, dynamic> json) { return UpdateVoiceConsentRequest(
  name: json['name'] as String,
); }

/// The updated label for this consent recording.
final String name;

Map<String, dynamic> toJson() { return {
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
UpdateVoiceConsentRequest copyWith({String? name}) { return UpdateVoiceConsentRequest(
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UpdateVoiceConsentRequest &&
          name == other.name; } 
@override int get hashCode { return name.hashCode; } 
@override String toString() { return 'UpdateVoiceConsentRequest(name: $name)'; } 
 }
