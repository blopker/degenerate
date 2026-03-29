// GENERATED CODE - DO NOT MODIFY BY HAND

final class WorkersMigrationStepTransferredClasses {const WorkersMigrationStepTransferredClasses({this.from, this.fromScript, this.to, });

factory WorkersMigrationStepTransferredClasses.fromJson(Map<String, dynamic> json) { return WorkersMigrationStepTransferredClasses(
  from: json['from'] as String?,
  fromScript: json['from_script'] as String?,
  to: json['to'] as String?,
); }

final String? from;

final String? fromScript;

final String? to;

Map<String, dynamic> toJson() { return {
  'from': ?from,
  'from_script': ?fromScript,
  'to': ?to,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
WorkersMigrationStepTransferredClasses copyWith({String Function()? from, String Function()? fromScript, String Function()? to, }) { return WorkersMigrationStepTransferredClasses(
  from: from != null ? from() : this.from,
  fromScript: fromScript != null ? fromScript() : this.fromScript,
  to: to != null ? to() : this.to,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersMigrationStepTransferredClasses &&
          from == other.from &&
          fromScript == other.fromScript &&
          to == other.to; } 
@override int get hashCode { return Object.hash(from, fromScript, to); } 
@override String toString() { return 'WorkersMigrationStepTransferredClasses(from: $from, fromScript: $fromScript, to: $to)'; } 
 }
