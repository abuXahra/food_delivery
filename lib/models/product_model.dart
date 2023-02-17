class ProductModel {
  String? name;
  String? description;
  String? price;
  String? shortDescription;
  String? weight;
  String? imgUrl;
  String? category;

  ProductModel(
      {this.name,
      this.description,
      this.price,
      this.shortDescription,
      this.weight,
      this.imgUrl,
      this.category});

  // ProductModel.fromJson(Map<String, dynamic> json) {
  //   name = json['name'];
  //   description = json['description'];
  //   price = json['price'];
  //   shortDescription = json['shortDescription'];
  //   weight = json['weight'];
  //   imgUrl = json['imgUrl'];
  //   category = json['category'];
  // }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['name'] = this.name;
  //   data['description'] = this.description;
  //   data['price'] = this.price;
  //   data['shortDescription'] = this.shortDescription;
  //   data['weight'] = this.weight;
  //   data['imgUrl'] = this.imgUrl;
  //   data['category'] = this.category;
  //   return data;
  // }
}
