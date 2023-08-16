// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

List<Product> productFromJson(String str) => List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
    int id;
    String name;
    dynamic code;
    String image;
    int ?quantity;
    BuyingUnit latestBuyingUnit;
    BuyingUnit buyingUnit;
    SellingUnit sellingUnit;
    String description;
    dynamic secondaryName;
    double costPrice;
    double wholesaleSellingPrice;
    double retailSellingPrice;
    int buyingToSellingUnitEquivalence;
    int alertQuantity;
    List<dynamic> images;
    List<dynamic> categories;
    List<dynamic> brand;
    int availableBuyingUnitQuantity;
    int availableSellingUnitQuantity;
    String availableQuantity;
    int wholesaleProfitMargin;
    int retailProfitMargin;
    EdBy addedBy;
    EdBy updatedBy;

    Product({
        required this.id,
        required this.name,
        required this.code,
        required this.latestBuyingUnit,
        required this.buyingUnit,
        required this.sellingUnit,
        required this.description,
        this.quantity=1,
        required this.secondaryName,
        required this.costPrice,
        required this.wholesaleSellingPrice,
        required this.retailSellingPrice,
        required this.buyingToSellingUnitEquivalence,
        required this.alertQuantity,
        required this.images,
        required this.image,
        required this.categories,
        required this.brand,
        required this.availableBuyingUnitQuantity,
        required this.availableSellingUnitQuantity,
        required this.availableQuantity,
        required this.wholesaleProfitMargin,
        required this.retailProfitMargin,
        required this.addedBy,
        required this.updatedBy,
    });

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        code: json["code"],
        quantity: json["quantity"],
        latestBuyingUnit: buyingUnitValues.map[json["latest_buying_unit"]]!,
        buyingUnit: buyingUnitValues.map[json["buying_unit"]]!,
        sellingUnit: sellingUnitValues.map[json["selling_unit"]]!,
        description: json["description"],
        secondaryName: json["secondary_name"],
        costPrice: json["cost_price"]?.toDouble(),
        image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/d6/96/36/photo4jpg.jpg?w=700&h=-1&s=1",
        wholesaleSellingPrice: json["wholesale_selling_price"]?.toDouble(),
        retailSellingPrice: json["retail_selling_price"]?.toDouble(),
        buyingToSellingUnitEquivalence: json["buying_to_selling_unit_equivalence"],
        alertQuantity: json["alert_quantity"],
        images: List<dynamic>.from(json["images"].map((x) => x)),
        categories: List<dynamic>.from(json["categories"].map((x) => x)),
        brand: List<dynamic>.from(json["brand"].map((x) => x)),
        availableBuyingUnitQuantity: json["available_buying_unit_quantity"],
        availableSellingUnitQuantity: json["available_selling_unit_quantity"],
        availableQuantity: json["available_quantity"],
        wholesaleProfitMargin: json["wholesale_profit_margin"],
        retailProfitMargin: json["retail_profit_margin"],
        addedBy: EdBy.fromJson(json["added_by"]),
        updatedBy: EdBy.fromJson(json["updated_by"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "code": code,
        "quantity":quantity,
        "latest_buying_unit": buyingUnitValues.reverse[latestBuyingUnit],
        "buying_unit": buyingUnitValues.reverse[buyingUnit],
        "selling_unit": sellingUnitValues.reverse[sellingUnit],
        "description": description,
        "secondary_name": secondaryName,
        "cost_price": costPrice,
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/d6/96/36/photo4jpg.jpg?w=700&h=-1&s=1",
        "wholesale_selling_price": wholesaleSellingPrice,
        "retail_selling_price": retailSellingPrice,
        "buying_to_selling_unit_equivalence": buyingToSellingUnitEquivalence,
        "alert_quantity": alertQuantity,
        "images": List<dynamic>.from(images.map((x) => x)),
        "categories": List<dynamic>.from(categories.map((x) => x)),
        "brand": List<dynamic>.from(brand.map((x) => x)),
        "available_buying_unit_quantity": availableBuyingUnitQuantity,
        "available_selling_unit_quantity": availableSellingUnitQuantity,
        "available_quantity": availableQuantity,
        "wholesale_profit_margin": wholesaleProfitMargin,
        "retail_profit_margin": retailProfitMargin,
        "added_by": addedBy.toJson(),
        "updated_by": updatedBy.toJson(),
    };
}

class EdBy {
    dynamic id;
    Name name;
    Email email;
    dynamic phone;
    List<dynamic> privileges;
    bool isVerified;
    dynamic image;
    DateTime createdAt;
    dynamic updatedAt;

    EdBy({
        required this.id,
        required this.name,
        required this.email,
        required this.phone,
        required this.privileges,
        required this.isVerified,
        required this.image,
        required this.createdAt,
        required this.updatedAt,
    });

    factory EdBy.fromJson(Map<String, dynamic> json) => EdBy(
        id: json["id"],
        name: nameValues.map[json["name"]]!,
        email: emailValues.map[json["email"]]!,
        phone: json["phone"],
        privileges: List<dynamic>.from(json["privileges"].map((x) => x)),
        isVerified: json["is_verified"],
        image: json["image"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": nameValues.reverse[name],
        "email": emailValues.reverse[email],
        "phone": phone,
        "privileges": List<dynamic>.from(privileges.map((x) => x)),
        "is_verified": isVerified,
        "image": image,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt,
    };
}

enum Email {
    SINGHJASSI2624_GMAIL_COM
}

final emailValues = EnumValues({
    "singhjassi2624@gmail.com": Email.SINGHJASSI2624_GMAIL_COM
});

enum Name {
    ADMIN
}

final nameValues = EnumValues({
    "admin": Name.ADMIN
});

enum BuyingUnit {
    BOX,
    CARTOON,
    PCS
}

final buyingUnitValues = EnumValues({
    "box": BuyingUnit.BOX,
    "Cartoon": BuyingUnit.CARTOON,
    "pcs": BuyingUnit.PCS
});

enum SellingUnit {
    PACKETS,
    PCS
}

final sellingUnitValues = EnumValues({
    "packets": SellingUnit.PACKETS,
    "pcs": SellingUnit.PCS
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
