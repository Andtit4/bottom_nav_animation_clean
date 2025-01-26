# BottomNavAnimationClean

Un plugin Flutter pour une barre de navigation inférieure flottante avec animations, utilisant Clean Architecture et GetX. Ce plugin permet de personnaliser la couleur de fond, les icônes, leurs couleurs, et de gérer l'index actuel de manière réactive.

## Installation

Pour utiliser ce plugin, ajoutez-le à votre `pubspec.yaml` dans la section `dependencies`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  bottom_nav_animation_clean: ^2.0.1
```

## Exemple d'utilisation

```dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bottom_nav_animation_clean/bottom_nav_animation_clean.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('BottomNavAnimationClean Example'),
        ),
        body: BottomNavAnimation(
          // Liste des éléments de la barre de navigation
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'List'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
          ],
          // Liste des pages à afficher
          pages: const [
            Center(child: Text('Home')),
            Center(child: Text('List')),
            Center(child: Text('Search')),
            Center(child: Text('Add')),
            Center(child: Text('Settings')),
          ],
          // Options de personnalisation
          backgroundColor: Colors.black,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.white70,
        ),
      ),
    );
  }
}
```

## Capture d'écran

![Exemple BottomNavAnimationClean](screenshots/example.gif)