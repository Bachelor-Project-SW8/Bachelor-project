import { render, screen, fireEvent } from "@testing-library/react";
import { Sidepanel } from "./sidepanel";

// Mock trigger and SVG
const mockTrigger = <button>Open Sidepanel</button>;
const mockSVG = <svg>SVG</svg>;

describe("Sidepanel", () => {
    it("renders the sidepanel with trigger and content correctly", () => {
        render(
            <Sidepanel
                id="sidepanel1"
                trigger={mockTrigger}
                // eslint-disable-next-line react/no-children-prop
                children={<div>Sidepanel Content</div>}
                SVG={mockSVG}
            />
        );

        // Check if trigger (button) is in the document
        expect(screen.getByText("Open Sidepanel")).toBeInTheDocument();

        // Check if content is rendered
        expect(screen.getByText("Sidepanel Content")).toBeInTheDocument();
    });

    it("disables body scroll when checkbox is checked", () => {
        render(
            <Sidepanel
                id="sidepanel2"
                trigger={mockTrigger}
                // eslint-disable-next-line react/no-children-prop
                children={<div>Sidepanel Content</div>}
                SVG={mockSVG}
            />
        );

        const checkbox = screen.getByRole("checkbox");
        fireEvent.click(checkbox); // Simulate checkbox click

        // Check if body overflow is set to "hidden"
        expect(document.body.style.overflow).toBe("hidden");

        fireEvent.click(checkbox); // Simulate uncheck

        // Check if body overflow is set back to "auto"
        expect(document.body.style.overflow).toBe("auto");
    });
});
