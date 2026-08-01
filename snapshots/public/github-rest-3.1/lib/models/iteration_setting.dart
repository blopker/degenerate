// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// An iteration setting for an iteration field
@immutable final class IterationSetting {const IterationSetting({required this.id, required this.title, this.titleHtml, this.duration = const Omittable.absent(), this.startDate = const Omittable.absent(), this.completed, });

factory IterationSetting.fromJson(Map<String, dynamic> json) { return IterationSetting(
  id: json['id'] as String,
  title: json['title'] as String,
  titleHtml: json['title_html'] as String?,
  duration: json.containsKey('duration') ? Omittable(json['duration'] != null ? (json['duration'] as num).toDouble() : null) : const Omittable.absent(),
  startDate: json.containsKey('start_date') ? Omittable(json['start_date'] as String?) : const Omittable.absent(),
  completed: json['completed'] as bool?,
); }

/// The unique identifier of the iteration setting.
final String id;

/// The iteration title.
final String title;

/// The iteration title, rendered as HTML.
final String? titleHtml;

/// The duration of the iteration in days.
final Omittable<double?> duration;

/// The start date of the iteration.
final Omittable<String?> startDate;

/// Whether the iteration has been completed.
final bool? completed;

Map<String, dynamic> toJson() { return {
  'id': id,
  'title': title,
  'title_html': ?titleHtml,
  if (duration.isPresent) 'duration': duration.value,
  if (startDate.isPresent) 'start_date': startDate.value,
  'completed': ?completed,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('title') && json['title'] is String; } 
IterationSetting copyWith({String? id, String? title, String? Function()? titleHtml, Omittable<double?>? duration, Omittable<String?>? startDate, bool? Function()? completed, }) { return IterationSetting(
  id: id ?? this.id,
  title: title ?? this.title,
  titleHtml: titleHtml != null ? titleHtml() : this.titleHtml,
  duration: duration ?? this.duration,
  startDate: startDate ?? this.startDate,
  completed: completed != null ? completed() : this.completed,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IterationSetting &&
          id == other.id &&
          title == other.title &&
          titleHtml == other.titleHtml &&
          duration == other.duration &&
          startDate == other.startDate &&
          completed == other.completed; } 
@override int get hashCode { return Object.hash(id, title, titleHtml, duration, startDate, completed); } 
@override String toString() { return 'IterationSetting(id: $id, title: $title, titleHtml: $titleHtml, duration: $duration, startDate: $startDate, completed: $completed)'; } 
 }
