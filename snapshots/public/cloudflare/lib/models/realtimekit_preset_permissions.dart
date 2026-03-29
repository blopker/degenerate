// GENERATED CODE - DO NOT MODIFY BY HAND

import 'realtimekit_preset_permissions_chat.dart';import 'realtimekit_preset_permissions_connected_meetings.dart';import 'realtimekit_preset_permissions_media.dart';import 'realtimekit_preset_permissions_plugins.dart';import 'realtimekit_preset_permissions_polls.dart';/// Type of the recording peer
final class RealtimekitPresetPermissionsRecorderType {const RealtimekitPresetPermissionsRecorderType._(this.value);

factory RealtimekitPresetPermissionsRecorderType.fromJson(String json) { return switch (json) {
  'RECORDER' => recorder,
  'LIVESTREAMER' => livestreamer,
  'NONE' => none,
  _ => RealtimekitPresetPermissionsRecorderType._(json),
}; }

static const RealtimekitPresetPermissionsRecorderType recorder = RealtimekitPresetPermissionsRecorderType._('RECORDER');

static const RealtimekitPresetPermissionsRecorderType livestreamer = RealtimekitPresetPermissionsRecorderType._('LIVESTREAMER');

static const RealtimekitPresetPermissionsRecorderType none = RealtimekitPresetPermissionsRecorderType._('NONE');

static const List<RealtimekitPresetPermissionsRecorderType> values = [recorder, livestreamer, none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimekitPresetPermissionsRecorderType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimekitPresetPermissionsRecorderType($value)'; } 
 }
/// Waiting room type
final class RealtimekitPresetPermissionsWaitingRoomType {const RealtimekitPresetPermissionsWaitingRoomType._(this.value);

factory RealtimekitPresetPermissionsWaitingRoomType.fromJson(String json) { return switch (json) {
  'SKIP' => skip,
  'ON_PRIVILEGED_USER_ENTRY' => onPrivilegedUserEntry,
  'SKIP_ON_ACCEPT' => skipOnAccept,
  _ => RealtimekitPresetPermissionsWaitingRoomType._(json),
}; }

static const RealtimekitPresetPermissionsWaitingRoomType skip = RealtimekitPresetPermissionsWaitingRoomType._('SKIP');

static const RealtimekitPresetPermissionsWaitingRoomType onPrivilegedUserEntry = RealtimekitPresetPermissionsWaitingRoomType._('ON_PRIVILEGED_USER_ENTRY');

static const RealtimekitPresetPermissionsWaitingRoomType skipOnAccept = RealtimekitPresetPermissionsWaitingRoomType._('SKIP_ON_ACCEPT');

static const List<RealtimekitPresetPermissionsWaitingRoomType> values = [skip, onPrivilegedUserEntry, skipOnAccept];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimekitPresetPermissionsWaitingRoomType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimekitPresetPermissionsWaitingRoomType($value)'; } 
 }
final class RealtimekitPresetPermissions {const RealtimekitPresetPermissions({required this.acceptWaitingRequests, required this.canAcceptProductionRequests, required this.canChangeParticipantPermissions, required this.canEditDisplayName, required this.canLivestream, required this.canRecord, required this.canSpotlight, required this.chat, required this.connectedMeetings, required this.disableParticipantAudio, required this.disableParticipantScreensharing, required this.disableParticipantVideo, required this.hiddenParticipant, this.isRecorder = false, required this.kickParticipant, required this.media, required this.pinParticipant, required this.plugins, required this.polls, this.recorderType = RealtimekitPresetPermissionsRecorderType.none, required this.showParticipantList, required this.waitingRoomType, });

factory RealtimekitPresetPermissions.fromJson(Map<String, dynamic> json) { return RealtimekitPresetPermissions(
  acceptWaitingRequests: json['accept_waiting_requests'] as bool,
  canAcceptProductionRequests: json['can_accept_production_requests'] as bool,
  canChangeParticipantPermissions: json['can_change_participant_permissions'] as bool,
  canEditDisplayName: json['can_edit_display_name'] as bool,
  canLivestream: json['can_livestream'] as bool,
  canRecord: json['can_record'] as bool,
  canSpotlight: json['can_spotlight'] as bool,
  chat: RealtimekitPresetPermissionsChat.fromJson(json['chat'] as Map<String, dynamic>),
  connectedMeetings: RealtimekitPresetPermissionsConnectedMeetings.fromJson(json['connected_meetings'] as Map<String, dynamic>),
  disableParticipantAudio: json['disable_participant_audio'] as bool,
  disableParticipantScreensharing: json['disable_participant_screensharing'] as bool,
  disableParticipantVideo: json['disable_participant_video'] as bool,
  hiddenParticipant: json['hidden_participant'] as bool,
  isRecorder: json.containsKey('is_recorder') ? json['is_recorder'] as bool : false,
  kickParticipant: json['kick_participant'] as bool,
  media: RealtimekitPresetPermissionsMedia.fromJson(json['media'] as Map<String, dynamic>),
  pinParticipant: json['pin_participant'] as bool,
  plugins: RealtimekitPresetPermissionsPlugins.fromJson(json['plugins'] as Map<String, dynamic>),
  polls: RealtimekitPresetPermissionsPolls.fromJson(json['polls'] as Map<String, dynamic>),
  recorderType: RealtimekitPresetPermissionsRecorderType.fromJson(json['recorder_type'] as String),
  showParticipantList: json['show_participant_list'] as bool,
  waitingRoomType: RealtimekitPresetPermissionsWaitingRoomType.fromJson(json['waiting_room_type'] as String),
); }

/// Whether this participant can accept waiting requests
final bool acceptWaitingRequests;

final bool canAcceptProductionRequests;

final bool canChangeParticipantPermissions;

final bool canEditDisplayName;

final bool canLivestream;

final bool canRecord;

final bool canSpotlight;

/// Chat permissions
final RealtimekitPresetPermissionsChat chat;

final RealtimekitPresetPermissionsConnectedMeetings connectedMeetings;

final bool disableParticipantAudio;

final bool disableParticipantScreensharing;

final bool disableParticipantVideo;

/// Whether this participant is visible to others or not
final bool hiddenParticipant;

final bool isRecorder;

final bool kickParticipant;

/// Media permissions
final RealtimekitPresetPermissionsMedia media;

final bool pinParticipant;

/// Plugin permissions
final RealtimekitPresetPermissionsPlugins plugins;

/// Poll permissions
final RealtimekitPresetPermissionsPolls polls;

/// Type of the recording peer
final RealtimekitPresetPermissionsRecorderType recorderType;

final bool showParticipantList;

/// Waiting room type
final RealtimekitPresetPermissionsWaitingRoomType waitingRoomType;

Map<String, dynamic> toJson() { return {
  'accept_waiting_requests': acceptWaitingRequests,
  'can_accept_production_requests': canAcceptProductionRequests,
  'can_change_participant_permissions': canChangeParticipantPermissions,
  'can_edit_display_name': canEditDisplayName,
  'can_livestream': canLivestream,
  'can_record': canRecord,
  'can_spotlight': canSpotlight,
  'chat': chat.toJson(),
  'connected_meetings': connectedMeetings.toJson(),
  'disable_participant_audio': disableParticipantAudio,
  'disable_participant_screensharing': disableParticipantScreensharing,
  'disable_participant_video': disableParticipantVideo,
  'hidden_participant': hiddenParticipant,
  'is_recorder': isRecorder,
  'kick_participant': kickParticipant,
  'media': media.toJson(),
  'pin_participant': pinParticipant,
  'plugins': plugins.toJson(),
  'polls': polls.toJson(),
  'recorder_type': recorderType.toJson(),
  'show_participant_list': showParticipantList,
  'waiting_room_type': waitingRoomType.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('accept_waiting_requests') && json['accept_waiting_requests'] is bool &&
      json.containsKey('can_accept_production_requests') && json['can_accept_production_requests'] is bool &&
      json.containsKey('can_change_participant_permissions') && json['can_change_participant_permissions'] is bool &&
      json.containsKey('can_edit_display_name') && json['can_edit_display_name'] is bool &&
      json.containsKey('can_livestream') && json['can_livestream'] is bool &&
      json.containsKey('can_record') && json['can_record'] is bool &&
      json.containsKey('can_spotlight') && json['can_spotlight'] is bool &&
      json.containsKey('chat') &&
      json.containsKey('connected_meetings') &&
      json.containsKey('disable_participant_audio') && json['disable_participant_audio'] is bool &&
      json.containsKey('disable_participant_screensharing') && json['disable_participant_screensharing'] is bool &&
      json.containsKey('disable_participant_video') && json['disable_participant_video'] is bool &&
      json.containsKey('hidden_participant') && json['hidden_participant'] is bool &&
      json.containsKey('kick_participant') && json['kick_participant'] is bool &&
      json.containsKey('media') &&
      json.containsKey('pin_participant') && json['pin_participant'] is bool &&
      json.containsKey('plugins') &&
      json.containsKey('polls') &&
      json.containsKey('recorder_type') &&
      json.containsKey('show_participant_list') && json['show_participant_list'] is bool &&
      json.containsKey('waiting_room_type'); } 
RealtimekitPresetPermissions copyWith({bool? acceptWaitingRequests, bool? canAcceptProductionRequests, bool? canChangeParticipantPermissions, bool? canEditDisplayName, bool? canLivestream, bool? canRecord, bool? canSpotlight, RealtimekitPresetPermissionsChat? chat, RealtimekitPresetPermissionsConnectedMeetings? connectedMeetings, bool? disableParticipantAudio, bool? disableParticipantScreensharing, bool? disableParticipantVideo, bool? hiddenParticipant, bool Function()? isRecorder, bool? kickParticipant, RealtimekitPresetPermissionsMedia? media, bool? pinParticipant, RealtimekitPresetPermissionsPlugins? plugins, RealtimekitPresetPermissionsPolls? polls, RealtimekitPresetPermissionsRecorderType? recorderType, bool? showParticipantList, RealtimekitPresetPermissionsWaitingRoomType? waitingRoomType, }) { return RealtimekitPresetPermissions(
  acceptWaitingRequests: acceptWaitingRequests ?? this.acceptWaitingRequests,
  canAcceptProductionRequests: canAcceptProductionRequests ?? this.canAcceptProductionRequests,
  canChangeParticipantPermissions: canChangeParticipantPermissions ?? this.canChangeParticipantPermissions,
  canEditDisplayName: canEditDisplayName ?? this.canEditDisplayName,
  canLivestream: canLivestream ?? this.canLivestream,
  canRecord: canRecord ?? this.canRecord,
  canSpotlight: canSpotlight ?? this.canSpotlight,
  chat: chat ?? this.chat,
  connectedMeetings: connectedMeetings ?? this.connectedMeetings,
  disableParticipantAudio: disableParticipantAudio ?? this.disableParticipantAudio,
  disableParticipantScreensharing: disableParticipantScreensharing ?? this.disableParticipantScreensharing,
  disableParticipantVideo: disableParticipantVideo ?? this.disableParticipantVideo,
  hiddenParticipant: hiddenParticipant ?? this.hiddenParticipant,
  isRecorder: isRecorder != null ? isRecorder() : this.isRecorder,
  kickParticipant: kickParticipant ?? this.kickParticipant,
  media: media ?? this.media,
  pinParticipant: pinParticipant ?? this.pinParticipant,
  plugins: plugins ?? this.plugins,
  polls: polls ?? this.polls,
  recorderType: recorderType ?? this.recorderType,
  showParticipantList: showParticipantList ?? this.showParticipantList,
  waitingRoomType: waitingRoomType ?? this.waitingRoomType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitPresetPermissions &&
          acceptWaitingRequests == other.acceptWaitingRequests &&
          canAcceptProductionRequests == other.canAcceptProductionRequests &&
          canChangeParticipantPermissions == other.canChangeParticipantPermissions &&
          canEditDisplayName == other.canEditDisplayName &&
          canLivestream == other.canLivestream &&
          canRecord == other.canRecord &&
          canSpotlight == other.canSpotlight &&
          chat == other.chat &&
          connectedMeetings == other.connectedMeetings &&
          disableParticipantAudio == other.disableParticipantAudio &&
          disableParticipantScreensharing == other.disableParticipantScreensharing &&
          disableParticipantVideo == other.disableParticipantVideo &&
          hiddenParticipant == other.hiddenParticipant &&
          isRecorder == other.isRecorder &&
          kickParticipant == other.kickParticipant &&
          media == other.media &&
          pinParticipant == other.pinParticipant &&
          plugins == other.plugins &&
          polls == other.polls &&
          recorderType == other.recorderType &&
          showParticipantList == other.showParticipantList &&
          waitingRoomType == other.waitingRoomType; } 
@override int get hashCode { return Object.hashAll([acceptWaitingRequests, canAcceptProductionRequests, canChangeParticipantPermissions, canEditDisplayName, canLivestream, canRecord, canSpotlight, chat, connectedMeetings, disableParticipantAudio, disableParticipantScreensharing, disableParticipantVideo, hiddenParticipant, isRecorder, kickParticipant, media, pinParticipant, plugins, polls, recorderType, showParticipantList, waitingRoomType]); } 
@override String toString() { return 'RealtimekitPresetPermissions(acceptWaitingRequests: $acceptWaitingRequests, canAcceptProductionRequests: $canAcceptProductionRequests, canChangeParticipantPermissions: $canChangeParticipantPermissions, canEditDisplayName: $canEditDisplayName, canLivestream: $canLivestream, canRecord: $canRecord, canSpotlight: $canSpotlight, chat: $chat, connectedMeetings: $connectedMeetings, disableParticipantAudio: $disableParticipantAudio, disableParticipantScreensharing: $disableParticipantScreensharing, disableParticipantVideo: $disableParticipantVideo, hiddenParticipant: $hiddenParticipant, isRecorder: $isRecorder, kickParticipant: $kickParticipant, media: $media, pinParticipant: $pinParticipant, plugins: $plugins, polls: $polls, recorderType: $recorderType, showParticipantList: $showParticipantList, waitingRoomType: $waitingRoomType)'; } 
 }
