import 'package:flutter/material.dart';

// ACHU
class Logo extends StatelessWidget {
  final Animation? animation;

  const Logo({
    super.key,
    this.animation,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        color: Color(0xffEAF4FE),
        shape: BoxShape.rectangle,
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            offset: Offset(0, 12),
            blurRadius: 8,
          )
        ],
      ),
      child: Stack(
        children: <Widget>[
          // center divider
          const Center(
            child: FractionallySizedBox(
              widthFactor: 0.015,
              child: ColoredBox(
                color: Color(0xffD4E0EB),
                child: SizedBox.expand(),
              ),
            ),
          ),

          // Fore Head
          Align(
            alignment: Alignment.topCenter,
            child: FractionallySizedBox(
              heightFactor: 0.25,
              widthFactor: 0.35,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffC2D0DD),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(
                          constraints.maxWidth / 4,
                        ),
                        bottomRight: Radius.circular(
                          constraints.maxWidth / 4,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

          // Eyes and Mouth
          Align(
            alignment: const Alignment(0, 0.5),
            child: FractionallySizedBox(
              heightFactor: 0.3,
              widthFactor: 1,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  // Eyes
                  Flexible(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Flexible(
                          child: FractionallySizedBox(
                            heightFactor: 0.75,
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Color(0xff353457),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          child: FractionallySizedBox(
                            heightFactor: 0.75,
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Color(0xff353457),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Mouth
                  Flexible(
                    flex: 1,
                    child: FractionallySizedBox(
                      widthFactor: 0.3,
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          return Container(
                            alignment: const Alignment(0, 0.75),
                            decoration: BoxDecoration(
                              color: const Color(0xff353457),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(
                                  constraints.maxWidth / 6,
                                ),
                                topRight: Radius.circular(
                                  constraints.maxWidth / 6,
                                ),
                                bottomLeft: Radius.circular(
                                  constraints.maxWidth,
                                ),
                                bottomRight: Radius.circular(
                                  constraints.maxWidth,
                                ),
                              ),
                            ),
                            child: FractionallySizedBox(
                              heightFactor: 0.5,
                              widthFactor: 0.5,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xffED800A),
                                  borderRadius: BorderRadius.all(
                                    Radius.elliptical(
                                      constraints.maxWidth,
                                      constraints.maxHeight,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// #B8C4CF
