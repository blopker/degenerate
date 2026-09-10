// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ListsGetListItemsResponse4xxResultInfoCursors {const ListsGetListItemsResponse4xxResultInfoCursors({this.after, this.before, });

factory ListsGetListItemsResponse4xxResultInfoCursors.fromJson(Map<String, dynamic> json) {return ListsGetListItemsResponse4xxResultInfoCursors(
  after: json['after'] as String?,
  before: json['before'] as String?,
);}

final String? after;

final String? before;

Map<String, dynamic> toJson() {return {
  'after': ?after,
  'before': ?before,
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'after', 'before'}.contains(key));}
ListsGetListItemsResponse4xxResultInfoCursors copyWith({String? Function()? after, String? Function()? before, }) {return ListsGetListItemsResponse4xxResultInfoCursors(
  after: after != null ? after() : this.after,
  before: before != null ? before() : this.before,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is ListsGetListItemsResponse4xxResultInfoCursors &&
          after == other.after &&
          before == other.before;}
@override int get hashCode {return Object.hash(after, before);}
@override String toString() {return 'ListsGetListItemsResponse4xxResultInfoCursors(after: $after, before: $before)';}
}
