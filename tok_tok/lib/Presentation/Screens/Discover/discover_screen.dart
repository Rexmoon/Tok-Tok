import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tok_tok/Presentation/Screens/Discover/discover_provider.dart';
import 'package:tok_tok/Presentation/Widgets/Shared/video_scrollable_widget.dart';

final class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _DiscoverScaffold();
  }
}

final class _DiscoverScaffold extends StatelessWidget {
  const _DiscoverScaffold();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: _DiscoverBody());
  }
}

final class _DiscoverBody extends StatelessWidget {
  const _DiscoverBody();

  @override
  Widget build(BuildContext context) {
    final discoverProvider = context.watch<DiscoverProvider>();

    return discoverProvider.initialLoading
        ? const Center(child: CircularProgressIndicator(strokeWidth: 2))
        : VideoScrollableWidget(videos: discoverProvider.videos);
  }
}
