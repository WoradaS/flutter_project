import 'package:first_app/meals_app/models/meal.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/**
 * When use StateNotifier you're not allowed to edit an existing value in memory,
 * 
 * instead you must always create a new one.
 * 
 * That's simply a pattern enforced by this package. 
 */

class FavoriteMealsNotifier extends StateNotifier<List<Meal>> {
  FavoriteMealsNotifier() : super([]);

  bool toggleMealFavoriteStatus(Meal meal) {
    final mealIsFavorite = state.contains(meal);

    if (mealIsFavorite) {
      state = state.where((m) => m.id != meal.id).toList();
      return false;
    } else {
      state = [...state, meal];
      return true;
    }
  }
}

/**
 * Use the StateNotifierProvider class,
 * 
 * Is optimized for data that can change.
 * 
 * StateNotifierProvider class Works together with another class is the StateNotifier class,
 */
final favoriteMealsProvider =
    StateNotifierProvider<FavoriteMealsNotifier, List<Meal>>((ref) {
  return FavoriteMealsNotifier();
});
