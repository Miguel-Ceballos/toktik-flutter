import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infrastructure/repositories/video_posts_repository_impl.dart';

class DiscoverProvider extends ChangeNotifier {

  final VideoPostsRepositoryImpl videosRepository;

  DiscoverProvider({required this.videosRepository});

  bool isLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    //await Future.delayed(const Duration(seconds: 2));

    // final List<VideoPost> newVideos = videoPosts
    //     .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
    //     .toList(); // Transforma videoPosts en un listado de VideoPost

    final newVideos = await videosRepository.getTrendingVideosByPage(1);

    videos.addAll(newVideos);
    isLoading = false;

    notifyListeners(); // Se ejecuta cuando cambia el estado de la app y notificar a los widgets que están escuchando
  }
}
