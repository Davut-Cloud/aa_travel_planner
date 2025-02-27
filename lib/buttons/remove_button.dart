import 'package:aa_travel_planner/main.dart';
import 'package:flutter/material.dart';

import '../repo/favorite_Repository.dart';

class RemoveButton extends StatelessWidget {
  const RemoveButton({
    super.key,
    required this.favoritesRepository,
    required this.destination,
  });

  final FavoritesRepository favoritesRepository;
  final Destination destination;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        favoritesRepository.removeFavorite(destination);
        Navigator.pop(context);
      },
      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
      child: const Text(
        'Remove from Favorites',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
