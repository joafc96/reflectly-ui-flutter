import 'package:flutter/material.dart';

// achu
class Logo extends StatelessWidget {
  final Animation animation;

  const Logo({
    super.key,
    required this.animation,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        color: Color(0xffEAF4FE),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            offset: Offset(0, 8),
            blurRadius: 16,
          )
        ],
      ),
      child: Stack(
        children: <Widget>[
          Center(
            child: Container(
              width: 2,
              color: const Color(0xffC3D1DD),
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
                      color: const Color(0xffC3D1DD),
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
            alignment: const Alignment(0, 0.25),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Flexible(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Flexible(
                        child: FractionallySizedBox(
                          heightFactor: 0.3,
                          widthFactor: 0.3,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color(0xff0C0C0C),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: FractionallySizedBox(
                          heightFactor: 0.3,
                          widthFactor: 0.3,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color(0xff0C0C0C),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Flexible(
                  flex: 1,
                  child: FractionallySizedBox(
                    heightFactor: 0.25,
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: FractionallySizedBox(
                    heightFactor: 0.3,
                    widthFactor: 0.3,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        return Container(
                          alignment: Alignment.bottomCenter,
                          decoration: BoxDecoration(
                            color: const Color(0xff0C0C0C),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(
                                constraints.maxWidth / 12,
                              ),
                              topRight: Radius.circular(
                                constraints.maxWidth / 12,
                              ),
                              bottomLeft: Radius.circular(
                                constraints.maxWidth / 2,
                              ),
                              bottomRight: Radius.circular(
                                constraints.maxWidth / 2,
                              ),
                            ),
                          ),
                          child: FractionallySizedBox(
                            heightFactor: 0.5,
                            widthFactor: 0.5,
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color(0xffFF8401),
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
        ],
      ),
    );
  }
}
