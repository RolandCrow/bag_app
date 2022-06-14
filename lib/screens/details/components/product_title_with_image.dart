
import 'package:bag_app/constants.dart';
import 'package:bag_app/models/product.dart';
import 'package:flutter/material.dart';

class ProductTitleWithImage extends StatelessWidget {

  const ProductTitleWithImage({
    Key key,
    @required this.product
}): super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Aristocratic Hang Bag",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,
            style: Theme.of(context)
              .textTheme
                .headline4
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: kDefaultPadding,),
          Row(
            children: <Widget>[
              RichText(text: TextSpan(
                children: [
                  TextSpan(text: 'Price\n'),
                  TextSpan(
                    text: '\$${product.price}',
                    style: Theme.of(context).textTheme.headline4.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              ),
              SizedBox(width: kDefaultPadding),
              Expanded(
                child: Hero(
                  tag: "${product.id}",
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}