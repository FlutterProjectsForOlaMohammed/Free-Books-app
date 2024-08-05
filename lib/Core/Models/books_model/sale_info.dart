import 'package:equatable/equatable.dart';
import 'package:free_books/Core/Models/books_model/list_price.dart';

class SaleInfo extends Equatable {
  final String? country;
  final String? saleability;
  final bool? isEbook;
  final ListPrice? listPrice;
  final String? buyLink;
  const SaleInfo({
    this.country,
    this.saleability,
    this.isEbook,
    this.listPrice,
    this.buyLink,
  });

  factory SaleInfo.fromJson(Map<String, dynamic> json) => SaleInfo(
      country: json['country'] as String?,
      saleability: json['saleability'] as String?,
      isEbook: json['isEbook'] as bool?,
      listPrice: (json['listPrice'] == null)
          ? null
          : ListPrice.fromJson(json['listPrice']),
      buyLink: json['buyLink'] as String?);

  Map<String, dynamic> toJson() => {
        'country': country,
        'saleability': saleability,
        'isEbook': isEbook,
        'listPrice': listPrice,
      };

  @override
  List<Object?> get props => [country, saleability, isEbook];
}
