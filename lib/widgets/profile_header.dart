import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Row(
        children: [
          const CircleAvatar(
            foregroundImage: NetworkImage(
              'https://cdn.discordapp.com/avatars/465403883469012992/5563a3e6e43b50faa73908868c66efad.png?size=4096',
            ),
            radius: 46,
          ),
          Flexible(
            child: Container(
              margin: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your Maple Leaf',
                    style: Theme.of(context).textTheme.headline6,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Text('Farmer'),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      primary: Theme.of(context).colorScheme.secondary,
                      padding: EdgeInsets.zero,
                      minimumSize: const Size(0, 0),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      splashFactory: NoSplash.splashFactory,
                      enableFeedback: true,
                    ),
                    child: const Text('Adress'),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}