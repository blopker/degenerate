// GENERATED CODE - DO NOT MODIFY BY HAND

import 'realtimekit_update_preset_permissions_chat.dart';import 'realtimekit_update_preset_permissions_connected_meetings.dart';import 'realtimekit_update_preset_permissions_media.dart';import 'realtimekit_update_preset_permissions_plugins.dart';import 'realtimekit_update_preset_permissions_polls.dart';/// Type of the recording peer
final class RealtimekitUpdatePresetPermissionsRecorderType {const RealtimekitUpdatePresetPermissionsRecorderType._(this.value);

factory RealtimekitUpdatePresetPermissionsRecorderType.fromJson(String json) { return switch (json) {
  'RECORDER' => recorder,
  'LIVESTREAMER' => livestreamer,
  'NONE' => none,
  _ => RealtimekitUpdatePresetPermissionsRecorderType._(json),
}; }

static const RealtimekitUpdatePresetPermissionsRecorderType recorder = RealtimekitUpdatePresetPermissionsRecorderType._('RECORDER');

static const RealtimekitUpdatePresetPermissionsRecorderType livestreamer = RealtimekitUpdatePresetPermissionsRecorderType._('LIVESTREAMER');

static const RealtimekitUpdatePresetPermissionsRecorderType none = RealtimekitUpdatePresetPermissionsRecorderType._('NONE');

static const List<RealtimekitUpdatePresetPermissionsRecorderType> values = [recorder, livestreamer, none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimekitUpdatePresetPermissionsRecorderType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimekitUpdatePresetPermissionsRecorderType($value)'; } 
 }
/// Waiting room type
final class RealtimekitUpdatePresetPermissionsWaitingRoomType {const RealtimekitUpdatePresetPermissionsWaitingRoomType._(this.value);

factory RealtimekitUpdatePresetPermissionsWaitingRoomType.fromJson(String json) { return switch (json) {
  'SKIP' => skip,
  'ON_PRIVILEGED_USER_ENTRY' => onPrivilegedUserEntry,
  'SKIP_ON_ACCEPT' => skipOnAccept,
  _ => RealtimekitUpdatePresetPermissionsWaitingRoomType._(json),
}; }

static const RealtimekitUpdatePresetPermissionsWaitingRoomType skip = RealtimekitUpdatePresetPermissionsWaitingRoomType._('SKIP');

static const RealtimekitUpdatePresetPermissionsWaitingRoomType onPrivilegedUserEntry = RealtimekitUpdatePresetPermissionsWaitingRoomType._('ON_PRIVILEGED_USER_ENTRY');

static const RealtimekitUpdatePresetPermissionsWaitingRoomType skipOnAccept = RealtimekitUpdatePresetPermissionsWaitingRoomType._('SKIP_ON_ACCEPT');

static const List<RealtimekitUpdatePresetPermissionsWaitingRoomType> values = [skip, onPrivilegedUserEntry, skipOnAccept];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimekitUpdatePresetPermissionsWaitingRoomType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimekitUpdatePresetPermissionsWaitingRoomType($value)'; } 
 }
final class RealtimekitUpdatePresetPermissions {const RealtimekitUpdatePresetPermissions({this.acceptWaitingRequests, this.canAcceptProductionRequests, this.canChangeParticipantPermissions, this.canEditDisplayName, this.canLivestream, this.canRecord, this.canSpotlight, this.chat, this.connectedMeetings, this.disableParticipantAudio, this.disableParticipantScreensharing, this.disableParticipantVideo, this.hiddenParticipant, this.isRecorder = false, this.kickParticipant, this.media, this.pinParticipant, this.plugins, this.polls, this.recorderType = RealtimekitUpdatePresetPermissionsRecorderType.none, this.showParticipantList, this.waitingRoomType, });

factory RealtimekitUpdatePresetPermissions.fromJson(Map<String, dynamic> json) { return RealtimekitUpdatePresetPermissions(
  acceptWaitingRequests: json['accept_waiting_requests'] as bool?,
  canAcceptProductionRequests: json['can_accept_production_requests'] as bool?,
  canChangeParticipantPermissions: json['can_change_participant_permissions'] as bool?,
  canEditDisplayName: json['can_edit_display_name'] as bool?,
  canLivestream: json['can_livestream'] as bool?,
  canRecord: json['can_record'] as bool?,
  canSpotlight: json['can_spotlight'] as bool?,
  chat: json['chat'] != null ? RealtimekitUpdatePresetPermissionsChat.fromJson(json['chat'] as Map<String, dynamic>) : null,
  connectedMeetings: json['connected_meetings'] != null ? RealtimekitUpdatePresetPermissionsConnectedMeetings.fromJson(json['connected_meetings'] as Map<String, dynamic>) : null,
  disableParticipantAudio: json['disable_participant_audio'] as bool?,
  disableParticipantScreensharing: json['disable_participant_screensharing'] as bool?,
  disableParticipantVideo: json['disable_participant_video'] as bool?,
  hiddenParticipant: json['hidden_participant'] as bool?,
  isRecorder: json.containsKey('is_recorder') ? json['is_recorder'] as bool : false,
  kickParticipant: json['kick_participant'] as bool?,
  media: json['media'] != null ? RealtimekitUpdatePresetPermissionsMedia.fromJson(json['media'] as Map<String, dynamic>) : null,
  pinParticipant: json['pin_participant'] as bool?,
  plugins: json['plugins'] != null ? RealtimekitUpdatePresetPermissionsPlugins.fromJson(json['plugins'] as Map<String, dynamic>) : null,
  polls: json['polls'] != null ? RealtimekitUpdatePresetPermissionsPolls.fromJson(json['polls'] as Map<String, dynamic>) : null,
  recorderType: json.containsKey('recorder_type') ? RealtimekitUpdatePresetPermissionsRecorderType.fromJson(json['recorder_type'] as String) : RealtimekitUpdatePresetPermissionsRecorderType.none,
  showParticipantList: json['show_participant_list'] as bool?,
  waitingRoomType: json['waiting_room_type'] != null ? RealtimekitUpdatePresetPermissionsWaitingRoomType.fromJson(json['waiting_room_type'] as String) : null,
); }

/// Whether this participant can accept waiting requests
final bool? acceptWaitingRequests;

final bool? canAcceptProductionRequests;

final bool? canChangeParticipantPermissions;

final bool? canEditDisplayName;

final bool? canLivestream;

final bool? canRecord;

final bool? canSpotlight;

/// Chat permissions
final RealtimekitUpdatePresetPermissionsChat? chat;

final RealtimekitUpdatePresetPermissionsConnectedMeetings? connectedMeetings;

final bool? disableParticipantAudio;

final bool? disableParticipantScreensharing;

final bool? disableParticipantVideo;

/// Whether this participant is visible to others or not
final bool? hiddenParticipant;

final bool isRecorder;

final bool? kickParticipant;

/// Media permissions
final RealtimekitUpdatePresetPermissionsMedia? media;

final bool? pinParticipant;

/// Plugin permissions
final RealtimekitUpdatePresetPermissionsPlugins? plugins;

/// Poll permissions
final RealtimekitUpdatePresetPermissionsPolls? polls;

/// Type of the recording peer
final RealtimekitUpdatePresetPermissionsRecorderType recorderType;

final bool? showParticipantList;

/// Waiting room type
final RealtimekitUpdatePresetPermissionsWaitingRoomType? waitingRoomType;

Map<String, dynamic> toJson() { return {
  'accept_waiting_requests': ?acceptWaitingRequests,
  'can_accept_production_requests': ?canAcceptProductionRequests,
  'can_change_participant_permissions': ?canChangeParticipantPermissions,
  'can_edit_display_name': ?canEditDisplayName,
  'can_livestream': ?canLivestream,
  'can_record': ?canRecord,
  'can_spotlight': ?canSpotlight,
  if (chat != null) 'chat': chat?.toJson(),
  if (connectedMeetings != null) 'connected_meetings': connectedMeetings?.toJson(),
  'disable_participant_audio': ?disableParticipantAudio,
  'disable_participant_screensharing': ?disableParticipantScreensharing,
  'disable_participant_video': ?disableParticipantVideo,
  'hidden_participant': ?hiddenParticipant,
  'is_recorder': isRecorder,
  'kick_participant': ?kickParticipant,
  if (media != null) 'media': media?.toJson(),
  'pin_participant': ?pinParticipant,
  if (plugins != null) 'plugins': plugins?.toJson(),
  if (polls != null) 'polls': polls?.toJson(),
  'recorder_type': recorderType.toJson(),
  'show_participant_list': ?showParticipantList,
  if (waitingRoomType != null) 'waiting_room_type': waitingRoomType?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'accept_waiting_requests', 'can_accept_production_requests', 'can_change_participant_permissions', 'can_edit_display_name', 'can_livestream', 'can_record', 'can_spotlight', 'chat', 'connected_meetings', 'disable_participant_audio', 'disable_participant_screensharing', 'disable_participant_video', 'hidden_participant', 'is_recorder', 'kick_participant', 'media', 'pin_participant', 'plugins', 'polls', 'recorder_type', 'show_participant_list', 'waiting_room_type'}.contains(key)); } 
RealtimekitUpdatePresetPermissions copyWith({bool Function()? acceptWaitingRequests, bool Function()? canAcceptProductionRequests, bool Function()? canChangeParticipantPermissions, bool Function()? canEditDisplayName, bool Function()? canLivestream, bool Function()? canRecord, bool Function()? canSpotlight, RealtimekitUpdatePresetPermissionsChat Function()? chat, RealtimekitUpdatePresetPermissionsConnectedMeetings Function()? connectedMeetings, bool Function()? disableParticipantAudio, bool Function()? disableParticipantScreensharing, bool Function()? disableParticipantVideo, bool Function()? hiddenParticipant, bool Function()? isRecorder, bool Function()? kickParticipant, RealtimekitUpdatePresetPermissionsMedia Function()? media, bool Function()? pinParticipant, RealtimekitUpdatePresetPermissionsPlugins Function()? plugins, RealtimekitUpdatePresetPermissionsPolls Function()? polls, RealtimekitUpdatePresetPermissionsRecorderType Function()? recorderType, bool Function()? showParticipantList, RealtimekitUpdatePresetPermissionsWaitingRoomType Function()? waitingRoomType, }) { return RealtimekitUpdatePresetPermissions(
  acceptWaitingRequests: acceptWaitingRequests != null ? acceptWaitingRequests() : this.acceptWaitingRequests,
  canAcceptProductionRequests: canAcceptProductionRequests != null ? canAcceptProductionRequests() : this.canAcceptProductionRequests,
  canChangeParticipantPermissions: canChangeParticipantPermissions != null ? canChangeParticipantPermissions() : this.canChangeParticipantPermissions,
  canEditDisplayName: canEditDisplayName != null ? canEditDisplayName() : this.canEditDisplayName,
  canLivestream: canLivestream != null ? canLivestream() : this.canLivestream,
  canRecord: canRecord != null ? canRecord() : this.canRecord,
  canSpotlight: canSpotlight != null ? canSpotlight() : this.canSpotlight,
  chat: chat != null ? chat() : this.chat,
  connectedMeetings: connectedMeetings != null ? connectedMeetings() : this.connectedMeetings,
  disableParticipantAudio: disableParticipantAudio != null ? disableParticipantAudio() : this.disableParticipantAudio,
  disableParticipantScreensharing: disableParticipantScreensharing != null ? disableParticipantScreensharing() : this.disableParticipantScreensharing,
  disableParticipantVideo: disableParticipantVideo != null ? disableParticipantVideo() : this.disableParticipantVideo,
  hiddenParticipant: hiddenParticipant != null ? hiddenParticipant() : this.hiddenParticipant,
  isRecorder: isRecorder != null ? isRecorder() : this.isRecorder,
  kickParticipant: kickParticipant != null ? kickParticipant() : this.kickParticipant,
  media: media != null ? media() : this.media,
  pinParticipant: pinParticipant != null ? pinParticipant() : this.pinParticipant,
  plugins: plugins != null ? plugins() : this.plugins,
  polls: polls != null ? polls() : this.polls,
  recorderType: recorderType != null ? recorderType() : this.recorderType,
  showParticipantList: showParticipantList != null ? showParticipantList() : this.showParticipantList,
  waitingRoomType: waitingRoomType != null ? waitingRoomType() : this.waitingRoomType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitUpdatePresetPermissions &&
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
@override String toString() { return 'RealtimekitUpdatePresetPermissions(acceptWaitingRequests: $acceptWaitingRequests, canAcceptProductionRequests: $canAcceptProductionRequests, canChangeParticipantPermissions: $canChangeParticipantPermissions, canEditDisplayName: $canEditDisplayName, canLivestream: $canLivestream, canRecord: $canRecord, canSpotlight: $canSpotlight, chat: $chat, connectedMeetings: $connectedMeetings, disableParticipantAudio: $disableParticipantAudio, disableParticipantScreensharing: $disableParticipantScreensharing, disableParticipantVideo: $disableParticipantVideo, hiddenParticipant: $hiddenParticipant, isRecorder: $isRecorder, kickParticipant: $kickParticipant, media: $media, pinParticipant: $pinParticipant, plugins: $plugins, polls: $polls, recorderType: $recorderType, showParticipantList: $showParticipantList, waitingRoomType: $waitingRoomType)'; } 
 }
