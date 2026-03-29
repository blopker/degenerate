// GENERATED CODE - DO NOT MODIFY BY HAND

/// The application type.
final class AccessType {const AccessType._(this.value);

factory AccessType.fromJson(String json) { return switch (json) {
  'self_hosted' => selfHosted,
  'saas' => saas,
  'ssh' => ssh,
  'vnc' => vnc,
  'app_launcher' => appLauncher,
  'warp' => warp,
  'biso' => biso,
  'bookmark' => bookmark,
  'dash_sso' => dashSso,
  'infrastructure' => infrastructure,
  'rdp' => rdp,
  'mcp' => mcp,
  'mcp_portal' => mcpPortal,
  'proxy_endpoint' => proxyEndpoint,
  _ => AccessType._(json),
}; }

static const AccessType selfHosted = AccessType._('self_hosted');

static const AccessType saas = AccessType._('saas');

static const AccessType ssh = AccessType._('ssh');

static const AccessType vnc = AccessType._('vnc');

static const AccessType appLauncher = AccessType._('app_launcher');

static const AccessType warp = AccessType._('warp');

static const AccessType biso = AccessType._('biso');

static const AccessType bookmark = AccessType._('bookmark');

static const AccessType dashSso = AccessType._('dash_sso');

static const AccessType infrastructure = AccessType._('infrastructure');

static const AccessType rdp = AccessType._('rdp');

static const AccessType mcp = AccessType._('mcp');

static const AccessType mcpPortal = AccessType._('mcp_portal');

static const AccessType proxyEndpoint = AccessType._('proxy_endpoint');

static const List<AccessType> values = [selfHosted, saas, ssh, vnc, appLauncher, warp, biso, bookmark, dashSso, infrastructure, rdp, mcp, mcpPortal, proxyEndpoint];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessType($value)'; } 
 }
