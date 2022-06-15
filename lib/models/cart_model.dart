class allcart {
  Cart? cart;
  int? dvdPrice;
  int? blurayPrice;

  allcart({this.cart, this.dvdPrice, this.blurayPrice});

  allcart.fromJson(Map<String, dynamic> json) {
    cart = json['cart'] != null ? new Cart.fromJson(json['cart']) : null;
    dvdPrice = json['dvd_price'];
    blurayPrice = json['bluray_price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.cart != null) {
      data['cart'] = this.cart!.toJson();
    }
    data['dvd_price'] = this.dvdPrice;
    data['bluray_price'] = this.blurayPrice;
    return data;
  }
}

class Cart {
  int? id;
  int? userId;
  int? noOfDvd;
  int? noOfBluray;
  String? discTitle;
  int? addressId;
  int? totalPrice;
  String? createdAt;
  String? updatedAt;
 // List<Null>? videos;
  Shipping? shipping;

  Cart(
      {this.id,
      this.userId,
      this.noOfDvd,
      this.noOfBluray,
      this.discTitle,
      this.addressId,
      this.totalPrice,
      this.createdAt,
      this.updatedAt,
    //  this.videos,
      this.shipping});

  Cart.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    noOfDvd = json['no_of_dvd'];
    noOfBluray = json['no_of_bluray'];
    discTitle = json['disc_title'];
    addressId = json['address_id'];
    totalPrice = json['total_price'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    // if (json['videos'] != null) {
    //   videos = <Null>[];
    //   json['videos'].forEach((v) {
    //     videos!.add(new Null.fromJson(v));
    //   });
    // }
    shipping = json['shipping'] != null
        ? new Shipping.fromJson(json['shipping'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['no_of_dvd'] = this.noOfDvd;
    data['no_of_bluray'] = this.noOfBluray;
    data['disc_title'] = this.discTitle;
    data['address_id'] = this.addressId;
    data['total_price'] = this.totalPrice;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    // if (this.videos != null) {
    //   data['videos'] = this.videos!.map((v) => v.toJson()).toList();
    // }
    if (this.shipping != null) {
      data['shipping'] = this.shipping!.toJson();
    }
    return data;
  }
}

class Shipping {
  int? id;
  int? userId;
  String? address1;
  String? address2;
  String? city;
  String? state;
  int? zipcode;

  Shipping(
      {this.id,
      this.userId,
      this.address1,
      this.address2,
      this.city,
      this.state,
      this.zipcode});

  Shipping.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    address1 = json['address_1'];
    address2 = json['address_2'];
    city = json['city'];
    state = json['state'];
    zipcode = json['zipcode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['address_1'] = this.address1;
    data['address_2'] = this.address2;
    data['city'] = this.city;
    data['state'] = this.state;
    data['zipcode'] = this.zipcode;
    return data;
  }
}