// Simple script to populate products missing SKUs with the Product Code

List<Product2> productsSansSkus = [SELECT Id, Name, IsActive, StockKeepingUnit, ProductCode FROM Product2 where StockKeepingUnit = null];

for(Product2 product : productsSansSkus) {
    System.debug('Setting StockKeepingUnit for Name: "' + product.Name + '" and Id: "' + product.Id + '" to: "' + product.ProductCode + '"');
    product.StockKeepingUnit = product.ProductCode;
}

update productsSansSkus;
