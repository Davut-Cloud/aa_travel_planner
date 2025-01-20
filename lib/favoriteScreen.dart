import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:aa_travel_planner/favoriteRepository.dart';
import 'package:aa_travel_planner/favoriteCard.dart';
import 'package:aa_travel_planner/main.dart';

class FavoritesScreen extends StatefulWidget {
  final FavoritesRepository favoritesRepository;

  const FavoritesScreen({super.key, required this.favoritesRepository});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    List<Destination> favorites = widget.favoritesRepository.getFavorites();

    return ListView.builder(
      itemCount: favorites.length,
      itemBuilder: (context, index) {
        final destination = favorites[index];
        return FavoriteCard(
          destination: destination,
          favoritesRepository: widget.favoritesRepository,
          onRemove: () {
            setState(() {});
          },
        );
      },
    );
  }
}
