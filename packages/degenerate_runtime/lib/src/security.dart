/// The type of security scheme defined in an OpenAPI spec.
enum ApiSecuritySchemeType {
  /// API key authentication.
  apiKey,

  /// HTTP authentication (e.g. Basic, Bearer).
  http,

  /// Mutual TLS authentication.
  mutualTls,

  /// OAuth 2.0 authentication.
  oauth2,

  /// OpenID Connect authentication.
  openIdConnect,
}

/// Where an API key is sent in the request.
enum ApiKeyLocation {
  /// Sent as a request header.
  header,

  /// Sent as a query parameter.
  query,

  /// Sent as a cookie.
  cookie,
}

/// The type of OAuth 2.0 flow.
enum ApiOAuthFlowType {
  /// Implicit grant flow.
  implicit,

  /// Resource owner password credentials flow.
  password,

  /// Client credentials grant flow.
  clientCredentials,

  /// Authorization code grant flow.
  authorizationCode,

  /// Device authorization grant flow.
  deviceAuthorization,
}

/// An OAuth 2.0 flow configuration.
final class ApiOAuthFlow {
  /// Creates an OAuth flow configuration of the given [type].
  const ApiOAuthFlow({
    required this.type,
    this.authorizationUrl,
    this.tokenUrl,
    this.refreshUrl,
    this.deviceAuthorizationUrl,
    this.scopes = const {},
  });

  /// The type of OAuth flow.
  final ApiOAuthFlowType type;

  /// The authorization endpoint URL.
  final String? authorizationUrl;

  /// The token endpoint URL.
  final String? tokenUrl;

  /// The refresh token endpoint URL.
  final String? refreshUrl;

  /// The device authorization endpoint URL.
  final String? deviceAuthorizationUrl;

  /// Available OAuth scopes and their descriptions.
  final Map<String, String> scopes;
}

/// A security scheme defined in an OpenAPI spec.
final class ApiSecurityScheme {
  /// Creates a security scheme with the given [name] and [type].
  const ApiSecurityScheme({
    required this.name,
    required this.type,
    this.scheme,
    this.bearerFormat,
    this.parameterName,
    this.location,
    this.openIdConnectUrl,
    this.flows = const [],
  });

  /// The scheme name as declared in the spec.
  final String name;

  /// The type of security scheme.
  final ApiSecuritySchemeType type;

  /// The HTTP authentication scheme (e.g. `bearer`, `basic`).
  final String? scheme;

  /// A hint for the bearer token format (e.g. `JWT`).
  final String? bearerFormat;

  /// The name of the API key parameter.
  final String? parameterName;

  /// Where the API key is sent.
  final ApiKeyLocation? location;

  /// The OpenID Connect discovery URL.
  final String? openIdConnectUrl;

  /// The OAuth 2.0 flows supported by this scheme.
  final List<ApiOAuthFlow> flows;
}

/// A security requirement that maps scheme names to required scopes.
final class ApiSecurityRequirement {
  /// Creates a security requirement from the given [schemes] map.
  const ApiSecurityRequirement(this.schemes);

  /// Map of scheme names to their required scopes.
  final Map<String, List<String>> schemes;
}
