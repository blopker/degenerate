// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Contains account related information.
@immutable final class AaaAuditLogs2Account {const AaaAuditLogs2Account({this.id, this.name, });

factory AaaAuditLogs2Account.fromJson(Map<String, dynamic> json) { return AaaAuditLogs2Account(
  id: json['id'] as String?,
  name: json['name'] as String?,
); }

/// A unique identifier for the account.
final String? id;

/// A string that identifies the account name.
final String? name;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  'name': ?name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'name'}.contains(key)); } 
AaaAuditLogs2Account copyWith({String Function()? id, String Function()? name, }) { return AaaAuditLogs2Account(
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AaaAuditLogs2Account &&
          id == other.id &&
          name == other.name; } 
@override int get hashCode { return Object.hash(id, name); } 
@override String toString() { return 'AaaAuditLogs2Account(id: $id, name: $name)'; } 
 }
