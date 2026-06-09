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

  static final totemApiMobileApiRegisterFcmTokenRequirements =
      <ApiSecurityRequirement>[
        const ApiSecurityRequirement({'JWTAuth': []}),
      ];
  static final totemApiMobileApiUnregisterFcmTokenRequirements =
      <ApiSecurityRequirement>[
        const ApiSecurityRequirement({'JWTAuth': []}),
      ];
  static final totemOnboardMobileApiOnboardGetRequirements =
      <ApiSecurityRequirement>[
        const ApiSecurityRequirement({'JWTAuth': []}),
      ];
  static final totemOnboardMobileApiOnboardPostRequirements =
      <ApiSecurityRequirement>[
        const ApiSecurityRequirement({'JWTAuth': []}),
      ];
  static final totemUsersMobileApiGetCurrentUserRequirements =
      <ApiSecurityRequirement>[
        const ApiSecurityRequirement({'JWTAuth': []}),
      ];
  static final totemUsersMobileApiGetUserProfileRequirements =
      <ApiSecurityRequirement>[
        const ApiSecurityRequirement({'JWTAuth': []}),
      ];
  static final totemUsersMobileApiUpdateCurrentUserRequirements =
      <ApiSecurityRequirement>[
        const ApiSecurityRequirement({'JWTAuth': []}),
      ];
  static final totemUsersMobileApiUpdateCurrentUserImageRequirements =
      <ApiSecurityRequirement>[
        const ApiSecurityRequirement({'JWTAuth': []}),
      ];
  static final totemUsersMobileApiDeleteCurrentUserRequirements =
      <ApiSecurityRequirement>[
        const ApiSecurityRequirement({'JWTAuth': []}),
      ];
  static final totemUsersMobileApiKeeperRequirements = <ApiSecurityRequirement>[
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemUsersMobileApiSubmitFeedbackRequirements =
      <ApiSecurityRequirement>[
        const ApiSecurityRequirement({'JWTAuth': []}),
      ];
  static final totemSpacesMobileApiSubscribeToSpaceRequirements =
      <ApiSecurityRequirement>[
        const ApiSecurityRequirement({'JWTAuth': []}),
      ];
  static final totemSpacesMobileApiUnsubscribeToSpaceRequirements =
      <ApiSecurityRequirement>[
        const ApiSecurityRequirement({'JWTAuth': []}),
      ];
  static final totemSpacesMobileApiListSubscriptionsRequirements =
      <ApiSecurityRequirement>[
        const ApiSecurityRequirement({'JWTAuth': []}),
      ];
  static final totemSpacesMobileApiListSpacesRequirements =
      <ApiSecurityRequirement>[
        const ApiSecurityRequirement({'JWTAuth': []}),
      ];
  static final totemSpacesMobileApiGetSpaceDetailRequirements =
      <ApiSecurityRequirement>[
        const ApiSecurityRequirement({'JWTAuth': []}),
      ];
  static final totemSpacesMobileApiGetKeeperSpacesRequirements =
      <ApiSecurityRequirement>[
        const ApiSecurityRequirement({'JWTAuth': []}),
      ];
  static final totemSpacesMobileApiGetSessionDetailRequirements =
      <ApiSecurityRequirement>[
        const ApiSecurityRequirement({'JWTAuth': []}),
      ];
  static final totemSpacesMobileApiPostSessionFeedbackRequirements =
      <ApiSecurityRequirement>[
        const ApiSecurityRequirement({'JWTAuth': []}),
      ];
  static final totemSpacesMobileApiGetSessionsHistoryRequirements =
      <ApiSecurityRequirement>[
        const ApiSecurityRequirement({'JWTAuth': []}),
      ];
  static final totemSpacesMobileApiGetRecommendedSpacesRequirements =
      <ApiSecurityRequirement>[
        const ApiSecurityRequirement({'JWTAuth': []}),
      ];
  static final totemSpacesMobileApiGetSpacesSummaryRequirements =
      <ApiSecurityRequirement>[
        const ApiSecurityRequirement({'JWTAuth': []}),
      ];
  static final totemSpacesMobileApiRsvpConfirmRequirements =
      <ApiSecurityRequirement>[
        const ApiSecurityRequirement({'JWTAuth': []}),
      ];
  static final totemSpacesMobileApiRsvpCancelRequirements =
      <ApiSecurityRequirement>[
        const ApiSecurityRequirement({'JWTAuth': []}),
      ];
  static final totemBlogMobileApiListPostsRequirements =
      <ApiSecurityRequirement>[
        const ApiSecurityRequirement({'JWTAuth': []}),
      ];
  static final totemBlogMobileApiPostRequirements = <ApiSecurityRequirement>[
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemMeetingsMobileApiGetLivekitTokenRequirements =
      <ApiSecurityRequirement>[
        const ApiSecurityRequirement({'JWTAuth': []}),
      ];
  static final totemMeetingsMobileApiPassTotemEndpointRequirements =
      <ApiSecurityRequirement>[
        const ApiSecurityRequirement({'JWTAuth': []}),
      ];
  static final totemMeetingsMobileApiAcceptTotemEndpointRequirements =
      <ApiSecurityRequirement>[
        const ApiSecurityRequirement({'JWTAuth': []}),
      ];
  static final totemMeetingsMobileApiStartRoomEndpointRequirements =
      <ApiSecurityRequirement>[
        const ApiSecurityRequirement({'JWTAuth': []}),
      ];
  static final totemMeetingsMobileApiEndRoomEndpointRequirements =
      <ApiSecurityRequirement>[
        const ApiSecurityRequirement({'JWTAuth': []}),
      ];
  static final totemMeetingsMobileApiMuteParticipantEndpointRequirements =
      <ApiSecurityRequirement>[
        const ApiSecurityRequirement({'JWTAuth': []}),
      ];
  static final totemMeetingsMobileApiMuteAllParticipantsEndpointRequirements =
      <ApiSecurityRequirement>[
        const ApiSecurityRequirement({'JWTAuth': []}),
      ];
  static final totemMeetingsMobileApiRemoveParticipantEndpointRequirements =
      <ApiSecurityRequirement>[
        const ApiSecurityRequirement({'JWTAuth': []}),
      ];
  static final totemMeetingsMobileApiReorderParticipantsEndpointRequirements =
      <ApiSecurityRequirement>[
        const ApiSecurityRequirement({'JWTAuth': []}),
      ];
  static final totemMeetingsMobileApiGetRoomStateEndpointRequirements =
      <ApiSecurityRequirement>[
        const ApiSecurityRequirement({'JWTAuth': []}),
      ];
  static final totemRoomsApiPostEventRequirements = <ApiSecurityRequirement>[
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemRoomsApiGetStateRequirements = <ApiSecurityRequirement>[
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemRoomsApiJoinRoomRequirements = <ApiSecurityRequirement>[
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemRoomsApiMuteRequirements = <ApiSecurityRequirement>[
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemRoomsApiMuteAllRequirements = <ApiSecurityRequirement>[
    const ApiSecurityRequirement({'JWTAuth': []}),
  ];
  static final totemRoomsApiRemoveRequirements = <ApiSecurityRequirement>[
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
