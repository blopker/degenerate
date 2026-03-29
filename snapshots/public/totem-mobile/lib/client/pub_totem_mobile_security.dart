// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';

final class PubTotemMobileSecurity {
  const PubTotemMobileSecurity._();

  static final securitySchemes = <String, ApiSecurityScheme>{
    'JWTAuth': ApiSecurityScheme(name: 'JWTAuth', type: ApiSecuritySchemeType.http, scheme: 'bearer', bearerFormat: null, parameterName: null, location: null, openIdConnectUrl: null, flows: []),
  };

  static final totemApiMobileApiRegisterFcmTokenRequirements = [ApiSecurityRequirement({'JWTAuth': []})];
  static final totemApiMobileApiUnregisterFcmTokenRequirements = [ApiSecurityRequirement({'JWTAuth': []})];
  static final totemOnboardMobileApiOnboardGetRequirements = [ApiSecurityRequirement({'JWTAuth': []})];
  static final totemOnboardMobileApiOnboardPostRequirements = [ApiSecurityRequirement({'JWTAuth': []})];
  static final totemUsersMobileApiGetCurrentUserRequirements = [ApiSecurityRequirement({'JWTAuth': []})];
  static final totemUsersMobileApiGetUserProfileRequirements = [ApiSecurityRequirement({'JWTAuth': []})];
  static final totemUsersMobileApiUpdateCurrentUserRequirements = [ApiSecurityRequirement({'JWTAuth': []})];
  static final totemUsersMobileApiUpdateCurrentUserImageRequirements = [ApiSecurityRequirement({'JWTAuth': []})];
  static final totemUsersMobileApiDeleteCurrentUserRequirements = [ApiSecurityRequirement({'JWTAuth': []})];
  static final totemUsersMobileApiKeeperRequirements = [ApiSecurityRequirement({'JWTAuth': []})];
  static final totemUsersMobileApiSubmitFeedbackRequirements = [ApiSecurityRequirement({'JWTAuth': []})];
  static final totemSpacesMobileApiSubscribeToSpaceRequirements = [ApiSecurityRequirement({'JWTAuth': []})];
  static final totemSpacesMobileApiUnsubscribeToSpaceRequirements = [ApiSecurityRequirement({'JWTAuth': []})];
  static final totemSpacesMobileApiListSubscriptionsRequirements = [ApiSecurityRequirement({'JWTAuth': []})];
  static final totemSpacesMobileApiListSpacesRequirements = [ApiSecurityRequirement({'JWTAuth': []})];
  static final totemSpacesMobileApiGetSpaceDetailRequirements = [ApiSecurityRequirement({'JWTAuth': []})];
  static final totemSpacesMobileApiGetKeeperSpacesRequirements = [ApiSecurityRequirement({'JWTAuth': []})];
  static final totemSpacesMobileApiGetSessionDetailRequirements = [ApiSecurityRequirement({'JWTAuth': []})];
  static final totemSpacesMobileApiPostSessionFeedbackRequirements = [ApiSecurityRequirement({'JWTAuth': []})];
  static final totemSpacesMobileApiGetSessionsHistoryRequirements = [ApiSecurityRequirement({'JWTAuth': []})];
  static final totemSpacesMobileApiGetRecommendedSpacesRequirements = [ApiSecurityRequirement({'JWTAuth': []})];
  static final totemSpacesMobileApiGetSpacesSummaryRequirements = [ApiSecurityRequirement({'JWTAuth': []})];
  static final totemSpacesMobileApiRsvpConfirmRequirements = [ApiSecurityRequirement({'JWTAuth': []})];
  static final totemSpacesMobileApiRsvpCancelRequirements = [ApiSecurityRequirement({'JWTAuth': []})];
  static final totemBlogMobileApiListPostsRequirements = [ApiSecurityRequirement({'JWTAuth': []})];
  static final totemBlogMobileApiPostRequirements = [ApiSecurityRequirement({'JWTAuth': []})];
  static final totemMeetingsMobileApiGetLivekitTokenRequirements = [ApiSecurityRequirement({'JWTAuth': []})];
  static final totemMeetingsMobileApiPassTotemEndpointRequirements = [ApiSecurityRequirement({'JWTAuth': []})];
  static final totemMeetingsMobileApiAcceptTotemEndpointRequirements = [ApiSecurityRequirement({'JWTAuth': []})];
  static final totemMeetingsMobileApiStartRoomEndpointRequirements = [ApiSecurityRequirement({'JWTAuth': []})];
  static final totemMeetingsMobileApiEndRoomEndpointRequirements = [ApiSecurityRequirement({'JWTAuth': []})];
  static final totemMeetingsMobileApiMuteParticipantEndpointRequirements = [ApiSecurityRequirement({'JWTAuth': []})];
  static final totemMeetingsMobileApiMuteAllParticipantsEndpointRequirements = [ApiSecurityRequirement({'JWTAuth': []})];
  static final totemMeetingsMobileApiRemoveParticipantEndpointRequirements = [ApiSecurityRequirement({'JWTAuth': []})];
  static final totemMeetingsMobileApiReorderParticipantsEndpointRequirements = [ApiSecurityRequirement({'JWTAuth': []})];
  static final totemMeetingsMobileApiGetRoomStateEndpointRequirements = [ApiSecurityRequirement({'JWTAuth': []})];
  static final totemRoomsApiPostEventRequirements = [ApiSecurityRequirement({'JWTAuth': []})];
  static final totemRoomsApiGetStateRequirements = [ApiSecurityRequirement({'JWTAuth': []})];
  static final totemRoomsApiJoinRoomRequirements = [ApiSecurityRequirement({'JWTAuth': []})];
  static final totemRoomsApiMuteRequirements = [ApiSecurityRequirement({'JWTAuth': []})];
  static final totemRoomsApiMuteAllRequirements = [ApiSecurityRequirement({'JWTAuth': []})];
  static final totemRoomsApiRemoveRequirements = [ApiSecurityRequirement({'JWTAuth': []})];

  static ApiConfig applyJWTAuth(ApiConfig config, String token) => config.copyWith(defaultHeaders: {...config.defaultHeaders, 'Authorization': 'Bearer $token'});

}
