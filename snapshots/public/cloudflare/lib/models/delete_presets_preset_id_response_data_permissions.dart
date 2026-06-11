// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'delete_presets_preset_id_response_data_permissions_chat.dart';import 'delete_presets_preset_id_response_data_permissions_connected_meetings.dart';import 'delete_presets_preset_id_response_data_permissions_media.dart';import 'delete_presets_preset_id_response_data_permissions_plugins.dart';import 'delete_presets_preset_id_response_data_permissions_polls.dart';/// Type of the recording peer
@immutable final class DeletePresetsPresetIdResponseDataPermissionsRecorderType {const DeletePresetsPresetIdResponseDataPermissionsRecorderType._(this.value);

factory DeletePresetsPresetIdResponseDataPermissionsRecorderType.fromJson(String json) { return switch (json) {
  'RECORDER' => recorder,
  'LIVESTREAMER' => livestreamer,
  'NONE' => none,
  _ => DeletePresetsPresetIdResponseDataPermissionsRecorderType._(json),
}; }

static const DeletePresetsPresetIdResponseDataPermissionsRecorderType recorder = DeletePresetsPresetIdResponseDataPermissionsRecorderType._('RECORDER');

static const DeletePresetsPresetIdResponseDataPermissionsRecorderType livestreamer = DeletePresetsPresetIdResponseDataPermissionsRecorderType._('LIVESTREAMER');

static const DeletePresetsPresetIdResponseDataPermissionsRecorderType none = DeletePresetsPresetIdResponseDataPermissionsRecorderType._('NONE');

static const List<DeletePresetsPresetIdResponseDataPermissionsRecorderType> values = [recorder, livestreamer, none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeletePresetsPresetIdResponseDataPermissionsRecorderType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DeletePresetsPresetIdResponseDataPermissionsRecorderType($value)'; } 
 }
/// Waiting room type
@immutable final class DeletePresetsPresetIdResponseDataPermissionsWaitingRoomType {const DeletePresetsPresetIdResponseDataPermissionsWaitingRoomType._(this.value);

factory DeletePresetsPresetIdResponseDataPermissionsWaitingRoomType.fromJson(String json) { return switch (json) {
  'SKIP' => skip,
  'ON_PRIVILEGED_USER_ENTRY' => onPrivilegedUserEntry,
  'SKIP_ON_ACCEPT' => skipOnAccept,
  _ => DeletePresetsPresetIdResponseDataPermissionsWaitingRoomType._(json),
}; }

static const DeletePresetsPresetIdResponseDataPermissionsWaitingRoomType skip = DeletePresetsPresetIdResponseDataPermissionsWaitingRoomType._('SKIP');

static const DeletePresetsPresetIdResponseDataPermissionsWaitingRoomType onPrivilegedUserEntry = DeletePresetsPresetIdResponseDataPermissionsWaitingRoomType._('ON_PRIVILEGED_USER_ENTRY');

static const DeletePresetsPresetIdResponseDataPermissionsWaitingRoomType skipOnAccept = DeletePresetsPresetIdResponseDataPermissionsWaitingRoomType._('SKIP_ON_ACCEPT');

static const List<DeletePresetsPresetIdResponseDataPermissionsWaitingRoomType> values = [skip, onPrivilegedUserEntry, skipOnAccept];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeletePresetsPresetIdResponseDataPermissionsWaitingRoomType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DeletePresetsPresetIdResponseDataPermissionsWaitingRoomType($value)'; } 
 }
@immutable final class DeletePresetsPresetIdResponseDataPermissions {const DeletePresetsPresetIdResponseDataPermissions({required this.acceptWaitingRequests, required this.canAcceptProductionRequests, required this.canChangeParticipantPermissions, required this.canEditDisplayName, required this.canLivestream, required this.canRecord, required this.canSpotlight, required this.chat, required this.connectedMeetings, required this.disableParticipantAudio, required this.disableParticipantScreensharing, required this.disableParticipantVideo, required this.hiddenParticipant, required this.kickParticipant, required this.media, required this.pinParticipant, required this.plugins, required this.polls, required this.showParticipantList, required this.waitingRoomType, this.isRecorder = false, this.recorderType = DeletePresetsPresetIdResponseDataPermissionsRecorderType.none, });

factory DeletePresetsPresetIdResponseDataPermissions.fromJson(Map<String, dynamic> json) { return DeletePresetsPresetIdResponseDataPermissions(
  acceptWaitingRequests: json['accept_waiting_requests'] as bool,
  canAcceptProductionRequests: json['can_accept_production_requests'] as bool,
  canChangeParticipantPermissions: json['can_change_participant_permissions'] as bool,
  canEditDisplayName: json['can_edit_display_name'] as bool,
  canLivestream: json['can_livestream'] as bool,
  canRecord: json['can_record'] as bool,
  canSpotlight: json['can_spotlight'] as bool,
  chat: DeletePresetsPresetIdResponseDataPermissionsChat.fromJson(json['chat'] as Map<String, dynamic>),
  connectedMeetings: DeletePresetsPresetIdResponseDataPermissionsConnectedMeetings.fromJson(json['connected_meetings'] as Map<String, dynamic>),
  disableParticipantAudio: json['disable_participant_audio'] as bool,
  disableParticipantScreensharing: json['disable_participant_screensharing'] as bool,
  disableParticipantVideo: json['disable_participant_video'] as bool,
  hiddenParticipant: json['hidden_participant'] as bool,
  isRecorder: json.containsKey('is_recorder') ? json['is_recorder'] as bool : false,
  kickParticipant: json['kick_participant'] as bool,
  media: DeletePresetsPresetIdResponseDataPermissionsMedia.fromJson(json['media'] as Map<String, dynamic>),
  pinParticipant: json['pin_participant'] as bool,
  plugins: DeletePresetsPresetIdResponseDataPermissionsPlugins.fromJson(json['plugins'] as Map<String, dynamic>),
  polls: DeletePresetsPresetIdResponseDataPermissionsPolls.fromJson(json['polls'] as Map<String, dynamic>),
  recorderType: DeletePresetsPresetIdResponseDataPermissionsRecorderType.fromJson(json['recorder_type'] as String),
  showParticipantList: json['show_participant_list'] as bool,
  waitingRoomType: DeletePresetsPresetIdResponseDataPermissionsWaitingRoomType.fromJson(json['waiting_room_type'] as String),
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
final DeletePresetsPresetIdResponseDataPermissionsChat chat;

final DeletePresetsPresetIdResponseDataPermissionsConnectedMeetings connectedMeetings;

final bool disableParticipantAudio;

final bool disableParticipantScreensharing;

final bool disableParticipantVideo;

/// Whether this participant is visible to others or not
final bool hiddenParticipant;

final bool isRecorder;

final bool kickParticipant;

/// Media permissions
final DeletePresetsPresetIdResponseDataPermissionsMedia media;

final bool pinParticipant;

/// Plugin permissions
final DeletePresetsPresetIdResponseDataPermissionsPlugins plugins;

/// Poll permissions
final DeletePresetsPresetIdResponseDataPermissionsPolls polls;

/// Type of the recording peer
final DeletePresetsPresetIdResponseDataPermissionsRecorderType recorderType;

final bool showParticipantList;

/// Waiting room type
final DeletePresetsPresetIdResponseDataPermissionsWaitingRoomType waitingRoomType;

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
DeletePresetsPresetIdResponseDataPermissions copyWith({bool? acceptWaitingRequests, bool? canAcceptProductionRequests, bool? canChangeParticipantPermissions, bool? canEditDisplayName, bool? canLivestream, bool? canRecord, bool? canSpotlight, DeletePresetsPresetIdResponseDataPermissionsChat? chat, DeletePresetsPresetIdResponseDataPermissionsConnectedMeetings? connectedMeetings, bool? disableParticipantAudio, bool? disableParticipantScreensharing, bool? disableParticipantVideo, bool? hiddenParticipant, bool Function()? isRecorder, bool? kickParticipant, DeletePresetsPresetIdResponseDataPermissionsMedia? media, bool? pinParticipant, DeletePresetsPresetIdResponseDataPermissionsPlugins? plugins, DeletePresetsPresetIdResponseDataPermissionsPolls? polls, DeletePresetsPresetIdResponseDataPermissionsRecorderType? recorderType, bool? showParticipantList, DeletePresetsPresetIdResponseDataPermissionsWaitingRoomType? waitingRoomType, }) { return DeletePresetsPresetIdResponseDataPermissions(
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
      other is DeletePresetsPresetIdResponseDataPermissions &&
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
@override String toString() { return 'DeletePresetsPresetIdResponseDataPermissions(acceptWaitingRequests: $acceptWaitingRequests, canAcceptProductionRequests: $canAcceptProductionRequests, canChangeParticipantPermissions: $canChangeParticipantPermissions, canEditDisplayName: $canEditDisplayName, canLivestream: $canLivestream, canRecord: $canRecord, canSpotlight: $canSpotlight, chat: $chat, connectedMeetings: $connectedMeetings, disableParticipantAudio: $disableParticipantAudio, disableParticipantScreensharing: $disableParticipantScreensharing, disableParticipantVideo: $disableParticipantVideo, hiddenParticipant: $hiddenParticipant, isRecorder: $isRecorder, kickParticipant: $kickParticipant, media: $media, pinParticipant: $pinParticipant, plugins: $plugins, polls: $polls, recorderType: $recorderType, showParticipantList: $showParticipantList, waitingRoomType: $waitingRoomType)'; } 
 }
