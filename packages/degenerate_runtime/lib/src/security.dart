enum ApiSecuritySchemeType { apiKey, http, mutualTls, oauth2, openIdConnect }

enum ApiKeyLocation { header, query, cookie }

enum ApiOAuthFlowType {
  implicit,
  password,
  clientCredentials,
  authorizationCode,
}

final class ApiOAuthFlow {
  final ApiOAuthFlowType type;
  final String? authorizationUrl;
  final String? tokenUrl;
  final String? refreshUrl;
  final Map<String, String> scopes;

  const ApiOAuthFlow({
    required this.type,
    this.authorizationUrl,
    this.tokenUrl,
    this.refreshUrl,
    this.scopes = const {},
  });
}

final class ApiSecurityScheme {
  final String name;
  final ApiSecuritySchemeType type;
  final String? scheme;
  final String? bearerFormat;
  final String? parameterName;
  final ApiKeyLocation? location;
  final String? openIdConnectUrl;
  final List<ApiOAuthFlow> flows;

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
}

final class ApiSecurityRequirement {
  final Map<String, List<String>> schemes;

  const ApiSecurityRequirement(this.schemes);
}
