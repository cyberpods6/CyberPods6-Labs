[9/11/2024 4:01 PM]
# forensics-document-file-analysis
## Document File Analysis: PDF, Word, PowerPoint, and Excel
### PDF (Portable Document Format)
PDF files are widely used for sharing documents across different platforms. They store data in a structured format that preserves the layout and appearance of the original document.

**Data Storage:**
- PDF files consist of objects, including text, images, fonts, and metadata
- The file structure includes a header, body, cross-reference table, and trailer
- Content is typically compressed to reduce file size

**Potential Data Hiding Areas:**
- Metadata fields
- Hidden layers
- Embedded files
- Comments and annotations
- JavaScript code

### Microsoft Word
Word documents come in two main formats: the older .doc format (OLE2) and the newer .docx format (Office Open XML).

**Data Storage:**
- .doc files use the OLE2 (Object Linking and Embedding) format, which is a binary file structure[1]
- .docx files are essentially ZIP archives containing XML files and other resources[1]

**Potential Data Hiding Areas:**
- Metadata properties
- Hidden text or white text on white background
- Comments and tracked changes
- Macros (VBA code)
- Custom XML data
- Headers and footers

### Microsoft PowerPoint
PowerPoint presentations share similar formats with Word documents (.ppt for older versions, .pptx for newer ones).

**Data Storage:**
- .ppt files use the OLE2 format
- .pptx files are ZIP archives with XML content[1]

**Potential Data Hiding Areas:**
- Slide notes
- Hidden slides
- Embedded audio or video files
- Macros
- Custom layouts and master slides
- Alt text for images

### Microsoft Excel
Excel spreadsheets also come in two formats: .xls (OLE2) and .xlsx (Office Open XML).

**Data Storage:**
- .xls files use the binary OLE2 format
- .xlsx files are ZIP archives containing XML files[1]

**Potential Data Hiding Areas:**
- Hidden sheets
- Very small or white-colored cells
- Formulas
- Macros
- Comments
- Named ranges
- Conditional formatting rules

## Common Analysis Techniques
**1. Metadata Examination:** Extract and analyze file properties and metadata.
**2. Content Extraction:** Use specialized tools to extract text, images, and other embedded objects.
**3. Macro Analysis:** Examine and deobfuscate macros in Office documents[1].
**4. Structure Analysis:** Investigate the file structure, especially for Office Open XML formats.
**5. Hidden Content Detection:** Look for hidden sheets, slides, or text using document-specific tools.

**6. Steganography Detection:** Use specialized tools to detect data hidden within images or other file components.
**7. Emulation and Sandbox Analysis:** Execute documents in controlled environments to observe behavior, especially for potentially malicious files[1].

## Tools for Document Analysis
- **oledump.py:** Analyze OLE2 structured storage files[1]
- **olevba:** Extract and analyze VBA macros from Office documents[1]
- **pdfid and pdf-parser:** Analyze the structure of PDF files
- **strings:** Extract readable text from binary files
- **binwalk:** Analyze and extract data from various file types
- **ExifTool:** Extract metadata from multiple file formats

## Best Practices
1. Always work on copies of the original files to preserve evidence integrity.
2. Use write blockers when analyzing files from original media.
3. Document all steps of your analysis process.
4. Be aware of potential malicious content in documents and use appropriate safety measures.
5. Correlate findings with other evidence in your investigation.

By understanding how these document formats store data and where they might conceal information, digital forensics experts can conduct thorough analyses and uncover crucial evidence in investigations.

## References
1. Analyzing malicious documents cheat sheet. (n.d.). Lenny Zeltser | Information Security in Business. https://zeltser.com/analyzing-malicious-documents/
2. How to extract information from office files by using office file formats and schemas. (n.d.). Microsoft Support. https://support.microsoft.com/en-us/topic/how-to-extract-information-from-office-files-by-using-office-file-formats-and-schemas-5f5fafdd-2f22-8b71-4348-57484b5a9fc5
3. Laujan. (2024, August 28). Read model OCR data extraction - Document intelligence - Azure AI services. Microsoft Learn: Build skills that open doors in your career. https://learn.microsoft.com/en-us/azure/ai-services/document-intelligence/concept-read?view=doc-intel-4.0.0&tabs=sample-code
4. Fishbein, N. (2023, October 24). How to analyze malicious Microsoft office files. Intezer. https://intezer.com/blog/malware-analysis/analyze-malicious-microsoft-office-files/
5. BizzInnovate. (2024, March 21). Analyze PDF with Microsoft Copilot. YouTube. https://www.youtube.com/watch?v=ia8EOuDYwKU
6. Office file analysis. (n.d.). HackTricks | HackTricks. https://book.hacktricks.xyz/generic-methodologies-and-resources/basic-forensic-methodology/specific-software-file-type-tricks/office-file-analysis
7. MS office & PDF text parsing. (2023, October 31). SimpleIndex. https://www.simpleindex.com/features/office-and-pdf-processing/
