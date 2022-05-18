import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone/utils/colors.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
      Card(
        elevation: 0.0,
        child: ListTile(
          leading: Stack(
            children: <Widget>[
              CachedNetworkImage(
                imageUrl: 'https://s3.amazonaws.com/wll-community-production/images/no-avatar.png',
                imageBuilder: (context, imageProvider) => Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image:
                    DecorationImage(image: imageProvider, fit: BoxFit.cover),
                  ),
                ),
                placeholder: (context, url) => const CircularProgressIndicator(
                  color: UiColors.circularIndicatorClr,
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
              Positioned(
                bottom: 0.0,
                right: 1.0,
                child: Container(
                  height: 20,
                  width: 20,
                  child: const Icon(
                    Icons.add,
                    color: UiColors.iconClr,
                    size: 15,
                  ),
                  decoration: const BoxDecoration(
                    color: UiColors.iconBackgroundClr,
                    shape: BoxShape.circle,
                  ),
                ),
              )
            ],
          ),
          title: const Text(
            "My Status",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: const Text("Tap to add status update"),
        ),
      ),
      const Padding(
        padding:  EdgeInsets.all(8.0),
        child: Text(
          "Viewed updates",
          style: TextStyle(color: UiColors.txtClrGrey, fontWeight: FontWeight.bold),
        ),
      ),
          const SizedBox(height: 20,),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Center(
                child: Text("No updates to show"),
              ),

            ],
          ))
      ]
      ),


    );
  }
}
