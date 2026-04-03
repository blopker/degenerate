// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'budget.dart';@immutable final class GetAllBudgets {const GetAllBudgets({required this.budgets, this.hasNextPage, this.totalCount, });

factory GetAllBudgets.fromJson(Map<String, dynamic> json) { return GetAllBudgets(
  budgets: (json['budgets'] as List<dynamic>).map((e) => Budget.fromJson(e as Map<String, dynamic>)).toList(),
  hasNextPage: json['has_next_page'] as bool?,
  totalCount: json['total_count'] != null ? (json['total_count'] as num).toInt() : null,
); }

/// Array of budget objects for the enterprise
final List<Budget> budgets;

/// Indicates if there are more pages of results available (maps to hasNextPage from billing platform)
final bool? hasNextPage;

/// Total number of budgets matching the query
final int? totalCount;

Map<String, dynamic> toJson() { return {
  'budgets': budgets.map((e) => e.toJson()).toList(),
  'has_next_page': ?hasNextPage,
  'total_count': ?totalCount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('budgets'); } 
GetAllBudgets copyWith({List<Budget>? budgets, bool Function()? hasNextPage, int Function()? totalCount, }) { return GetAllBudgets(
  budgets: budgets ?? this.budgets,
  hasNextPage: hasNextPage != null ? hasNextPage() : this.hasNextPage,
  totalCount: totalCount != null ? totalCount() : this.totalCount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetAllBudgets &&
          listEquals(budgets, other.budgets) &&
          hasNextPage == other.hasNextPage &&
          totalCount == other.totalCount; } 
@override int get hashCode { return Object.hash(Object.hashAll(budgets), hasNextPage, totalCount); } 
@override String toString() { return 'GetAllBudgets(budgets: $budgets, hasNextPage: $hasNextPage, totalCount: $totalCount)'; } 
 }
