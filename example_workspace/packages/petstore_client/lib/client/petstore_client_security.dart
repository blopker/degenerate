// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';

final class PetstoreClientSecurity {
  const PetstoreClientSecurity._();

  static final securitySchemes = <String, ApiSecurityScheme>{
    'petstore_auth': const ApiSecurityScheme(name: 'petstore_auth', type: ApiSecuritySchemeType.oauth2, flows: [ApiOAuthFlow(type: ApiOAuthFlowType.implicit, authorizationUrl: 'https://petstore3.swagger.io/oauth/authorize', scopes: {'write:pets': 'modify pets in your account', 'read:pets': 'read your pets'})]),
    'api_key': const ApiSecurityScheme(name: 'api_key', type: ApiSecuritySchemeType.apiKey, parameterName: 'api_key', location: ApiKeyLocation.header),
  };

  static final addPetRequirements = <ApiSecurityRequirement>[const ApiSecurityRequirement({'petstore_auth': ['write:pets', 'read:pets']})];
  static final updatePetRequirements = <ApiSecurityRequirement>[const ApiSecurityRequirement({'petstore_auth': ['write:pets', 'read:pets']})];
  static final findPetsByStatusRequirements = <ApiSecurityRequirement>[const ApiSecurityRequirement({'petstore_auth': ['write:pets', 'read:pets']})];
  static final findPetsByTagsRequirements = <ApiSecurityRequirement>[const ApiSecurityRequirement({'petstore_auth': ['write:pets', 'read:pets']})];
  static final getPetByIdRequirements = <ApiSecurityRequirement>[const ApiSecurityRequirement({'api_key': []}), const ApiSecurityRequirement({'petstore_auth': ['write:pets', 'read:pets']})];
  static final updatePetWithFormRequirements = <ApiSecurityRequirement>[const ApiSecurityRequirement({'petstore_auth': ['write:pets', 'read:pets']})];
  static final deletePetRequirements = <ApiSecurityRequirement>[const ApiSecurityRequirement({'petstore_auth': ['write:pets', 'read:pets']})];
  static final uploadFileRequirements = <ApiSecurityRequirement>[const ApiSecurityRequirement({'petstore_auth': ['write:pets', 'read:pets']})];
  static final getInventoryRequirements = <ApiSecurityRequirement>[const ApiSecurityRequirement({'api_key': []})];

  static ApiConfig applyApiKey(ApiConfig config, String value) => config.copyWith(defaultHeaders: {...config.defaultHeaders, 'api_key': value});

}
