import 'package:toktik/domain/datasources/video_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';

import '../../shared/data/local_video.dart';
import '../models/local_video_model.dart';

class LocalVideoDatasource implements VideoDatasource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    // TODO: implement getFavoriteVideosByUser
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList(); // Transforma videoPosts en un listado de VideoPost

    return newVideos;
  }
}
