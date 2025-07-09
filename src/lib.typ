// Typst Resume Template Library
// Clean, compact resume template inspired by basic-typst-resume-template

#import "@preview/nerd-icons:0.2.0": nf-icon

// Main resume function
#let resume(
  name: "",
  title: "",
  email: "",
  phone: "",
  location: "",
  linkedin: "",
  github: "",
  website: none,
  accent-color: "#2563eb",
  font: ("Times New Roman"),
  font-size: 10pt,
  name-font-size: 20pt,
  body
) = {
  // Document setup
  set document(author: name, title: name + " - Resume")

  // Document-wide formatting
  set text(
    font: font,
    size: font-size,
    lang: "en",
    ligatures: false
  )

  // Recommended 0.5in margin on all sides
  set page(margin: 0.5in, paper: "us-letter")

  // Reduce paragraph spacing

  // Link styles
  show link: it => it

  // Section titles - small caps with line
  show heading.where(level: 2): it => [
    #pad(top: 0pt, bottom: -10pt, [#text(size: font-size + 4pt)[#smallcaps(it.body)]])
    #line(length: 100%, stroke: 1pt)
  ]

  show heading.where(level: 3): it => [
    #pad([#emph(it.body)])
  ]

  // Accent color styling
  show heading: set text(fill: rgb(accent-color))
  show link: set text(fill: rgb(accent-color))

  // Name styling
  show heading.where(level: 1): it => [
    #set align(left)
    #set text(weight: 700, size: name-font-size)
    #pad(it.body)
  ]

  // Name header
  [= #name]

  // Title and contact info
  pad(
    top: 0.25em,
    align(left)[
      #text(style: "italic", size: font-size + 1pt)[#title]

      #{
        let items = ()
        if email != "" { items.push(link("mailto:" + email)[#nf-icon("mail") #email]) }
        if phone != "" { items.push(link("tel:" + phone)[#nf-icon("phone") #phone]) }
        if location != "" { items.push([#nf-icon("location") #location]) }
        if linkedin != "" { items.push(link("https://linkedin.com/in/" + linkedin)[#nf-icon("linkedin") LinkedIn ]) }
        if github != "" { items.push(link("https://github.com/" + github)[#nf-icon("github") GitHub]) }
        if website != none { items.push(link(website)[#nf-icon("web") Website]) }

        if items.len() > 0 [
          #items.join(" | ")
        ]
      }
    ]
  )

  // Main body
  set par(justify: true)
  body
}

// Helper functions for layout
#let generic-two-by-two(
  top-left: "",
  top-right: "",
  bottom-left: "",
  bottom-right: "",
) = [
  #top-left #h(1fr) #top-right \
  #bottom-left #h(1fr) #bottom-right
]

#let generic-one-by-two(
  left: "",
  right: "",
) = [
  #left #h(1fr) #right
]

// Date helper - cannot use normal --- ligature because ligatures are disabled
#let dates-helper(
  start-date: "",
  end-date: "",
) = {
  start-date + " " + $dash.em$ + " " + end-date
}

// Section components
#let work(
  title: "",
  company: "",
  location: "",
  start-date: "",
  end-date: "",
) = {
  generic-two-by-two(
    top-left: text(size: 12pt)[#strong(title)],
    top-right: dates-helper(start-date: start-date, end-date: end-date),
    bottom-left: company,
    bottom-right: emph(location),
  )
}

#let education(
  institution: "",
  degree: "",
  field: "",
  location: "",
  start-date: "",
  end-date: "",
  gpa: none,
  honors: (),
) = {
  let degree-text = if field != "" { degree + " in " + field } else { degree }
  let gpa-text = if gpa != none { " (GPA: " + str(gpa) + ")" } else { "" }
  let honors-text = if honors.len() > 0 { ", " + honors.join(", ") } else { "" }

  generic-two-by-two(
    top-left: strong(institution),
    top-right: dates-helper(start-date: start-date, end-date: end-date),
    bottom-left: emph(degree-text + gpa-text + honors-text),
    bottom-right: emph(location),
  )
}

#let project(
  name: "",
  role: "",
  url: none,
  start-date: "",
  end-date: "",
) = {
  let dates = if start-date != "" and end-date != "" {
    dates-helper(start-date: start-date, end-date: end-date)
  } else if start-date != "" {
    start-date
  } else { "" }

  generic-one-by-two(
    left: {
      if role == "" {
        [*#name*#if url != none [ (#link(url)[#url])]]
      } else {
        [*#role*, #name#if url != none [ (#link(url)[#url])]]
      }
    },
    right: {
      if dates == "" and url != none {
        link(url)[#url]
      } else {
        dates
      }
    },
  )
}

// Work experience with projects as headings
#let work-experience(
  title: "",
  company: "",
  location: "",
  start-date: "",
  end-date: "",
  description: "",
  projects: (),
) = [
  #work(
    title: title,
    company: company,
    location: location,
    start-date: start-date,
    end-date: end-date,
  )
  
  // General description bullets
  #if description != "" [
    #description
  ]

  // Projects as headings with bullet points
  #if projects.len() > 0 [
    #for proj in projects [
      === #proj.name \
      #for point in proj.points [
         • #point \
      ]
    ]
  ]
]

// Generic skills category helper
#let skill-category(
  name: "",
  icon: none,
  items: (),
) = [
  #if items.len() > 0 [
    *#{
      if icon != none [#icon #name:] else [#name:]
    }* #items.join(", ")
  ]
]
