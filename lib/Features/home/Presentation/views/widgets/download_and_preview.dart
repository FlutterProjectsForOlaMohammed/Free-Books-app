import 'package:flutter/material.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/custom_list_tile.dart';

class DownloadAndPreview extends StatefulWidget {
  const DownloadAndPreview({
    super.key,
  });

  @override
  State<DownloadAndPreview> createState() => _DownloadAndPreviewState();
}

class _DownloadAndPreviewState extends State<DownloadAndPreview> {
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: scrollController,
      thumbVisibility: true,
      radius: const Radius.circular(16),
      child: ListView(
        controller: scrollController,
        physics: const BouncingScrollPhysics(),
        children: [
          CustomListTile(
            text: 'Preview',
            enabled: true,
            onPressed: () {},
          ),
          CustomListTile(
            text: 'Download',
            enabled: false,
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
