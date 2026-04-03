// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WatchEvent {const WatchEvent({required this.action});

factory WatchEvent.fromJson(Map<String, dynamic> json) { return WatchEvent(
  action: json['action'] as String,
); }

final String action;

Map<String, dynamic> toJson() { return {
  'action': action,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') && json['action'] is String; } 
WatchEvent copyWith({String? action}) { return WatchEvent(
  action: action ?? this.action,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WatchEvent &&
          action == other.action; } 
@override int get hashCode { return action.hashCode; } 
@override String toString() { return 'WatchEvent(action: $action)'; } 
 }
