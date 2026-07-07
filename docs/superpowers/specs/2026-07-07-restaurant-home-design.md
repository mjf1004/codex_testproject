# Restaurant Homepage Design

## Goal

Build a single-page homepage for a lively Chinese home-style restaurant. The page should feel warm, busy, appetizing, and easy to act on.

## Direction

The selected style is "home-style neighborhood restaurant" rather than fine dining or banquet hall. The visual tone should use warm rice paper tones, strong red accents, dark green supporting accents, and food-forward imagery or illustration. The page should feel lively without becoming cluttered.

## Audience

The homepage is for people deciding where to eat soon: nearby diners, families, coworkers, and small groups. They should quickly understand what the restaurant serves, whether it is open, what dishes are recommended, and how to visit or call.

## Content

The page will use a fictional restaurant called "巷口饭馆". If the user provides a real name, replace this text consistently across the homepage.

Primary content:

- Hero section with restaurant name, navigation, lively headline, short supporting copy, and two calls to action: "查看菜单" and "电话预订".
- Status strip with today's recommendation, opening hours, and average spend.
- Signature dishes section with several home-style dishes and short descriptions.
- Today's special or set meal section to add a sense of freshness and activity.
- Visit information section with address, opening hours, phone number, and simple transport note.
- Footer with restaurant name and key contact information.

## Layout

The first viewport will show the restaurant as the main signal. It will use a split hero: copy and action on the left, a large warm food image treatment on the right. Below the hero, signature dishes and visit details continue the page so users can scroll naturally.

The homepage should be the product itself, not a marketing landing page about the process. No explanatory instruction text should appear in the UI.

## Visual Design

Use:

- Warm base colors: off-white and rice-paper yellow.
- Main accent: rich Chinese red.
- Secondary accent: dark green.
- Supporting color: golden yellow for today's special tags.
- Strong but readable type hierarchy.
- Squared or lightly rounded controls, no oversized pill-heavy styling.

Avoid:

- A one-color red-only page.
- Decorative gradient blobs or abstract orbs.
- Dark fine-dining mood.
- Generic stock-like empty hero treatment.

## Technical Scope

This is a static website suitable for opening directly in a browser. Create `index.html`, `styles.css`, and any lightweight local assets if needed. Use semantic HTML and responsive CSS. No framework or package install is required.

## Responsiveness

Desktop should use a split hero and multi-column dish cards. Mobile should stack content, keep buttons readable, and avoid text overlap. The hero should still show the restaurant name and next content hint in the first viewport.

## Verification

Verify the page by opening the HTML locally or serving it with a simple static server. Check desktop and mobile widths for layout, readability, text fit, and absence of overlapping UI.
