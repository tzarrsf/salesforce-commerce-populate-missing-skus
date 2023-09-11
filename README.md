# Troubleshooting Missing SKU Errors
If you encounter an error that says *Error: [The SKUs for all products in your cart must be defined]* there are two options to fix this:
1. **Option 1** - 🐁Transfer them over manually if you feel your point-and-click skills need a workout
2. **Option 2** - 📜 Run a script to assign SKUs to the sample products by recycling the Product Code:
    1. Go to Setup → **Developer Console** → (Right click → Open link in new tab):
    2. Hit Control + E or use Debug → **Open Execute Anonymous Window**
    3. Copy, paste and run the code in populateMissingSkus.apex
3. Refresh the Product Workspace to see the new SKU values:
    1. [Image: image.png]
