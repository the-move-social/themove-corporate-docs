# The Move Social Inc. — Corporate Documents

Delaware C-Corp corporate documents for The Move Social Inc.

## Structure

```
.
├── signed/                  # Signed PDFs
├── formation/               # Formation docs from Northwest + EIN
├── agreements/              # Per-person agreements (founders, contractors)
├── 409A/                    # 409A valuation materials
├── taxes/                   # Tax reference docs
├── theme/                   # CSS for mdbook + PDF generation
├── scripts/                 # Tooling
├── *.md                     # Corporate documents (source of truth)
└── book.toml                # mdbook config
```

## Generating PDFs

All corporate documents are authored in markdown. To generate a signable PDF:

```bash
./scripts/md2pdf.sh <document.md> [output.pdf]
```

Examples:

```bash
# Output to signed/ (default)
./scripts/md2pdf.sh bylaws.md

# Custom output path
./scripts/md2pdf.sh bylaws.md ~/Desktop/bylaws.pdf
```

### Requirements

```bash
brew install pandoc
pip install weasyprint
```

### Styling

PDF styling is controlled by `theme/pdf.css`. The stylesheet uses Times New Roman, letter size, 1-inch margins, and prevents page breaks from splitting signature blocks and section headings.

## Viewing as a Website

Documents can also be viewed as a website using [mdbook](https://rust-lang.github.io/mdBook/):

```bash
mdbook serve
```
