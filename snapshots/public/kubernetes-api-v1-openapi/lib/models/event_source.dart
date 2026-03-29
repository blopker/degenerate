// GENERATED CODE - DO NOT MODIFY BY HAND

/// EventSource contains information for an event.
final class EventSource {const EventSource({this.component, this.host, });

factory EventSource.fromJson(Map<String, dynamic> json) { return EventSource(
  component: json['component'] as String?,
  host: json['host'] as String?,
); }

/// Component from which the event is generated.
final String? component;

/// Node name on which the event is generated.
final String? host;

Map<String, dynamic> toJson() { return {
  'component': ?component,
  'host': ?host,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'component', 'host'}.contains(key)); } 
EventSource copyWith({String Function()? component, String Function()? host, }) { return EventSource(
  component: component != null ? component() : this.component,
  host: host != null ? host() : this.host,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EventSource &&
          component == other.component &&
          host == other.host; } 
@override int get hashCode { return Object.hash(component, host); } 
@override String toString() { return 'EventSource(component: $component, host: $host)'; } 
 }
