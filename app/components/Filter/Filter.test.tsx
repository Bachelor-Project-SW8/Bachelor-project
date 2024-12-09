import { render, screen } from "@testing-library/react";
import { Filter } from "./Filter"; // Adjust to your actual component location
import { Category, Color } from "@/app/types/types";

describe("Filter Component - Categories and Colors", () => {
    const mockCategories: Category[] = [
        { CategoryID: 1, CategoryName: "Category 1", CategoryPicture: "/path/to/pic1.jpg" },
        { CategoryID: 2, CategoryName: "Category 2", CategoryPicture: "/path/to/pic2.jpg" },
    ];

    const mockColors: Color[] = [
        { ColorID: 1, ColorName: "Red" },
        { ColorID: 2, ColorName: "Blue" },
    ];

    const mockOnApplyFilters = jest.fn();
    const mockOnClearFilters = jest.fn();

    beforeEach(() => {
        render(
            <Filter
                categories={mockCategories}
                colors={mockColors}
                selectedCategories={[]} // No categories selected
                selectedColors={[]} // No colors selected
                onApplyFilters={jest.fn()}
                onClearFilters={jest.fn()}
                mobile={true}
                desktop={true}
            />
        );
    });

    test("renders category checkboxes correctly", () => {
        // Use getAllByLabelText to target both mobile and desktop checkboxes
        const categoryCheckboxes = screen.getAllByLabelText("Category 1");

        // Assertions to ensure they are rendered correctly
        expect(categoryCheckboxes).toHaveLength(2); // There should be two checkboxes for "Category 1"
        expect(categoryCheckboxes[0]).toBeInTheDocument();
        expect(categoryCheckboxes[1]).toBeInTheDocument();
    });

    test("renders color checkboxes correctly", () => {
        // Use getAllByLabelText to target both mobile and desktop color checkboxes
        const colorCheckboxes = screen.getAllByLabelText("Red");

        // Assertions to ensure they are rendered correctly
        expect(colorCheckboxes).toHaveLength(2); // There should be two checkboxes for "Red"
        expect(colorCheckboxes[0]).toBeInTheDocument();
        expect(colorCheckboxes[1]).toBeInTheDocument();

        const blueColorCheckboxes = screen.getAllByLabelText("Blue");
        expect(blueColorCheckboxes).toHaveLength(2); // There should be two checkboxes for "Blue"
        expect(blueColorCheckboxes[0]).toBeInTheDocument();
        expect(blueColorCheckboxes[1]).toBeInTheDocument();
    });

    test("ensures selected categories and colors are checked", () => {
        render(
            <Filter
                categories={mockCategories}
                colors={mockColors}
                selectedCategories={[1]} // Category 1 should be selected
                selectedColors={[1]} // Red should be selected
                onApplyFilters={mockOnApplyFilters}
                onClearFilters={mockOnClearFilters}
                mobile={true}
                desktop={true}
            />
        );

        // Get the checkboxes for Category 1 and Red color
        const categoryCheckboxes = screen.getAllByLabelText("Category 1");
        const redColorCheckboxes = screen.getAllByLabelText("Red");

        expect(categoryCheckboxes[1]).toBeChecked();
        expect(redColorCheckboxes[1]).toBeChecked();
    });
});
