// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'waitingroom_event_custom_page_html.dart';import 'waitingroom_event_description.dart';import 'waitingroom_event_disable_session_renewal.dart';import 'waitingroom_event_end_time.dart';import 'waitingroom_event_id.dart';import 'waitingroom_event_name.dart';import 'waitingroom_event_new_users_per_minute.dart';import 'waitingroom_event_prequeue_start_time.dart';import 'waitingroom_event_queueing_method.dart';import 'waitingroom_event_session_duration.dart';import 'waitingroom_event_shuffle_at_event_start.dart';import 'waitingroom_event_start_time.dart';import 'waitingroom_event_suspended.dart';import 'waitingroom_event_total_active_users.dart';import 'waitingroom_event_turnstile_action.dart';import 'waitingroom_event_turnstile_mode.dart';import 'waitingroom_timestamp.dart';@immutable final class WaitingroomEventResult {const WaitingroomEventResult({this.createdOn, this.customPageHtml = const Omittable.absent(), this.description, this.disableSessionRenewal = const Omittable.absent(), this.eventEndTime, this.eventStartTime, this.id, this.modifiedOn, this.name, this.newUsersPerMinute = const Omittable.absent(), this.prequeueStartTime = const Omittable.absent(), this.queueingMethod = const Omittable.absent(), this.sessionDuration = const Omittable.absent(), this.shuffleAtEventStart, this.suspended, this.totalActiveUsers = const Omittable.absent(), this.turnstileAction = const Omittable.absent(), this.turnstileMode = const Omittable.absent(), });

factory WaitingroomEventResult.fromJson(Map<String, dynamic> json) { return WaitingroomEventResult(
  createdOn: json['created_on'] != null ? WaitingroomTimestamp.fromJson(json['created_on'] as String) : null,
  customPageHtml: json.containsKey('custom_page_html') ? Omittable(json['custom_page_html'] != null ? WaitingroomEventCustomPageHtml.fromJson(json['custom_page_html'] as String) : null) : const Omittable.absent(),
  description: json['description'] != null ? WaitingroomEventDescription.fromJson(json['description'] as String) : null,
  disableSessionRenewal: json.containsKey('disable_session_renewal') ? Omittable(json['disable_session_renewal'] != null ? WaitingroomEventDisableSessionRenewal.fromJson(json['disable_session_renewal'] as bool) : null) : const Omittable.absent(),
  eventEndTime: json['event_end_time'] != null ? WaitingroomEventEndTime.fromJson(json['event_end_time'] as String) : null,
  eventStartTime: json['event_start_time'] != null ? WaitingroomEventStartTime.fromJson(json['event_start_time'] as String) : null,
  id: json['id'] != null ? WaitingroomEventId.fromJson(json['id'] as String) : null,
  modifiedOn: json['modified_on'] != null ? WaitingroomTimestamp.fromJson(json['modified_on'] as String) : null,
  name: json['name'] != null ? WaitingroomEventName.fromJson(json['name'] as String) : null,
  newUsersPerMinute: json.containsKey('new_users_per_minute') ? Omittable(json['new_users_per_minute'] != null ? WaitingroomEventNewUsersPerMinute.fromJson(json['new_users_per_minute'] as num) : null) : const Omittable.absent(),
  prequeueStartTime: json.containsKey('prequeue_start_time') ? Omittable(json['prequeue_start_time'] != null ? WaitingroomEventPrequeueStartTime.fromJson(json['prequeue_start_time'] as String) : null) : const Omittable.absent(),
  queueingMethod: json.containsKey('queueing_method') ? Omittable(json['queueing_method'] != null ? WaitingroomEventQueueingMethod.fromJson(json['queueing_method'] as String) : null) : const Omittable.absent(),
  sessionDuration: json.containsKey('session_duration') ? Omittable(json['session_duration'] != null ? WaitingroomEventSessionDuration.fromJson(json['session_duration'] as num) : null) : const Omittable.absent(),
  shuffleAtEventStart: json['shuffle_at_event_start'] != null ? WaitingroomEventShuffleAtEventStart.fromJson(json['shuffle_at_event_start'] as bool) : null,
  suspended: json['suspended'] != null ? WaitingroomEventSuspended.fromJson(json['suspended'] as bool) : null,
  totalActiveUsers: json.containsKey('total_active_users') ? Omittable(json['total_active_users'] != null ? WaitingroomEventTotalActiveUsers.fromJson(json['total_active_users'] as num) : null) : const Omittable.absent(),
  turnstileAction: json.containsKey('turnstile_action') ? Omittable(json['turnstile_action'] != null ? WaitingroomEventTurnstileAction.fromJson(json['turnstile_action'] as String) : null) : const Omittable.absent(),
  turnstileMode: json.containsKey('turnstile_mode') ? Omittable(json['turnstile_mode'] != null ? WaitingroomEventTurnstileMode.fromJson(json['turnstile_mode'] as String) : null) : const Omittable.absent(),
); }

final WaitingroomTimestamp? createdOn;

/// If set, the event will override the waiting room's `custom_page_html` property while it is active. If null, the event will inherit it.
final Omittable<WaitingroomEventCustomPageHtml?> customPageHtml;

/// A note that you can use to add more details about the event.
final WaitingroomEventDescription? description;

/// If set, the event will override the waiting room's `disable_session_renewal` property while it is active. If null, the event will inherit it.
final Omittable<WaitingroomEventDisableSessionRenewal?> disableSessionRenewal;

/// An ISO 8601 timestamp that marks the end of the event.
final WaitingroomEventEndTime? eventEndTime;

final WaitingroomEventStartTime? eventStartTime;

final WaitingroomEventId? id;

final WaitingroomTimestamp? modifiedOn;

/// A unique name to identify the event. Only alphanumeric characters, hyphens and underscores are allowed.
final WaitingroomEventName? name;

/// If set, the event will override the waiting room's `new_users_per_minute` property while it is active. If null, the event will inherit it. This can only be set if the event's `total_active_users` property is also set.
final Omittable<WaitingroomEventNewUsersPerMinute?> newUsersPerMinute;

/// An ISO 8601 timestamp that marks when to begin queueing all users before the event starts. The prequeue must start at least five minutes before `event_start_time`.
final Omittable<WaitingroomEventPrequeueStartTime?> prequeueStartTime;

/// If set, the event will override the waiting room's `queueing_method` property while it is active. If null, the event will inherit it.
final Omittable<WaitingroomEventQueueingMethod?> queueingMethod;

final Omittable<WaitingroomEventSessionDuration?> sessionDuration;

final WaitingroomEventShuffleAtEventStart? shuffleAtEventStart;

final WaitingroomEventSuspended? suspended;

final Omittable<WaitingroomEventTotalActiveUsers?> totalActiveUsers;

final Omittable<WaitingroomEventTurnstileAction?> turnstileAction;

final Omittable<WaitingroomEventTurnstileMode?> turnstileMode;

Map<String, dynamic> toJson() { return {
  if (createdOn != null) 'created_on': createdOn?.toJson(),
  if (customPageHtml.isPresent) 'custom_page_html': customPageHtml.value?.toJson(),
  if (description != null) 'description': description?.toJson(),
  if (disableSessionRenewal.isPresent) 'disable_session_renewal': disableSessionRenewal.value?.toJson(),
  if (eventEndTime != null) 'event_end_time': eventEndTime?.toJson(),
  if (eventStartTime != null) 'event_start_time': eventStartTime?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (modifiedOn != null) 'modified_on': modifiedOn?.toJson(),
  if (name != null) 'name': name?.toJson(),
  if (newUsersPerMinute.isPresent) 'new_users_per_minute': newUsersPerMinute.value?.toJson(),
  if (prequeueStartTime.isPresent) 'prequeue_start_time': prequeueStartTime.value?.toJson(),
  if (queueingMethod.isPresent) 'queueing_method': queueingMethod.value?.toJson(),
  if (sessionDuration.isPresent) 'session_duration': sessionDuration.value?.toJson(),
  if (shuffleAtEventStart != null) 'shuffle_at_event_start': shuffleAtEventStart?.toJson(),
  if (suspended != null) 'suspended': suspended?.toJson(),
  if (totalActiveUsers.isPresent) 'total_active_users': totalActiveUsers.value?.toJson(),
  if (turnstileAction.isPresent) 'turnstile_action': turnstileAction.value?.toJson(),
  if (turnstileMode.isPresent) 'turnstile_mode': turnstileMode.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'created_on', 'custom_page_html', 'description', 'disable_session_renewal', 'event_end_time', 'event_start_time', 'id', 'modified_on', 'name', 'new_users_per_minute', 'prequeue_start_time', 'queueing_method', 'session_duration', 'shuffle_at_event_start', 'suspended', 'total_active_users', 'turnstile_action', 'turnstile_mode'}.contains(key)); } 
WaitingroomEventResult copyWith({WaitingroomTimestamp? Function()? createdOn, Omittable<WaitingroomEventCustomPageHtml?>? customPageHtml, WaitingroomEventDescription? Function()? description, Omittable<WaitingroomEventDisableSessionRenewal?>? disableSessionRenewal, WaitingroomEventEndTime? Function()? eventEndTime, WaitingroomEventStartTime? Function()? eventStartTime, WaitingroomEventId? Function()? id, WaitingroomTimestamp? Function()? modifiedOn, WaitingroomEventName? Function()? name, Omittable<WaitingroomEventNewUsersPerMinute?>? newUsersPerMinute, Omittable<WaitingroomEventPrequeueStartTime?>? prequeueStartTime, Omittable<WaitingroomEventQueueingMethod?>? queueingMethod, Omittable<WaitingroomEventSessionDuration?>? sessionDuration, WaitingroomEventShuffleAtEventStart? Function()? shuffleAtEventStart, WaitingroomEventSuspended? Function()? suspended, Omittable<WaitingroomEventTotalActiveUsers?>? totalActiveUsers, Omittable<WaitingroomEventTurnstileAction?>? turnstileAction, Omittable<WaitingroomEventTurnstileMode?>? turnstileMode, }) { return WaitingroomEventResult(
  createdOn: createdOn != null ? createdOn() : this.createdOn,
  customPageHtml: customPageHtml ?? this.customPageHtml,
  description: description != null ? description() : this.description,
  disableSessionRenewal: disableSessionRenewal ?? this.disableSessionRenewal,
  eventEndTime: eventEndTime != null ? eventEndTime() : this.eventEndTime,
  eventStartTime: eventStartTime != null ? eventStartTime() : this.eventStartTime,
  id: id != null ? id() : this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  name: name != null ? name() : this.name,
  newUsersPerMinute: newUsersPerMinute ?? this.newUsersPerMinute,
  prequeueStartTime: prequeueStartTime ?? this.prequeueStartTime,
  queueingMethod: queueingMethod ?? this.queueingMethod,
  sessionDuration: sessionDuration ?? this.sessionDuration,
  shuffleAtEventStart: shuffleAtEventStart != null ? shuffleAtEventStart() : this.shuffleAtEventStart,
  suspended: suspended != null ? suspended() : this.suspended,
  totalActiveUsers: totalActiveUsers ?? this.totalActiveUsers,
  turnstileAction: turnstileAction ?? this.turnstileAction,
  turnstileMode: turnstileMode ?? this.turnstileMode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WaitingroomEventResult &&
          createdOn == other.createdOn &&
          customPageHtml == other.customPageHtml &&
          description == other.description &&
          disableSessionRenewal == other.disableSessionRenewal &&
          eventEndTime == other.eventEndTime &&
          eventStartTime == other.eventStartTime &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          name == other.name &&
          newUsersPerMinute == other.newUsersPerMinute &&
          prequeueStartTime == other.prequeueStartTime &&
          queueingMethod == other.queueingMethod &&
          sessionDuration == other.sessionDuration &&
          shuffleAtEventStart == other.shuffleAtEventStart &&
          suspended == other.suspended &&
          totalActiveUsers == other.totalActiveUsers &&
          turnstileAction == other.turnstileAction &&
          turnstileMode == other.turnstileMode; } 
@override int get hashCode { return Object.hash(createdOn, customPageHtml, description, disableSessionRenewal, eventEndTime, eventStartTime, id, modifiedOn, name, newUsersPerMinute, prequeueStartTime, queueingMethod, sessionDuration, shuffleAtEventStart, suspended, totalActiveUsers, turnstileAction, turnstileMode); } 
@override String toString() { return 'WaitingroomEventResult(createdOn: $createdOn, customPageHtml: $customPageHtml, description: $description, disableSessionRenewal: $disableSessionRenewal, eventEndTime: $eventEndTime, eventStartTime: $eventStartTime, id: $id, modifiedOn: $modifiedOn, name: $name, newUsersPerMinute: $newUsersPerMinute, prequeueStartTime: $prequeueStartTime, queueingMethod: $queueingMethod, sessionDuration: $sessionDuration, shuffleAtEventStart: $shuffleAtEventStart, suspended: $suspended, totalActiveUsers: $totalActiveUsers, turnstileAction: $turnstileAction, turnstileMode: $turnstileMode)'; } 
 }
