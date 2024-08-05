import 'package:flutter/material.dart';
import 'package:free_books/Core/Functions/custom_launch_url.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/custom_list_tile.dart';
import 'package:free_books/Features/home/data/Models/books_model/item.dart';

class DownloadAndPreview extends StatefulWidget {
  const DownloadAndPreview({
    super.key,
    required this.book,
  });
  final Item book;
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
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: ListView(
          padding: EdgeInsets.zero,
          controller: scrollController,
          physics: const BouncingScrollPhysics(),
          children: [
            CustomListTile(
              icon: Icons.preview_outlined,
              text: 'Preview',
              enabled:
                  (widget.book.volumeInfo?.previewLink == null) ? false : true,
              onPressed: () async {
                await customLaunchUrl(
                    url: widget.book.volumeInfo!.previewLink!);
              },
            ),
            CustomListTile(
              icon: Icons.download_rounded,
              text: 'Download',
              enabled: ((widget.book.accessInfo!.epub!.isAvailable!) ||
                      (widget.book.accessInfo!.pdf!.isAvailable!))
                  ? true
                  : false,
              onPressed: () async {
                if ((widget.book.accessInfo!.pdf!.isAvailable!) &&
                    (widget.book.accessInfo!.pdf!.acsTokenLink != null)) {
                  await customLaunchUrl(
                      url: widget.book.accessInfo!.pdf!.acsTokenLink!);
                } else if (widget.book.accessInfo!.epub!.isAvailable! &&
                    widget.book.accessInfo!.epub!.acsTokenLink != null) {
                  await customLaunchUrl(
                      url: widget.book.accessInfo!.epub!.acsTokenLink!);
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
