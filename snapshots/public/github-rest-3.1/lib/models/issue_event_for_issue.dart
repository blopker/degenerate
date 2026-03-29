// GENERATED CODE - DO NOT MODIFY BY HAND

import 'added_to_project_issue_event.dart';import 'assigned_issue_event.dart';import 'converted_note_to_issue_issue_event.dart';import 'demilestoned_issue_event.dart';import 'labeled_issue_event.dart';import 'locked_issue_event.dart';import 'milestoned_issue_event.dart';import 'moved_column_in_project_issue_event.dart';import 'removed_from_project_issue_event.dart';import 'renamed_issue_event.dart';import 'review_dismissed_issue_event.dart';import 'review_request_removed_issue_event.dart';import 'review_requested_issue_event.dart';import 'unassigned_issue_event.dart';import 'unlabeled_issue_event.dart';/// Issue Event for Issue
final class IssueEventForIssue {const IssueEventForIssue({this.labeledIssueEvent, this.unlabeledIssueEvent, this.assignedIssueEvent, this.unassignedIssueEvent, this.milestonedIssueEvent, this.demilestonedIssueEvent, this.renamedIssueEvent, this.reviewRequestedIssueEvent, this.reviewRequestRemovedIssueEvent, this.reviewDismissedIssueEvent, this.lockedIssueEvent, this.addedToProjectIssueEvent, this.movedColumnInProjectIssueEvent, this.removedFromProjectIssueEvent, this.convertedNoteToIssueIssueEvent, });

factory IssueEventForIssue.fromJson(Map<String, dynamic> json) { return IssueEventForIssue(
  labeledIssueEvent: LabeledIssueEvent.canParse(json) ? LabeledIssueEvent.fromJson(json) : null,
  unlabeledIssueEvent: UnlabeledIssueEvent.canParse(json) ? UnlabeledIssueEvent.fromJson(json) : null,
  assignedIssueEvent: AssignedIssueEvent.canParse(json) ? AssignedIssueEvent.fromJson(json) : null,
  unassignedIssueEvent: UnassignedIssueEvent.canParse(json) ? UnassignedIssueEvent.fromJson(json) : null,
  milestonedIssueEvent: MilestonedIssueEvent.canParse(json) ? MilestonedIssueEvent.fromJson(json) : null,
  demilestonedIssueEvent: DemilestonedIssueEvent.canParse(json) ? DemilestonedIssueEvent.fromJson(json) : null,
  renamedIssueEvent: RenamedIssueEvent.canParse(json) ? RenamedIssueEvent.fromJson(json) : null,
  reviewRequestedIssueEvent: ReviewRequestedIssueEvent.canParse(json) ? ReviewRequestedIssueEvent.fromJson(json) : null,
  reviewRequestRemovedIssueEvent: ReviewRequestRemovedIssueEvent.canParse(json) ? ReviewRequestRemovedIssueEvent.fromJson(json) : null,
  reviewDismissedIssueEvent: ReviewDismissedIssueEvent.canParse(json) ? ReviewDismissedIssueEvent.fromJson(json) : null,
  lockedIssueEvent: LockedIssueEvent.canParse(json) ? LockedIssueEvent.fromJson(json) : null,
  addedToProjectIssueEvent: AddedToProjectIssueEvent.canParse(json) ? AddedToProjectIssueEvent.fromJson(json) : null,
  movedColumnInProjectIssueEvent: MovedColumnInProjectIssueEvent.canParse(json) ? MovedColumnInProjectIssueEvent.fromJson(json) : null,
  removedFromProjectIssueEvent: RemovedFromProjectIssueEvent.canParse(json) ? RemovedFromProjectIssueEvent.fromJson(json) : null,
  convertedNoteToIssueIssueEvent: ConvertedNoteToIssueIssueEvent.canParse(json) ? ConvertedNoteToIssueIssueEvent.fromJson(json) : null,
); }

final LabeledIssueEvent? labeledIssueEvent;

final UnlabeledIssueEvent? unlabeledIssueEvent;

final AssignedIssueEvent? assignedIssueEvent;

final UnassignedIssueEvent? unassignedIssueEvent;

final MilestonedIssueEvent? milestonedIssueEvent;

final DemilestonedIssueEvent? demilestonedIssueEvent;

final RenamedIssueEvent? renamedIssueEvent;

final ReviewRequestedIssueEvent? reviewRequestedIssueEvent;

final ReviewRequestRemovedIssueEvent? reviewRequestRemovedIssueEvent;

final ReviewDismissedIssueEvent? reviewDismissedIssueEvent;

final LockedIssueEvent? lockedIssueEvent;

final AddedToProjectIssueEvent? addedToProjectIssueEvent;

final MovedColumnInProjectIssueEvent? movedColumnInProjectIssueEvent;

final RemovedFromProjectIssueEvent? removedFromProjectIssueEvent;

final ConvertedNoteToIssueIssueEvent? convertedNoteToIssueIssueEvent;

/// At least one variant must be present.
bool get isValid { return labeledIssueEvent != null || unlabeledIssueEvent != null || assignedIssueEvent != null || unassignedIssueEvent != null || milestonedIssueEvent != null || demilestonedIssueEvent != null || renamedIssueEvent != null || reviewRequestedIssueEvent != null || reviewRequestRemovedIssueEvent != null || reviewDismissedIssueEvent != null || lockedIssueEvent != null || addedToProjectIssueEvent != null || movedColumnInProjectIssueEvent != null || removedFromProjectIssueEvent != null || convertedNoteToIssueIssueEvent != null; } 
Map<String, dynamic> toJson() { return {
  ...?labeledIssueEvent?.toJson(),
  ...?unlabeledIssueEvent?.toJson(),
  ...?assignedIssueEvent?.toJson(),
  ...?unassignedIssueEvent?.toJson(),
  ...?milestonedIssueEvent?.toJson(),
  ...?demilestonedIssueEvent?.toJson(),
  ...?renamedIssueEvent?.toJson(),
  ...?reviewRequestedIssueEvent?.toJson(),
  ...?reviewRequestRemovedIssueEvent?.toJson(),
  ...?reviewDismissedIssueEvent?.toJson(),
  ...?lockedIssueEvent?.toJson(),
  ...?addedToProjectIssueEvent?.toJson(),
  ...?movedColumnInProjectIssueEvent?.toJson(),
  ...?removedFromProjectIssueEvent?.toJson(),
  ...?convertedNoteToIssueIssueEvent?.toJson(),
}; } 
 }
