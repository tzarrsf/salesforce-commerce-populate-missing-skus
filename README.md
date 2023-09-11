**🔧 _Troubleshooting Missing SKU Errors_**:
    1. If you encounter an error that says *Error: [The SKUs for all products in your cart must be defined]* there are two options to fix this:
            1. _**Option 1**_ - 🐁Transfer them over manually if you feel your point-and-click skills need a workout
            2. _**Option 2**_ - 📜 Run a script to assign SKUs to the sample products by recycling the Product Code:
                1. Go to Setup → **Developer Console** → (Right click → Open link in new tab):
                2. Hit Control + E or use Debug → **Open Execute Anonymous Window**
                3. Copy, paste and run this code (repository [here](https://github.com/tzarrsf/salesforce-commerce-populate-missing-skus/tree/main)):
                    
                    1. // Simple script to populate products missing SKUs with the Product Code
                        
                        List<Product2> productsSansSkus = [SELECT Id, Name, IsActive, StockKeepingUnit, ProductCode FROM Product2 where StockKeepingUnit = null];
                        
                        for(Product2 product : productsSansSkus) {
                            System.debug('Setting StockKeepingUnit for Name: "' + product.Name + '" and Id: "' + product.Id + '" to: "' + product.ProductCode + '"');
                            product.StockKeepingUnit = product.ProductCode;
                        }
                        
                        update productsSansSkus;
            3. Refresh the Product Workspace to see the new SKU values:
                1. [Image: image.png]
