import 'package:first_app/meals_app/data/dummy_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/**
 * ## Stateless
 * 
 * replace StatelessWidget with ConsumerWidget.
 * 
 * Widget build(BuildContext context) => Widget build(BuildContext context, WidgetRef ref)
 * 
 * ## Stateful
 * 
 * replace StatefulWidget with ConsumerStatefulWidget
 * 
 * replaced a state class with ConsumerState, which made this ref property globally available in this class.
 */

final mealsProvider = Provider((ref) {
  return dummyMeals;
});
