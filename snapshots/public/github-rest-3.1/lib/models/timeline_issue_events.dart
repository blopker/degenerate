// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'added_to_project_issue_event.dart';import 'converted_note_to_issue_issue_event.dart';import 'demilestoned_issue_event.dart';import 'labeled_issue_event.dart';import 'locked_issue_event.dart';import 'milestoned_issue_event.dart';import 'moved_column_in_project_issue_event.dart';import 'removed_from_project_issue_event.dart';import 'renamed_issue_event.dart';import 'review_dismissed_issue_event.dart';import 'review_request_removed_issue_event.dart';import 'review_requested_issue_event.dart';import 'state_change_issue_event.dart';import 'timeline_assigned_issue_event.dart';import 'timeline_comment_event.dart';import 'timeline_commit_commented_event.dart';import 'timeline_committed_event.dart';import 'timeline_cross_referenced_event.dart';import 'timeline_line_commented_event.dart';import 'timeline_reviewed_event.dart';import 'timeline_unassigned_issue_event.dart';import 'unlabeled_issue_event.dart';/// Timeline Event
@immutable
final class TimelineIssueEvents {
  const TimelineIssueEvents({this.labeledIssueEvent = const Omittable.absent(),
this.unlabeledIssueEvent = const Omittable.absent(),
this.milestonedIssueEvent = const Omittable.absent(),
this.demilestonedIssueEvent = const Omittable.absent(),
this.renamedIssueEvent = const Omittable.absent(),
this.reviewRequestedIssueEvent = const Omittable.absent(),
this.reviewRequestRemovedIssueEvent = const Omittable.absent(),
this.reviewDismissedIssueEvent = const Omittable.absent(),
this.lockedIssueEvent = const Omittable.absent(),
this.addedToProjectIssueEvent = const Omittable.absent(),
this.movedColumnInProjectIssueEvent = const Omittable.absent(),
this.removedFromProjectIssueEvent = const Omittable.absent(),
this.convertedNoteToIssueIssueEvent = const Omittable.absent(),
this.timelineCommentEvent = const Omittable.absent(),
this.timelineCrossReferencedEvent = const Omittable.absent(),
this.timelineCommittedEvent = const Omittable.absent(),
this.timelineReviewedEvent = const Omittable.absent(),
this.timelineLineCommentedEvent = const Omittable.absent(),
this.timelineCommitCommentedEvent = const Omittable.absent(),
this.timelineAssignedIssueEvent = const Omittable.absent(),
this.timelineUnassignedIssueEvent = const Omittable.absent(),
this.stateChangeIssueEvent = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const TimelineIssueEvents._({required this.rawValue, required this.labeledIssueEvent,
required this.unlabeledIssueEvent,
required this.milestonedIssueEvent,
required this.demilestonedIssueEvent,
required this.renamedIssueEvent,
required this.reviewRequestedIssueEvent,
required this.reviewRequestRemovedIssueEvent,
required this.reviewDismissedIssueEvent,
required this.lockedIssueEvent,
required this.addedToProjectIssueEvent,
required this.movedColumnInProjectIssueEvent,
required this.removedFromProjectIssueEvent,
required this.convertedNoteToIssueIssueEvent,
required this.timelineCommentEvent,
required this.timelineCrossReferencedEvent,
required this.timelineCommittedEvent,
required this.timelineReviewedEvent,
required this.timelineLineCommentedEvent,
required this.timelineCommitCommentedEvent,
required this.timelineAssignedIssueEvent,
required this.timelineUnassignedIssueEvent,
required this.stateChangeIssueEvent,});
  factory TimelineIssueEvents.fromJson(Object? json) => TimelineIssueEvents._(
    rawValue: Omittable(json),
    labeledIssueEvent: parseAnyOfVariant<LabeledIssueEvent>(json, (value) => LabeledIssueEvent.fromJson(value! as Map<String, dynamic>)),
unlabeledIssueEvent: parseAnyOfVariant<UnlabeledIssueEvent>(json, (value) => UnlabeledIssueEvent.fromJson(value! as Map<String, dynamic>)),
milestonedIssueEvent: parseAnyOfVariant<MilestonedIssueEvent>(json, (value) => MilestonedIssueEvent.fromJson(value! as Map<String, dynamic>)),
demilestonedIssueEvent: parseAnyOfVariant<DemilestonedIssueEvent>(json, (value) => DemilestonedIssueEvent.fromJson(value! as Map<String, dynamic>)),
renamedIssueEvent: parseAnyOfVariant<RenamedIssueEvent>(json, (value) => RenamedIssueEvent.fromJson(value! as Map<String, dynamic>)),
reviewRequestedIssueEvent: parseAnyOfVariant<ReviewRequestedIssueEvent>(json, (value) => ReviewRequestedIssueEvent.fromJson(value! as Map<String, dynamic>)),
reviewRequestRemovedIssueEvent: parseAnyOfVariant<ReviewRequestRemovedIssueEvent>(json, (value) => ReviewRequestRemovedIssueEvent.fromJson(value! as Map<String, dynamic>)),
reviewDismissedIssueEvent: parseAnyOfVariant<ReviewDismissedIssueEvent>(json, (value) => ReviewDismissedIssueEvent.fromJson(value! as Map<String, dynamic>)),
lockedIssueEvent: parseAnyOfVariant<LockedIssueEvent>(json, (value) => LockedIssueEvent.fromJson(value! as Map<String, dynamic>)),
addedToProjectIssueEvent: parseAnyOfVariant<AddedToProjectIssueEvent>(json, (value) => AddedToProjectIssueEvent.fromJson(value! as Map<String, dynamic>)),
movedColumnInProjectIssueEvent: parseAnyOfVariant<MovedColumnInProjectIssueEvent>(json, (value) => MovedColumnInProjectIssueEvent.fromJson(value! as Map<String, dynamic>)),
removedFromProjectIssueEvent: parseAnyOfVariant<RemovedFromProjectIssueEvent>(json, (value) => RemovedFromProjectIssueEvent.fromJson(value! as Map<String, dynamic>)),
convertedNoteToIssueIssueEvent: parseAnyOfVariant<ConvertedNoteToIssueIssueEvent>(json, (value) => ConvertedNoteToIssueIssueEvent.fromJson(value! as Map<String, dynamic>)),
timelineCommentEvent: parseAnyOfVariant<TimelineCommentEvent>(json, (value) => TimelineCommentEvent.fromJson(value! as Map<String, dynamic>)),
timelineCrossReferencedEvent: parseAnyOfVariant<TimelineCrossReferencedEvent>(json, (value) => TimelineCrossReferencedEvent.fromJson(value! as Map<String, dynamic>)),
timelineCommittedEvent: parseAnyOfVariant<TimelineCommittedEvent>(json, (value) => TimelineCommittedEvent.fromJson(value! as Map<String, dynamic>)),
timelineReviewedEvent: parseAnyOfVariant<TimelineReviewedEvent>(json, (value) => TimelineReviewedEvent.fromJson(value! as Map<String, dynamic>)),
timelineLineCommentedEvent: parseAnyOfVariant<TimelineLineCommentedEvent>(json, (value) => TimelineLineCommentedEvent.fromJson(value! as Map<String, dynamic>)),
timelineCommitCommentedEvent: parseAnyOfVariant<TimelineCommitCommentedEvent>(json, (value) => TimelineCommitCommentedEvent.fromJson(value! as Map<String, dynamic>)),
timelineAssignedIssueEvent: parseAnyOfVariant<TimelineAssignedIssueEvent>(json, (value) => TimelineAssignedIssueEvent.fromJson(value! as Map<String, dynamic>)),
timelineUnassignedIssueEvent: parseAnyOfVariant<TimelineUnassignedIssueEvent>(json, (value) => TimelineUnassignedIssueEvent.fromJson(value! as Map<String, dynamic>)),
stateChangeIssueEvent: parseAnyOfVariant<StateChangeIssueEvent>(json, (value) => StateChangeIssueEvent.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<LabeledIssueEvent> labeledIssueEvent;
final Omittable<UnlabeledIssueEvent> unlabeledIssueEvent;
final Omittable<MilestonedIssueEvent> milestonedIssueEvent;
final Omittable<DemilestonedIssueEvent> demilestonedIssueEvent;
final Omittable<RenamedIssueEvent> renamedIssueEvent;
final Omittable<ReviewRequestedIssueEvent> reviewRequestedIssueEvent;
final Omittable<ReviewRequestRemovedIssueEvent> reviewRequestRemovedIssueEvent;
final Omittable<ReviewDismissedIssueEvent> reviewDismissedIssueEvent;
final Omittable<LockedIssueEvent> lockedIssueEvent;
final Omittable<AddedToProjectIssueEvent> addedToProjectIssueEvent;
final Omittable<MovedColumnInProjectIssueEvent> movedColumnInProjectIssueEvent;
final Omittable<RemovedFromProjectIssueEvent> removedFromProjectIssueEvent;
final Omittable<ConvertedNoteToIssueIssueEvent> convertedNoteToIssueIssueEvent;
final Omittable<TimelineCommentEvent> timelineCommentEvent;
final Omittable<TimelineCrossReferencedEvent> timelineCrossReferencedEvent;
final Omittable<TimelineCommittedEvent> timelineCommittedEvent;
final Omittable<TimelineReviewedEvent> timelineReviewedEvent;
final Omittable<TimelineLineCommentedEvent> timelineLineCommentedEvent;
final Omittable<TimelineCommitCommentedEvent> timelineCommitCommentedEvent;
final Omittable<TimelineAssignedIssueEvent> timelineAssignedIssueEvent;
final Omittable<TimelineUnassignedIssueEvent> timelineUnassignedIssueEvent;
final Omittable<StateChangeIssueEvent> stateChangeIssueEvent;

  /// Whether at least one known variant matched.
  bool get isValid => labeledIssueEvent.isPresent || unlabeledIssueEvent.isPresent || milestonedIssueEvent.isPresent || demilestonedIssueEvent.isPresent || renamedIssueEvent.isPresent || reviewRequestedIssueEvent.isPresent || reviewRequestRemovedIssueEvent.isPresent || reviewDismissedIssueEvent.isPresent || lockedIssueEvent.isPresent || addedToProjectIssueEvent.isPresent || movedColumnInProjectIssueEvent.isPresent || removedFromProjectIssueEvent.isPresent || convertedNoteToIssueIssueEvent.isPresent || timelineCommentEvent.isPresent || timelineCrossReferencedEvent.isPresent || timelineCommittedEvent.isPresent || timelineReviewedEvent.isPresent || timelineLineCommentedEvent.isPresent || timelineCommitCommentedEvent.isPresent || timelineAssignedIssueEvent.isPresent || timelineUnassignedIssueEvent.isPresent || stateChangeIssueEvent.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (labeledIssueEvent.isPresent) labeledIssueEvent.value?.toJson(),
if (unlabeledIssueEvent.isPresent) unlabeledIssueEvent.value?.toJson(),
if (milestonedIssueEvent.isPresent) milestonedIssueEvent.value?.toJson(),
if (demilestonedIssueEvent.isPresent) demilestonedIssueEvent.value?.toJson(),
if (renamedIssueEvent.isPresent) renamedIssueEvent.value?.toJson(),
if (reviewRequestedIssueEvent.isPresent) reviewRequestedIssueEvent.value?.toJson(),
if (reviewRequestRemovedIssueEvent.isPresent) reviewRequestRemovedIssueEvent.value?.toJson(),
if (reviewDismissedIssueEvent.isPresent) reviewDismissedIssueEvent.value?.toJson(),
if (lockedIssueEvent.isPresent) lockedIssueEvent.value?.toJson(),
if (addedToProjectIssueEvent.isPresent) addedToProjectIssueEvent.value?.toJson(),
if (movedColumnInProjectIssueEvent.isPresent) movedColumnInProjectIssueEvent.value?.toJson(),
if (removedFromProjectIssueEvent.isPresent) removedFromProjectIssueEvent.value?.toJson(),
if (convertedNoteToIssueIssueEvent.isPresent) convertedNoteToIssueIssueEvent.value?.toJson(),
if (timelineCommentEvent.isPresent) timelineCommentEvent.value?.toJson(),
if (timelineCrossReferencedEvent.isPresent) timelineCrossReferencedEvent.value?.toJson(),
if (timelineCommittedEvent.isPresent) timelineCommittedEvent.value?.toJson(),
if (timelineReviewedEvent.isPresent) timelineReviewedEvent.value?.toJson(),
if (timelineLineCommentedEvent.isPresent) timelineLineCommentedEvent.value?.toJson(),
if (timelineCommitCommentedEvent.isPresent) timelineCommitCommentedEvent.value?.toJson(),
if (timelineAssignedIssueEvent.isPresent) timelineAssignedIssueEvent.value?.toJson(),
if (timelineUnassignedIssueEvent.isPresent) timelineUnassignedIssueEvent.value?.toJson(),
if (stateChangeIssueEvent.isPresent) stateChangeIssueEvent.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is TimelineIssueEvents && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'TimelineIssueEvents(${toJson()})';
}
