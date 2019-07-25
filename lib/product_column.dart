import 'package:flutter/material.dart';

import 'model/recipe.dart';
import 'product_card.dart';

class TwoProductCardColumn extends StatelessWidget {
  TwoProductCardColumn({
    this.bottom,
    this.top,
  }) : assert(bottom != null);

  final Recipe bottom, top;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          const spacerHeight = 44.0;

          double heightOfCards = (constraints.biggest.height - spacerHeight) / 2.0;
          double heightOfImages = heightOfCards - ProductCard.kTextBoxHeight;
          // TODO: Change imageAspectRatio calculation (104)
          double imageAspectRatio = constraints.biggest.width / heightOfImages;

          // TODO: Replace Column with a ListView (104)
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsetsDirectional.only(start: 28.0),
                child: top != null
                    ? ProductCard(
                  imageAspectRatio: imageAspectRatio,
                  recipe: top,
                )
                    : SizedBox(
                  height: heightOfCards,
                ),
              ),
              SizedBox(height: spacerHeight),
              Padding(
                padding: EdgeInsetsDirectional.only(end: 28.0),
                child: ProductCard(
                  imageAspectRatio: imageAspectRatio,
                  recipe: bottom,
                ),
              ),
            ],
          );
        });
  }
}

class OneProductCardColumn extends StatelessWidget {
  OneProductCardColumn({this.recipe});

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    // TODO: Replace Column with a ListView (104)
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        ProductCard(
          recipe: recipe,
        ),
        SizedBox(
          height: 40.0,
        ),
      ],
    );
  }
}

