# 1. Define the permanent introduction header of your README
$Header = @"
# CyberPods6 Labs & Blueprints

Welcome to the central knowledge repository for CyberPods6! This space hosts hands-on engineering labs, core technical theories, and procedural cybersecurity methodologies.

---

## How Our Training is Organized

To make learning easy, our training program is broken down into three main tracks:

* **Methodologies (The Rules and Steps):** This section teaches you the big-picture ideas of cybersecurity. You will learn how professional digital detectives track down hackers, follow the law to protect evidence, and use official checklists to handle cyber emergencies.
* **Technologies (The Tools and Systems):** Here, we look under the hood of actual technology. You will learn how different systems work—like Linux, Windows, Apple, smart gadgets (IoT), and the Cloud—and how to lock them down so they stay safe.
* **Walkthroughs (The Helpful Guides):** If you ever get stuck doing a hands-on project, this is your rescue zone. It is filled with extra guides and examples to help you figure out how to use forensic tools step-by-step.

> **Think of it like a video game:** **Methodologies** teaches you the rules of the game, **Technologies** shows you how to use your gear, and **Walkthroughs** gives you the cheat codes when a level gets too tough!

---

## Repository Directory Structure
"@

# Write the initial header to the file
$Header | Out-File -FilePath .\README.md -Encoding utf8

# 2. STEP A: Generate a clean, natively indented Markdown directory tree
Get-ChildItem -Recurse -Directory | 
    Sort-Object FullName | 
    ForEach-Object {
        $RelativePath = $_.FullName.Substring($(Get-Location).Path.Length).Trim('\')
        
        if ($RelativePath) {
            # Count the path depth based on backslashes
            $PathParts = $RelativePath -split '\\'
            $Depth = $PathParts.Count
            
            # Markdown nesting uses 2 spaces per indentation level
            $Indent = "  " * ($Depth - 1)
            
            # Print as a clean, standardized Markdown list item
            "$Indent* **$($_.Name)/**" | Out-File -FilePath .\README.md -Append -Encoding utf8
        }
    }

# Safely bridge the file to the index section
"" | Out-File -FilePath .\README.md -Append -Encoding utf8
"---" | Out-File -FilePath .\README.md -Append -Encoding utf8
"" | Out-File -FilePath .\README.md -Append -Encoding utf8
"## Living Repository Index" | Out-File -FilePath .\README.md -Append -Encoding utf8

# Track the current active directory to detect path changes
$CurrentGroupPath = ""

# 3. STEP B: Scan for all .md files and build the deep list with links
Get-ChildItem -Recurse -Filter *.md | 
    Where-Object { $_.Name -ne "README.md" } | 
    Sort-Object DirectoryName, Name | 
    ForEach-Object {
        
        $FullRelativePath = $_.FullName.Replace($(Get-Location).Path + "\", "").Replace("\", "/")
        $FileFolder = $_.DirectoryName.Replace($(Get-Location).Path, "").Replace("\", "/")
        
        # Clear out slash boundaries safely
        $FileFolder = $FileFolder.TrimStart("/").TrimEnd("/")

        if ($FileFolder -ne $CurrentGroupPath) {
            $CurrentGroupPath = $FileFolder
            "" | Out-File -FilePath .\README.md -Append -Encoding utf8
            "### Folder: $FileFolder" | Out-File -FilePath .\README.md -Append -Encoding utf8
        }
        
        $DisplayName = (Get-Culture).TextInfo.ToTitleCase($_.BaseName.Replace("-", " "))
        "  * [$DisplayName]($FullRelativePath)" | Out-File -FilePath .\README.md -Append -Encoding utf8
    }

Write-Host "Success: README.md has been successfully updated!" -ForegroundColor Green