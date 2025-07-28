import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';

class DiscoverProvider extends ChangeNotifier {

  bool isLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    //TODO: cargar videos

    notifyListeners(); // Se ejecuta cuando cambia el estado de la app y notificar a los widgets que están escuchando
  }
}