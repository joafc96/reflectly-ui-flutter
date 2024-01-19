import 'package:flutter/material.dart';

// ACHU
class Logo extends StatelessWidget {
  final Animation<double> blinkAnimation;

  const Logo({
    super.key,
    required this.blinkAnimation,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
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

          // ForeHead
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
            alignment: const Alignment(0, 0.3),
            child: FractionallySizedBox(
              heightFactor: 0.35,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  // Eyes
                  Flexible(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Flexible(
                          child: FadeTransition(
                            opacity: blinkAnimation,
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Color(0xff353457),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          child: FadeTransition(
                            opacity: blinkAnimation,
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
                    flex: 2,
                    child: FractionallySizedBox(
                      widthFactor: 0.3,
                      heightFactor: 0.8,
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
