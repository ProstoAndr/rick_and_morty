import 'package:flutter/material.dart';

enum LiveState { alive, dead, unknown }

class CharacterStatus extends StatelessWidget {
  final LiveState liveState;

  const CharacterStatus({Key? key, required this.liveState}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.circle,
              size: 11,
              color: liveState == LiveState.alive
                  ? Colors.lightGreenAccent[400]
                  : liveState == LiveState.dead
                      ? Colors.red
                      : Colors.white,
            ),
          ),
          Text(
            liveState == LiveState.alive
                ? 'Alive'
                : liveState == LiveState.dead
                    ? 'Dead'
                    : 'Unknown',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
