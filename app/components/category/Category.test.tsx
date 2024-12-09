import { render, screen } from "@testing-library/react";
import { CategoryBar } from "./category"; // Adjust path as needed

jest.mock("../sidepanel/sidepanel", () => ({
    Sidepanel: ({ children, trigger }: { children: React.ReactNode, trigger: () => void }) => (
        <div>
            <div onClick={() => trigger} className="mock-trigger"></div>
            <div>{children}</div>
        </div>
    ),
}));

describe("CategoryBar Component", () => {
    test("renders categories in mobile sidepanel", () => {
        render(<CategoryBar mobile={true} desktop={false} />);

        // Check if the categories are rendered in the mobile sidepanel
        expect(screen.getByText("Bracelets")).toBeInTheDocument();
        expect(screen.getByText("Necklaces")).toBeInTheDocument();
        expect(screen.getByText("Rings")).toBeInTheDocument();
        expect(screen.getByText("Earrings")).toBeInTheDocument();
    });

    test("renders categories in desktop menu", () => {
        render(<CategoryBar mobile={false} desktop={true} />);

        // Check if the categories are rendered for desktop
        expect(screen.getByText("Bracelets")).toBeInTheDocument();
        expect(screen.getByText("Necklaces")).toBeInTheDocument();
        expect(screen.getByText("Rings")).toBeInTheDocument();
        expect(screen.getByText("Earrings")).toBeInTheDocument();
    });

    test("category links navigate correctly", () => {
        render(<CategoryBar mobile={false} desktop={true} />);

        // Check if the links have correct href attributes
        const braceletLink = screen.getByText("Bracelets");
        expect(braceletLink.closest("a")).toHaveAttribute("href", "/category/bracelets");

        const necklaceLink = screen.getByText("Necklaces");
        expect(necklaceLink.closest("a")).toHaveAttribute("href", "/category/necklaces");

        const ringsLink = screen.getByText("Rings");
        expect(ringsLink.closest("a")).toHaveAttribute("href", "/category/rings");

        const earringsLink = screen.getByText("Earrings");
        expect(earringsLink.closest("a")).toHaveAttribute("href", "/category/earrings");
    });
});
