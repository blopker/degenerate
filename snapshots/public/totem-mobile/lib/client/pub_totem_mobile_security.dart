// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';

final class PubTotemMobileSecurity {
  const PubTotemMobileSecurity._();

  static final securitySchemes = <String, ApiSecurityScheme>{
    'JWTAuth': const ApiSecurityScheme(
      name: 'JWTAuth',
      type: ApiSecuritySchemeType.http,
      scheme: 'bearer',
    ),
  };

  static final totemApiMobileApiRegisterFcmTokenRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemApiMobileApiUnregisterFcmTokenRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemOnboardMobileApiOnboardGetRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemOnboardMobileApiOnboardPostRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemUsersMobileApiGetCurrentUserRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemUsersMobileApiGetUserProfileRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemUsersMobileApiUpdateCurrentUserRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemUsersMobileApiUpdateCurrentUserImageRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemUsersMobileApiDeleteCurrentUserRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemUsersMobileApiKeeperRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemUsersMobileApiSubmitFeedbackRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemSpacesMobileApiSubscribeToSpaceRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemSpacesMobileApiUnsubscribeToSpaceRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemSpacesMobileApiListSubscriptionsRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemSpacesMobileApiListSpacesRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemSpacesMobileApiGetSpaceDetailRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemSpacesMobileApiGetKeeperSpacesRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemSpacesMobileApiGetSessionDetailRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemSpacesMobileApiPostSessionFeedbackRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemSpacesMobileApiGetSessionsHistoryRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemSpacesMobileApiGetRecommendedSpacesRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemSpacesMobileApiGetSpacesSummaryRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemSpacesMobileApiRsvpConfirmRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemSpacesMobileApiRsvpCancelRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemBlogMobileApiListPostsRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemBlogMobileApiPostRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemMeetingsMobileApiGetLivekitTokenRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemMeetingsMobileApiPassTotemEndpointRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemMeetingsMobileApiAcceptTotemEndpointRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemMeetingsMobileApiStartRoomEndpointRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemMeetingsMobileApiEndRoomEndpointRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemMeetingsMobileApiMuteParticipantEndpointRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemMeetingsMobileApiMuteAllParticipantsEndpointRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemMeetingsMobileApiRemoveParticipantEndpointRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemMeetingsMobileApiReorderParticipantsEndpointRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemMeetingsMobileApiGetRoomStateEndpointRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemRoomsApiPostEventRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemRoomsApiGetStateRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemRoomsApiJoinRoomRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemRoomsApiMuteRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemRoomsApiMuteAllRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemRoomsApiRemoveRequirements = [
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];

  static ApiConfig applyJWTAuth(ApiConfig config, String token) =>
      config.copyWith(
        defaultHeaders: {
          ...config.defaultHeaders,
          'Authorization': 'Bearer $token',
        },
      );
}
