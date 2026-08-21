# loop through and only process files without the "draft" attribute
for md in lectures/*.md; do
    if ! grep -q "draft:\s*true" $md; then
        doc=$(basename "$md" .md)
        npx @marp-team/marp-cli@latest --theme lectures/marp-mru.css --allow-local-files --pdf --html $md -o lectures/pdfs/$doc.pdf
        npx @marp-team/marp-cli@latest --theme lectures/marp-mru.css --allow-local-files --bespoke.progress --html $md -o lectures/html/$doc.html

        date=$(grep -oP "(?<=^date:\s).+$" $md | xargs)
        title=$(grep -oP "(?<=^title:\s).+$" $md | xargs)
        
        # Add the relevant links to the main README page
        if ! grep -q "$title" README.md; then

            echo "| $date | [$title]($md) | <a href=\"lectures/pdfs/$doc.pdf\"><img src=\"img/file-pdf.svg\" alt=\"PDF\" style=\"height: 20px; margin: 0;\"/></a> |" >> README.md
        fi
    fi
done
