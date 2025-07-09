// Clean Resume Example - Following basic-typst-resume-template style
#import "src/lib.typ": *

#show: resume.with(
  name: "John Doe",
  title: "Software Engineer",
  email: "john.doe@email.com",
  phone: "+1 (555) 123-4567",
  location: "San Francisco, CA",
  linkedin: "johndoe",
  github: "johndoe",
  website: "https://johndoe.dev",
  accent-color: "#0c64c5"
)

== Work Experience

#work-experience(
  title: "Senior Software Engineer",
  company: "Tech Corp",
  location: "San Francisco, CA",
  start-date: "Jan 2022",
  end-date: "Present",
  description: 
    "Lead development of microservices architecture serving 10M+ daily active users. Mentored team of 5 junior developers and established code review processes",
  projects: (
    (
      name: "Payment Processing System",
      points: (
        "Built scalable payment gateway handling $50M+ monthly transactions",
        "Implemented fraud detection reducing chargebacks by 60%",
        "Achieved 99.9% uptime with automated failover mechanisms",
      )
    ),
    (
      name: "Real-time Analytics Platform",
      points: (
        "Developed streaming data pipeline using Kafka and Apache Spark",
        "Processed 100M+ events daily with sub-second latency",
        "Created dashboards enabling data-driven business decisions",
      )
    ),
  )
)

#work-experience(
  title: "Full Stack Developer",
  company: "StartupXYZ",
  location: "Remote",
  start-date: "Mar 2020",
  end-date: "Dec 2021",
  projects: (
    (
      name: "E-commerce Platform",
      points: (
        "Developed complete online marketplace with payment integration",
        "Implemented user authentication and authorization system",
        "Achieved 40% increase in conversion rate through UX improvements",
      )
    ),
    (
      name: "Customer Analytics Dashboard",
      points: (
        "Created real-time dashboard for business intelligence",
        "Integrated with multiple data sources using GraphQL",
        "Enabled stakeholders to make data-driven decisions",
      )
    ),
  )
)

== #nf-icon("school") Education

#education(
  institution: "University of California, Berkeley",
  degree: "Bachelor of Science",
  field: "Computer Science",
  location: "Berkeley, CA",
  start-date: "Aug 2014",
  end-date: "May 2018",
  gpa: 3.7,
  honors: ("Magna Cum Laude", "Dean's List"),
)

== Technical Skills

#skill-category(
  name: "Programming Languages",
  icon: nf-icon("code"),
  items: ("JavaScript", "TypeScript", "Python", "Java", "Go", "SQL"),
)

#skill-category(
  name: "Frameworks & Libraries",
  icon: nf-icon("package"),
  items: ("React", "Node.js", "Express", "Django", "Spring Boot", "Next.js"),
)

#skill-category(
  name: "Tools & Technologies",
  icon: nf-icon("tools"),
  items: ("Git", "Docker", "Kubernetes", "Jenkins", "Webpack", "Jest"),
)

#skill-category(
  name: "Databases",
  icon: nf-icon("database"),
  items: ("PostgreSQL", "MongoDB", "Redis", "Elasticsearch"),
)

#skill-category(
  name: "Cloud & DevOps",
  icon: nf-icon("cloud"),
  items: ("AWS", "Google Cloud", "Azure", "Terraform", "CloudFormation"),
)

#skill-category(
  name: "Other",
  icon: nf-icon("gear"),
  items: ("GraphQL", "REST APIs", "Microservices", "Agile/Scrum", "System Design"),
)

== Personal Projects

#project(
  name: "Open Source Contribution - React Router",
  role: "Contributor",
  url: "github.com/remix-run/react-router",
  start-date: "2023",
  end-date: "",
)
• Contributed performance improvements and bug fixes to React Router library
• Used by millions of developers worldwide with 50M+ weekly downloads

#project(
  name: "Personal Finance Tracker",
  url: "github.com/johndoe/finance-tracker",
  start-date: "2022",
  end-date: "",
)
• Full-stack web application for tracking personal expenses
• Built with React, Node.js, PostgreSQL, and Chart.js
• Features data visualization and budget planning capabilities
