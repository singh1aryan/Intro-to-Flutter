import 'package:flutter/material.dart';
import 'model/recipe.dart';
import 'package:intl/intl.dart';

class ProductCard extends StatelessWidget {
  ProductCard({this.imageAspectRatio: 33 / 49, this.recipe})
      : assert(imageAspectRatio == null || imageAspectRatio > 0);

  final double imageAspectRatio;
  final Recipe recipe;

  static final kTextBoxHeight = 65.0;

  @override
  Widget build(BuildContext context) {
    final NumberFormat formatter = NumberFormat.simpleCurrency(
        decimalDigits: 0, locale: Localizations.localeOf(context).toString());
    final ThemeData theme = Theme.of(context);

    final imageWidget = Image.asset(
      recipe.image,
      fit: BoxFit.cover,
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        AspectRatio(
          aspectRatio: imageAspectRatio,
          child: imageWidget,
        ),
        SizedBox(
          height: kTextBoxHeight * MediaQuery.of(context).textScaleFactor,
          width: 121.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // TODO(larche): Make headline6 when available
              Text(
                recipe == null ? '' : recipe.title,
                style: theme.textTheme.button,
                softWrap: false,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              SizedBox(height: 4.0),
              // TODO(larche): Make subtitle2 when available
              Text(
                recipe == null ? '' : formatter.format(recipe.views),
                style: theme.textTheme.caption,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
