import 'package:flutter/material.dart';

// achu
class Logo extends StatelessWidget {
  final Animation<double> fadeAnimation;
  final Animation<double> sizeAnimation;

  const Logo({
    super.key,
    required this.fadeAnimation,
    required this.sizeAnimation,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        color: Color(0xffEAF4FE),
        shape: BoxShape.circle,
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
            alignment: const Alignment(0, 0.5),
            child: FractionallySizedBox(
              heightFactor: 0.35,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                // mainAxisSize: MainAxisSize.min,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  // Eyes
                  Flexible(
                    flex: 1,
                    child: FractionallySizedBox(
                      heightFactor: 1,
                      widthFactor: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Flexible(
                            child: Eye(
                              fadeAnimation: fadeAnimation,
                              sizeAnimation: sizeAnimation,
                            ),
                          ),
                          Flexible(
                            child: Eye(
                              fadeAnimation: fadeAnimation,
                              sizeAnimation: sizeAnimation,
                            ),
                          ),
                        ],
                      ),
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

class Eye extends StatelessWidget {
  final Animation<double> fadeAnimation;
  final Animation<double> sizeAnimation;

  const Eye({
    super.key,
    required this.fadeAnimation,
    required this.sizeAnimation,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SizeTransition(
        sizeFactor: sizeAnimation,
        child: const SizedBox.expand(
          child:  DecoratedBox(
            decoration:  BoxDecoration(
              color: Color(0xff353457),
              shape: BoxShape.circle,
            ),
          ),
        ),
      );
    });
  }
}
