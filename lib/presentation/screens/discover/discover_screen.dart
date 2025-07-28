import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/presentation/widgets/shared/video_scrollable_view.dart';

import '../../providers/discover_provider.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final discoverProvider = context
        .watch<
          DiscoverProvider
        >(); // Agregamos el provider que deseamos escuchar en esta screen cuando se realiza un cambio

    return Scaffold(
      body: discoverProvider.isLoading
          ? const Center(child: CircularProgressIndicator(strokeWidth: 2)) // Muestra un spinner mientras carga
          : VideoScrollableView(videos: discoverProvider.videos), // Muestra los videos
    );
  }
}
