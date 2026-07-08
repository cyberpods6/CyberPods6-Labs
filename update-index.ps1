# 1. Define the permanent introduction header of your README
$Header = @"
# 🗺️ CyberPods6 Labs & Blueprints

Welcome to the central knowledge repository for CyberPods6. This space hosts hands-on engineering labs, core technical theories, and procedural cybersecurity methodologies.

---

## 📂 Living Repository Index
"@

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
            "### 📁 $CurrentGroupPath" | Out-File -FilePath .\README.md -Append -Encoding utf8
        }
        
        # 4. Clean up the file display name (e.g., linux-basics-wt -> Linux Basics Wt)
        $DisplayName = (Get-Culture).TextInfo.ToTitleCase($_.BaseName.Replace("-", " "))
        
        # Append the formatted markdown bullet to the active section
        "  * [$DisplayName]($FullRelativePath)" | Out-File -FilePath .\README.md -Append -Encoding utf8
    }

Write-Host "✅ README.md has been grouped by path and successfully updated!" -ForegroundColor Green
