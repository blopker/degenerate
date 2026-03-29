// GENERATED CODE - DO NOT MODIFY BY HAND

import 'waitingroom_event_custom_page_html.dart';import 'waitingroom_event_description.dart';import 'waitingroom_event_disable_session_renewal.dart';import 'waitingroom_event_end_time.dart';import 'waitingroom_event_name.dart';import 'waitingroom_event_new_users_per_minute.dart';import 'waitingroom_event_prequeue_start_time.dart';import 'waitingroom_event_queueing_method.dart';import 'waitingroom_event_session_duration.dart';import 'waitingroom_event_shuffle_at_event_start.dart';import 'waitingroom_event_start_time.dart';import 'waitingroom_event_suspended.dart';import 'waitingroom_event_total_active_users.dart';import 'waitingroom_event_turnstile_action.dart';import 'waitingroom_event_turnstile_mode.dart';final class WaitingroomQueryEvent {const WaitingroomQueryEvent({this.customPageHtml, this.description, this.disableSessionRenewal, required this.eventEndTime, required this.eventStartTime, required this.name, this.newUsersPerMinute, this.prequeueStartTime, this.queueingMethod, this.sessionDuration, this.shuffleAtEventStart, this.suspended, this.totalActiveUsers, this.turnstileAction, this.turnstileMode, });

factory WaitingroomQueryEvent.fromJson(Map<String, dynamic> json) { return WaitingroomQueryEvent(
  customPageHtml: json['custom_page_html'] != null ? WaitingroomEventCustomPageHtml.fromJson(json['custom_page_html'] as String) : null,
  description: json['description'] != null ? WaitingroomEventDescription.fromJson(json['description'] as String) : null,
  disableSessionRenewal: json['disable_session_renewal'] != null ? WaitingroomEventDisableSessionRenewal.fromJson(json['disable_session_renewal'] as bool) : null,
  eventEndTime: WaitingroomEventEndTime.fromJson(json['event_end_time'] as String),
  eventStartTime: WaitingroomEventStartTime.fromJson(json['event_start_time'] as String),
  name: WaitingroomEventName.fromJson(json['name'] as String),
  newUsersPerMinute: json['new_users_per_minute'] != null ? WaitingroomEventNewUsersPerMinute.fromJson(json['new_users_per_minute'] as num) : null,
  prequeueStartTime: json['prequeue_start_time'] != null ? WaitingroomEventPrequeueStartTime.fromJson(json['prequeue_start_time'] as String) : null,
  queueingMethod: json['queueing_method'] != null ? WaitingroomEventQueueingMethod.fromJson(json['queueing_method'] as String) : null,
  sessionDuration: json['session_duration'] != null ? WaitingroomEventSessionDuration.fromJson(json['session_duration'] as num) : null,
  shuffleAtEventStart: json['shuffle_at_event_start'] != null ? WaitingroomEventShuffleAtEventStart.fromJson(json['shuffle_at_event_start'] as bool) : null,
  suspended: json['suspended'] != null ? WaitingroomEventSuspended.fromJson(json['suspended'] as bool) : null,
  totalActiveUsers: json['total_active_users'] != null ? WaitingroomEventTotalActiveUsers.fromJson(json['total_active_users'] as num) : null,
  turnstileAction: json['turnstile_action'] != null ? WaitingroomEventTurnstileAction.fromJson(json['turnstile_action'] as String) : null,
  turnstileMode: json['turnstile_mode'] != null ? WaitingroomEventTurnstileMode.fromJson(json['turnstile_mode'] as String) : null,
); }

/// If set, the event will override the waiting room's `custom_page_html` property while it is active. If null, the event will inherit it.
final WaitingroomEventCustomPageHtml? customPageHtml;

/// A note that you can use to add more details about the event.
final WaitingroomEventDescription? description;

/// If set, the event will override the waiting room's `disable_session_renewal` property while it is active. If null, the event will inherit it.
final WaitingroomEventDisableSessionRenewal? disableSessionRenewal;

/// An ISO 8601 timestamp that marks the end of the event.
final WaitingroomEventEndTime eventEndTime;

/// An ISO 8601 timestamp that marks the start of the event. At this time, queued users will be processed with the event's configuration. The start time must be at least one minute before `event_end_time`.
final WaitingroomEventStartTime eventStartTime;

/// A unique name to identify the event. Only alphanumeric characters, hyphens and underscores are allowed.
final WaitingroomEventName name;

/// If set, the event will override the waiting room's `new_users_per_minute` property while it is active. If null, the event will inherit it. This can only be set if the event's `total_active_users` property is also set.
final WaitingroomEventNewUsersPerMinute? newUsersPerMinute;

/// An ISO 8601 timestamp that marks when to begin queueing all users before the event starts. The prequeue must start at least five minutes before `event_start_time`.
final WaitingroomEventPrequeueStartTime? prequeueStartTime;

/// If set, the event will override the waiting room's `queueing_method` property while it is active. If null, the event will inherit it.
final WaitingroomEventQueueingMethod? queueingMethod;

/// If set, the event will override the waiting room's `session_duration` property while it is active. If null, the event will inherit it.
final WaitingroomEventSessionDuration? sessionDuration;

/// If enabled, users in the prequeue will be shuffled randomly at the `event_start_time`. Requires that `prequeue_start_time` is not null. This is useful for situations when many users will join the event prequeue at the same time and you want to shuffle them to ensure fairness. Naturally, it makes the most sense to enable this feature when the `queueing_method` during the event respects ordering such as **fifo**, or else the shuffling may be unnecessary.
final WaitingroomEventShuffleAtEventStart? shuffleAtEventStart;

/// Suspends or allows an event. If set to `true`, the event is ignored and traffic will be handled based on the waiting room configuration.
final WaitingroomEventSuspended? suspended;

/// If set, the event will override the waiting room's `total_active_users` property while it is active. If null, the event will inherit it. This can only be set if the event's `new_users_per_minute` property is also set.
final WaitingroomEventTotalActiveUsers? totalActiveUsers;

/// If set, the event will override the waiting room's `turnstile_action` property while it is active. If null, the event will inherit it.
final WaitingroomEventTurnstileAction? turnstileAction;

/// If set, the event will override the waiting room's `turnstile_mode` property while it is active. If null, the event will inherit it.
final WaitingroomEventTurnstileMode? turnstileMode;

Map<String, dynamic> toJson() { return {
  if (customPageHtml != null) 'custom_page_html': customPageHtml?.toJson(),
  if (description != null) 'description': description?.toJson(),
  if (disableSessionRenewal != null) 'disable_session_renewal': disableSessionRenewal?.toJson(),
  'event_end_time': eventEndTime.toJson(),
  'event_start_time': eventStartTime.toJson(),
  'name': name.toJson(),
  if (newUsersPerMinute != null) 'new_users_per_minute': newUsersPerMinute?.toJson(),
  if (prequeueStartTime != null) 'prequeue_start_time': prequeueStartTime?.toJson(),
  if (queueingMethod != null) 'queueing_method': queueingMethod?.toJson(),
  if (sessionDuration != null) 'session_duration': sessionDuration?.toJson(),
  if (shuffleAtEventStart != null) 'shuffle_at_event_start': shuffleAtEventStart?.toJson(),
  if (suspended != null) 'suspended': suspended?.toJson(),
  if (totalActiveUsers != null) 'total_active_users': totalActiveUsers?.toJson(),
  if (turnstileAction != null) 'turnstile_action': turnstileAction?.toJson(),
  if (turnstileMode != null) 'turnstile_mode': turnstileMode?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('event_end_time') &&
      json.containsKey('event_start_time') &&
      json.containsKey('name'); } 
WaitingroomQueryEvent copyWith({WaitingroomEventCustomPageHtml? Function()? customPageHtml, WaitingroomEventDescription Function()? description, WaitingroomEventDisableSessionRenewal? Function()? disableSessionRenewal, WaitingroomEventEndTime? eventEndTime, WaitingroomEventStartTime? eventStartTime, WaitingroomEventName? name, WaitingroomEventNewUsersPerMinute? Function()? newUsersPerMinute, WaitingroomEventPrequeueStartTime? Function()? prequeueStartTime, WaitingroomEventQueueingMethod? Function()? queueingMethod, WaitingroomEventSessionDuration? Function()? sessionDuration, WaitingroomEventShuffleAtEventStart Function()? shuffleAtEventStart, WaitingroomEventSuspended Function()? suspended, WaitingroomEventTotalActiveUsers? Function()? totalActiveUsers, WaitingroomEventTurnstileAction? Function()? turnstileAction, WaitingroomEventTurnstileMode? Function()? turnstileMode, }) { return WaitingroomQueryEvent(
  customPageHtml: customPageHtml != null ? customPageHtml() : this.customPageHtml,
  description: description != null ? description() : this.description,
  disableSessionRenewal: disableSessionRenewal != null ? disableSessionRenewal() : this.disableSessionRenewal,
  eventEndTime: eventEndTime ?? this.eventEndTime,
  eventStartTime: eventStartTime ?? this.eventStartTime,
  name: name ?? this.name,
  newUsersPerMinute: newUsersPerMinute != null ? newUsersPerMinute() : this.newUsersPerMinute,
  prequeueStartTime: prequeueStartTime != null ? prequeueStartTime() : this.prequeueStartTime,
  queueingMethod: queueingMethod != null ? queueingMethod() : this.queueingMethod,
  sessionDuration: sessionDuration != null ? sessionDuration() : this.sessionDuration,
  shuffleAtEventStart: shuffleAtEventStart != null ? shuffleAtEventStart() : this.shuffleAtEventStart,
  suspended: suspended != null ? suspended() : this.suspended,
  totalActiveUsers: totalActiveUsers != null ? totalActiveUsers() : this.totalActiveUsers,
  turnstileAction: turnstileAction != null ? turnstileAction() : this.turnstileAction,
  turnstileMode: turnstileMode != null ? turnstileMode() : this.turnstileMode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WaitingroomQueryEvent &&
          customPageHtml == other.customPageHtml &&
          description == other.description &&
          disableSessionRenewal == other.disableSessionRenewal &&
          eventEndTime == other.eventEndTime &&
          eventStartTime == other.eventStartTime &&
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
@override int get hashCode { return Object.hash(customPageHtml, description, disableSessionRenewal, eventEndTime, eventStartTime, name, newUsersPerMinute, prequeueStartTime, queueingMethod, sessionDuration, shuffleAtEventStart, suspended, totalActiveUsers, turnstileAction, turnstileMode); } 
@override String toString() { return 'WaitingroomQueryEvent(customPageHtml: $customPageHtml, description: $description, disableSessionRenewal: $disableSessionRenewal, eventEndTime: $eventEndTime, eventStartTime: $eventStartTime, name: $name, newUsersPerMinute: $newUsersPerMinute, prequeueStartTime: $prequeueStartTime, queueingMethod: $queueingMethod, sessionDuration: $sessionDuration, shuffleAtEventStart: $shuffleAtEventStart, suspended: $suspended, totalActiveUsers: $totalActiveUsers, turnstileAction: $turnstileAction, turnstileMode: $turnstileMode)'; } 
 }
