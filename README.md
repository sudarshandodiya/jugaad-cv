# Typst Resume Template
<div align="center">Version 0.1.0</div>

A modern, modular Typst resume template designed for experienced professionals (3+ years). Features clean design, heroicons integration, and project-focused work experience organization.

## Features

- **Modern Design**: Clean, professional layout with consistent typography and spacing
- **Heroicons Integration**: Beautiful icons throughout the resume using the heroicons package
- **Modular Structure**: Highly customizable and reusable components
- **Project-Focused**: Work experience organized by projects/topics rather than just positions
- **Experience-Oriented**: Designed for professionals with 3+ years of experience
- **Responsive Layout**: Optimized for standard letter-size paper and PDF generation

## Sections Included

1. **Personal Information Header**: Large, prominent display with contact details
2. **Work Experience**: Project-focused organization with company, role, and key projects
3. **Education**: Academic background with GPA, honors, and relevant coursework
4. **Technical Skills**: Categorized by languages, frameworks, tools, databases, cloud, etc.
5. **Personal Projects**: Optional section for personal/open-source projects

## Quick Start

1. **Install Dependencies**: Make sure you have the heroic package available:
   ```bash
   # The template uses @preview/heroic:0.1.0 (heroicons for Typst)
   ```

2. **Use the Template**: Import and use the resume template in your Typst file:
   ```typ
   #import "src/lib.typ": *

   #show: resume.with(
     name: "Your Name",
     title: "Your Professional Title",
     email: "your.email@example.com",
     phone: "+1 (555) 123-4567",
     location: "City, State",
     linkedin: "linkedin-username",
     github: "github-username",
     website: "https://your-website.com", // optional
   )

   == Work Experience

   #work-experience(
     title: "Your Position",
     company: "Company Name",
     location: "Location",
     start-date: "Start Date",
     end-date: "End Date",
     description: (
       "Key responsibility or achievement",
       "Another important accomplishment",
     ),
     projects: (
       (
         name: "Project Name",
         points: (
           "Specific achievement with quantified impact",
           "Technical implementation detail",
         )
       ),
     )
   )

   // Add more sections...
   ```

3. **Customize**: See `example.typ` for a complete working example with all sections filled out.

## Template Structure

The template is built with modularity in mind. Here's how it's organized:

### Core Components

- **`resume()`**: Main function that sets up the document and calls all sections
- **`header()`**: Personal information display with contact details and icons
- **`work-experience()`**: Work history with project-focused organization
- **`education()`**: Academic background section
- **`skills()`**: Technical skills organized by categories
- **`projects()`**: Personal projects section (optional)

### Styling System

- **Colors**: Consistent color scheme with primary, secondary, and accent colors
- **Typography**: Professional font choices with proper hierarchy
- **Spacing**: Consistent spacing system throughout the document
- **Icons**: Heroicons integration for visual enhancement

## Customization

### Personal Information
```typ
#show: resume.with(
  name: "Your Name",
  title: "Your Professional Title",
  email: "your.email@example.com",
  phone: "+1 (555) 123-4567",
  location: "City, State",
  linkedin: "linkedin-username",
  github: "github-username",
  website: "https://your-website.com", // optional
  accent-color: "#2563eb", // optional, default blue
  font: ("Times New Roman", "Times"), // optional, default Times New Roman
)
```

### Work Experience (Project-Focused)
```typ
== Work Experience

#work-experience(
  title: "Your Position",
  company: "Company Name",
  location: "City, State",
  start-date: "Jan 2022",
  end-date: "Present", // or specific end date
  description: (
    "Key responsibility or achievement",
    "Another important accomplishment",
  ),
  projects: (
    (
      name: "Project Name",
      points: (
        "Specific achievement with quantified impact",
        "Technical implementation detail",
        "Quantified result or outcome",
      )
    ),
    (
      name: "Another Project",
      points: (
        "What you built and its impact",
        "Technologies used and challenges solved",
      )
    ),
  )
)
```

### Education
```typ
== Education

#education(
  institution: "University Name",
  degree: "Bachelor of Science",
  field: "Computer Science", // field of study
  location: "City, State",
  start-date: "Aug 2014",
  end-date: "May 2018",
  gpa: 3.7, // use none if you don't want to show
  honors: ("Magna Cum Laude", "Dean's List"), // honors
)
```

### Skills
```typ
== Technical Skills

#skills-section(
  languages: ("JavaScript", "Python", "Java"),
  frameworks: ("React", "Django", "Spring"),
  tools: ("Git", "Docker", "Kubernetes"),
  databases: ("PostgreSQL", "MongoDB", "Redis"),
  cloud: ("AWS", "Google Cloud", "Azure"),
  other: ("GraphQL", "REST APIs", "Microservices"),
)
```

### Personal Projects
```typ
== Personal Projects

#project(
  name: "Project Name",
  role: "Lead Developer", // optional
  url: "github.com/username/project", // optional
  start-date: "2023",
  end-date: "", // leave empty for single date
)
• Brief description of what you built and its impact
• Technologies used and challenges solved
• Quantified results or outcomes
```

## Design Philosophy

This template is specifically designed for **experienced professionals** (3+ years) with the following principles:

1. **Project-Focused Work Experience**: Projects are displayed as headings with bullet points underneath, emphasizing specific achievements and impact rather than generic job duties
2. **Compact Layout**: Inspired by Jake's resume template with minimal padding and efficient use of space
3. **Scannable Structure**: Easy for recruiters and hiring managers to quickly identify key projects and accomplishments
4. **Modular Components**: Easy to customize and extend for different needs
5. **Icon Integration**: Subtle heroicons that enhance readability without being distracting
6. **Quantified Results**: Encourages including specific metrics and outcomes for each project

## Example Output

See `example.typ` for a complete working example that demonstrates:
- A senior software engineer's resume
- Project-focused work experience entries
- Proper use of all template features
- Best practices for content organization

## Available Components

The template provides the following clean, modular components:

- **`resume()`**: Main document setup with personal info in header
- **`work-experience()`**: Work experience entries with project-focused structure
- **`education()`**: Education entries with GPA and honors
- **`skills-section()`**: Technical skills organized by categories
- **`project()`**: Personal project entries with links and dates
- **`work()`**: Simple work entry helper
- **`generic-two-by-two()`** and **`generic-one-by-two()`**: Layout helpers

## Requirements

- Typst compiler
- Heroic package (`@preview/heroic:0.1.0`) - provides heroicons for Typst (optional, only used in old examples)

## License

This template is released under the Unlicense - see the LICENSE file for details.
