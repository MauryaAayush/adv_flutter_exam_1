
class ProductModel {
  Product? product;
  int? total,skip,limit;

  ProductModel({this.product, this.limit,this.skip,this.total});

  factory ProductModel.fromJson(Map json)
  {
   return ProductModel(
     limit: json['limit'],
     product: json['product'],
     skip: json['skip'],
     total: json['total']
   );
  }
}


class Product {
  int? id,stock,minimumOrderQuantity;
  String? title,description,category,brand,warrantyInformation,shippingInformation,availabilityStatus;
  String? returnPolicy,thumbnail;

  List? images;
  Reviews? reviews;

  Product(
      {this.id,
      this.stock,
      this.minimumOrderQuantity,
      this.title,
      this.description,
      this.category,
      this.brand,
      this.warrantyInformation,
      this.shippingInformation,
      this.availabilityStatus,
      this.returnPolicy,
      this.thumbnail,
      this.images,
      this.reviews});

  factory Product.fromJson(Map json){
    return Product(
      title: json['title'],
      description: json['description'],
      id: json['id'],
      category: json['category'],
      availabilityStatus: json['availabilityStatus'],
      brand: json['brand'],
      images: json['images'],
      minimumOrderQuantity: json['minimumOrderQuantity'],
      returnPolicy: json['returnPolicy'],
      reviews: json['reviews'],
      shippingInformation: json['shippingInformation'],
      stock: json['stock'],
      thumbnail: json['thumbnail'],
      warrantyInformation: json['warrantyInformation'],
    );
  }
}


class Reviews {
  int? rating;
  String? comments,date,reviewerName,reviewerEmail;

  Reviews(
      {this.rating,
      this.comments,
      this.date,
      this.reviewerName,
      this.reviewerEmail});

  factory Reviews.fromJson(Map json){
    return Reviews(
      comments: json['comments'],
      date: json['date'],
      rating: json['rating'],
      reviewerEmail: json['reviewerEmail'],
      reviewerName: json['reviewerName']
    );

  }
}