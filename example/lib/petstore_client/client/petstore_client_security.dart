// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';

final class PetstoreClientSecurity {
  const PetstoreClientSecurity._();

  static final securitySchemes = <String, ApiSecurityScheme>{
    'petstore_auth': const ApiSecurityScheme(name: 'petstore_auth', type: ApiSecuritySchemeType.oauth2, flows: [ApiOAuthFlow(type: ApiOAuthFlowType.implicit, authorizationUrl: 'https://petstore3.swagger.io/oauth/authorize', scopes: {'write:pets': 'modify pets in your account', 'read:pets': 'read your pets'})]),
    'api_key': const ApiSecurityScheme(name: 'api_key', type: ApiSecuritySchemeType.apiKey, parameterName: 'api_key', location: ApiKeyLocation.header),
  };

  static final addPetRequirements = [const ApiSecurityRequirement({'petstore_auth': ['write:pets', 'read:pets']})];
  static final updatePetRequirements = [const ApiSecurityRequirement({'petstore_auth': ['write:pets', 'read:pets']})];
  static final findPetsByStatusRequirements = [const ApiSecurityRequirement({'petstore_auth': ['write:pets', 'read:pets']})];
  static final findPetsByTagsRequirements = [const ApiSecurityRequirement({'petstore_auth': ['write:pets', 'read:pets']})];
  static final getPetByIdRequirements = [const ApiSecurityRequirement({'api_key': []}), const ApiSecurityRequirement({'petstore_auth': ['write:pets', 'read:pets']})];
  static final updatePetWithFormRequirements = [const ApiSecurityRequirement({'petstore_auth': ['write:pets', 'read:pets']})];
  static final deletePetRequirements = [const ApiSecurityRequirement({'petstore_auth': ['write:pets', 'read:pets']})];
  static final uploadFileRequirements = [const ApiSecurityRequirement({'petstore_auth': ['write:pets', 'read:pets']})];
  static final getInventoryRequirements = [const ApiSecurityRequirement({'api_key': []})];

  static ApiConfig applyApiKey(ApiConfig config, String value) => config.copyWith(defaultHeaders: {...config.defaultHeaders, 'api_key': value});

}
