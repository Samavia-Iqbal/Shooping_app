import 'package:flutter/cupertino.dart';
import '../../product/product.dart';

class FavoriteProvider extends ChangeNotifier {
  final List<Product> _favorites = [];
  List<Product> get favorite => _favorites;

  static get provider => null;
  void toggleFavorite(Product product) {
    if (_favorites.contains(product)) {
      _favorites.remove(product);
    } else {
      _favorites.add(product);
    }
    notifyListeners();
  }

  bool isExist(Product product) {
    final isExist = _favorites.contains(product);
    return isExist;
  }

  static FavoriteProvider of(BuildContext context, {bool listen = true}) {
    return provider.of<FavoriteProvider>(context, listen: listen);
  }
}
