import 'dart:developer';

import 'package:aa_travel_planner/main.dart';

class FavoritesRepository {
  final List<Destination> _favoriteDestinations = [
    Destination(
      id: '4',
      name: 'Rome',
      country: 'Italy',
      description:
          'A city steeped in history, with ancient ruins and Renaissance art.',
      imageUrl: 'rome.jpeg',
    ),
    Destination(
      id: '5',
      name: 'Sydney',
      country: 'Australia',
      description:
          'Known for its Sydney Opera House, Harbour Bridge, and beautiful beaches.',
      imageUrl: 'sydney.jpeg',
    ),
    Destination(
      id: '6',
      name: 'Rio de Janeiro',
      country: 'Brazil',
      description:
          'Famous for its Carnival, Christ the Redeemer, and breathtaking beaches.',
      imageUrl: 'rio_de_janeiro.jpeg',
    ),
  ];

  List<Destination> getFavorites() {
    return _favoriteDestinations;
  }

  void addFavorite(Destination destination) {
    if (!_favoriteDestinations.contains(destination)) {
      _favoriteDestinations.add(destination);
      log('${destination.name} added to favorites');
    }
  }

  void removeFavorite(Destination destination) {
    _favoriteDestinations.remove(destination);
    log('${destination.name} removed from favorites');
  }

  bool isFavorite(Destination destination) {
    return _favoriteDestinations.contains(destination);
  }
}

class SettingsRepository {
  bool _darkMode = false;
  String _fontSize = 'Medium';
  String _language = 'English';
  bool _privacyMode = true;
  String _distanceUnit = 'Kilometers';

  bool getDarkMode() => _darkMode;
  String getFontSize() => _fontSize;
  String getLanguage() => _language;
  bool getPrivacyMode() => _privacyMode;
  String getDistanceUnit() => _distanceUnit;

  void setDarkMode(bool value) {
    _darkMode = value;
    log('Dark Mode set to: $_darkMode');
  }

  void setFontSize(String value) {
    _fontSize = value;
    log('Font Size set to: $_fontSize');
  }

  void setLanguage(String value) {
    _language = value;
    log('Language set to: $_language');
  }

  void setPrivacyMode(bool value) {
    _privacyMode = value;
    log('Privacy Mode set to: $_privacyMode');
  }

  void setDistanceUnit(String value) {
    _distanceUnit = value;
    log('Distance Unit set to: $_distanceUnit');
  }
}
