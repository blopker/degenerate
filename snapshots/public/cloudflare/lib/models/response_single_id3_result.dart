// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_identifier.dart';@immutable final class ResponseSingleId3Result {const ResponseSingleId3Result({required this.id});

factory ResponseSingleId3Result.fromJson(Map<String, dynamic> json) { return ResponseSingleId3Result(
  id: FirewallIdentifier.fromJson(json['id'] as String),
); }

final FirewallIdentifier id;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id'); } 
ResponseSingleId3Result copyWith({FirewallIdentifier? id}) { return ResponseSingleId3Result(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseSingleId3Result &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'ResponseSingleId3Result(id: $id)'; } 
 }
