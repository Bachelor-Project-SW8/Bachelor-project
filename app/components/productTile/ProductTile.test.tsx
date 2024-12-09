import { render, screen } from "@testing-library/react";
import { ProductTile } from "./productTile"; // Adjust if necessary
import '@testing-library/jest-dom'; // This enhances `expect`

describe("ProductTile", () => {
    const mockProduct = {
        ProductID: 1,
        ProductName: "Test Product",
        ProductPicture: "/test-image.jpg",
        Price: 100,
        Brand: "Test Brand",
        Description: "Test description", // Make sure this matches your type
    };

    it("renders product details correctly", () => {
        render(<ProductTile product={mockProduct} />);
        expect(screen.getByText("Test Product")).toBeInTheDocument();
        expect(screen.getByText("$100")).toBeInTheDocument();
        expect(screen.getByText("Test Brand")).toBeInTheDocument();
        expect(screen.getByAltText("Test Product")).toBeInTheDocument();
    });
});
