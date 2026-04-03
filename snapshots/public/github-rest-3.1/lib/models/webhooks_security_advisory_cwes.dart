// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhooksSecurityAdvisoryCwes {const WebhooksSecurityAdvisoryCwes({required this.cweId, required this.name, });

factory WebhooksSecurityAdvisoryCwes.fromJson(Map<String, dynamic> json) { return WebhooksSecurityAdvisoryCwes(
  cweId: json['cwe_id'] as String,
  name: json['name'] as String,
); }

final String cweId;

final String name;

Map<String, dynamic> toJson() { return {
  'cwe_id': cweId,
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('cwe_id') && json['cwe_id'] is String &&
      json.containsKey('name') && json['name'] is String; } 
WebhooksSecurityAdvisoryCwes copyWith({String? cweId, String? name, }) { return WebhooksSecurityAdvisoryCwes(
  cweId: cweId ?? this.cweId,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhooksSecurityAdvisoryCwes &&
          cweId == other.cweId &&
          name == other.name; } 
@override int get hashCode { return Object.hash(cweId, name); } 
@override String toString() { return 'WebhooksSecurityAdvisoryCwes(cweId: $cweId, name: $name)'; } 
 }
