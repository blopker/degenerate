// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_apps_components_schemas_session_duration.dart';import 'access_schemas_auto_redirect_to_identity.dart';@immutable final class AccessSchemasBisoProps {const AccessSchemasBisoProps({required this.type, this.allowedIdps, this.autoRedirectToIdentity, this.domain = const Omittable.absent(), this.name = const Omittable.absent(), this.sessionDuration, });

factory AccessSchemasBisoProps.fromJson(Map<String, dynamic> json) { return AccessSchemasBisoProps(
  allowedIdps: (json['allowed_idps'] as List<dynamic>?)?.map((e) => e as String).toList(),
  autoRedirectToIdentity: json['auto_redirect_to_identity'] != null ? AccessSchemasAutoRedirectToIdentity.fromJson(json['auto_redirect_to_identity'] as bool) : null,
  domain: json.containsKey('domain') ? Omittable(json['domain']) : const Omittable.absent(),
  name: json.containsKey('name') ? Omittable(json['name']) : const Omittable.absent(),
  sessionDuration: json['session_duration'] != null ? AccessAppsComponentsSchemasSessionDuration.fromJson(json['session_duration'] as String) : null,
  type: json['type'] as String,
); }

/// The identity providers your users can select when connecting to this application. Defaults to all IdPs configured in your account.
final List<String>? allowedIdps;

/// When set to `true`, users skip the identity provider selection step during login. You must specify only one identity provider in allowed_idps.
final AccessSchemasAutoRedirectToIdentity? autoRedirectToIdentity;

final Omittable<dynamic> domain;

final Omittable<dynamic> name;

/// The amount of time that tokens issued for this application will be valid. Must be in the format `300ms` or `2h45m`. Valid time units are: ns, us (or µs), ms, s, m, h.
final AccessAppsComponentsSchemasSessionDuration? sessionDuration;

/// The application type.
final String type;

Map<String, dynamic> toJson() { return {
  'allowed_idps': ?allowedIdps,
  if (autoRedirectToIdentity != null) 'auto_redirect_to_identity': autoRedirectToIdentity?.toJson(),
  if (domain.isPresent) 'domain': domain.value,
  if (name.isPresent) 'name': name.value,
  if (sessionDuration != null) 'session_duration': sessionDuration?.toJson(),
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
AccessSchemasBisoProps copyWith({List<String>? Function()? allowedIdps, AccessSchemasAutoRedirectToIdentity? Function()? autoRedirectToIdentity, Omittable<dynamic>? domain, Omittable<dynamic>? name, AccessAppsComponentsSchemasSessionDuration? Function()? sessionDuration, String? type, }) { return AccessSchemasBisoProps(
  allowedIdps: allowedIdps != null ? allowedIdps() : this.allowedIdps,
  autoRedirectToIdentity: autoRedirectToIdentity != null ? autoRedirectToIdentity() : this.autoRedirectToIdentity,
  domain: domain ?? this.domain,
  name: name ?? this.name,
  sessionDuration: sessionDuration != null ? sessionDuration() : this.sessionDuration,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasBisoProps &&
          listEquals(allowedIdps, other.allowedIdps) &&
          autoRedirectToIdentity == other.autoRedirectToIdentity &&
          domain == other.domain &&
          name == other.name &&
          sessionDuration == other.sessionDuration &&
          type == other.type; } 
@override int get hashCode { return Object.hash(Object.hashAll(allowedIdps ?? const []), autoRedirectToIdentity, domain, name, sessionDuration, type); } 
@override String toString() { return 'AccessSchemasBisoProps(allowedIdps: $allowedIdps, autoRedirectToIdentity: $autoRedirectToIdentity, domain: $domain, name: $name, sessionDuration: $sessionDuration, type: $type)'; } 
 }
