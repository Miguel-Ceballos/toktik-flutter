import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infrastructure/models/local_video_model.dart';
import 'package:toktik/shared/data/local_video.dart';

class DiscoverProvider extends ChangeNotifier {
  // TODO: Repository, DataSource

  bool isLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList(); // Transforma videoPosts en un listado de VideoPost

    videos.addAll(newVideos);
    isLoading = false;

    notifyListeners(); // Se ejecuta cuando cambia el estado de la app y notificar a los widgets que están escuchando
  }
}
