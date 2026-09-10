// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_account_request_managed_by.dart';import 'iam_account_request_settings.dart';import 'iam_account_type.dart';import 'iam_common_components_schemas_identifier.dart';@immutable final class IamAccountRequest {const IamAccountRequest({required this.id, required this.name, required this.type, this.managedBy, this.settings, });

factory IamAccountRequest.fromJson(Map<String, dynamic> json) {return IamAccountRequest(
  id: IamCommonComponentsSchemasIdentifier.fromJson(json['id'] as String),
  managedBy: json['managed_by'] != null ? IamAccountRequestManagedBy.fromJson(json['managed_by'] as Map<String, dynamic>) : null,
  name: json['name'] as String,
  settings: json['settings'] != null ? IamAccountRequestSettings.fromJson(json['settings'] as Map<String, dynamic>) : null,
  type: json['type'] != null ? IamAccountType.fromJson(json['type'] as dynamic) : null,
);}

/// Identifier
final IamCommonComponentsSchemasIdentifier id;

/// Parent container details
final IamAccountRequestManagedBy? managedBy;

/// Account name
final String name;

/// Account settings
final IamAccountRequestSettings? settings;

final IamAccountType? type;

Map<String, dynamic> toJson() {return {
  'id': id.toJson(),
  if (managedBy != null) 'managed_by': managedBy?.toJson(),
  'name': name,
  if (settings != null) 'settings': settings?.toJson(),
  'type': type?.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('id') &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('type');}
IamAccountRequest copyWith({IamCommonComponentsSchemasIdentifier? id, IamAccountRequestManagedBy? Function()? managedBy, String? name, IamAccountRequestSettings? Function()? settings, IamAccountType? Function()? type, }) {return IamAccountRequest(
  id: id ?? this.id,
  managedBy: managedBy != null ? managedBy() : this.managedBy,
  name: name ?? this.name,
  settings: settings != null ? settings() : this.settings,
  type: type != null ? type() : this.type,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is IamAccountRequest &&
          id == other.id &&
          managedBy == other.managedBy &&
          name == other.name &&
          settings == other.settings &&
          type == other.type;}
@override int get hashCode {return Object.hash(id, managedBy, name, settings, type);}
@override String toString() {return 'IamAccountRequest(id: $id, managedBy: $managedBy, name: $name, settings: $settings, type: $type)';}
}
