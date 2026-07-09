# 1. Define the permanent introduction header of your README
$Header = @"
# 🗺️ CyberPods6 Labs & Blueprints

Welcome to the central knowledge repository for CyberPods6! This space hosts hands-on engineering labs, core technical theories, and procedural cybersecurity methodologies.

---

## 🧭 How Our Training is Organized

To make learning easy, our training program is broken down into three main tracks:

* 📘 **Methodologies (The Rules and Steps):** This section teaches you the big-picture ideas of cybersecurity. You will learn how professional digital detectives track down hackers, follow the law to protect evidence, and use official checklists to handle cyber emergencies.
* 🛠️ **Technologies (The Tools and Systems):** Here, we look under the hood of actual technology. You will learn how different systems work—like Linux, Windows, Apple, smart gadgets (IoT), and the Cloud—and how to lock them down so they stay safe.
* 🛟 **Walkthroughs (The Helpful Guides):** If you ever get stuck doing a hands-on project, this is your rescue zone. It is filled with extra guides and examples to help you figure out how to use forensic tools step-by-step.

> 🎮 **Think of it like a video game:** **Methodologies** teaches you the rules of the game, **Technologies** shows you how to use your gear, and **Walkthroughs** gives you the cheat codes when a level gets too tough!

---

## 📂 Living Repository Index
"@
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
# Write the header to the file (this resets old dynamic links)
$Header | Out-File -FilePath .\README.md -Encoding utf8

# Track the current active directory to detect path changes
$CurrentGroupPath = ""

# 2. Scan for all .md files, sorted by their folder locations
Get-ChildItem -Recurse -Filter *.md | 
    Where-Object { $_.Name -ne "README.md" } | 
    Sort-Object DirectoryName, Name | 
    ForEach-Object {
        
        # Calculate the web-friendly relative path for the file and its folder
        $FullRelativePath = $_.FullName.Replace($(Get-Location).Path + "\", "").Replace("\", "/")
        $FileFolder = $_.DirectoryName.Replace($(Get-Location).Path, "").Replace("\", "/").Trim('/')

        # 3. Path Change Check: If we enter a new folder, create a new heading section
        if ($FileFolder -ne $CurrentGroupPath) {
            $CurrentGroupPath = $FileFolder
            # Add a clean blank line break, then the header
            "" | Out-File -FilePath .\README.md -Append -Encoding utf8
            "### 📁 $FileFolder" | Out-File -FilePath .\README.md -Append -Encoding utf8
        }
        
        # 4. Clean up the file display name (e.g., linux-basics-wt -> Linux Basics Wt)
        $DisplayName = (Get-Culture).TextInfo.ToTitleCase($_.BaseName.Replace("-", " "))
        
        # Append the formatted markdown bullet to the active section
        "  * [$DisplayName]($FullRelativePath)" | Out-File -FilePath .\README.md -Append -Encoding utf8
    }

Write-Host "✅ README.md has been grouped by path and successfully updated with the welcome guide!" -ForegroundColor Green
