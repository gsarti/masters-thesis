function Span (el)
  --- Highlight corrections in blue
  if el.classes[1] == "correction" then
    table.insert(el.content, 1, pandoc.RawInline('latex', '\\colorbox[HTML]{CCCCFF}{'))
    table.insert(el.content, pandoc.RawInline('latex', '}'))
  --- Paragraph inline block for Latex
  elseif el.classes[1] == "custompar" then
    table.insert(el.content, 1, pandoc.RawInline('latex', '\\paragraph{'))
    table.insert(el.content, pandoc.RawInline('latex', '}'))
  --- Underlined inline block for Latex  
  elseif el.classes[1] == "underline" then
    table.insert(el.content, 1, pandoc.RawInline('latex', '\\underline{'))
    table.insert(el.content, pandoc.RawInline('latex', '}'))
  --- Smalltext inline block for Latex
  elseif el.classes[1] == "verysmall" then
    table.insert(el.content, 1, pandoc.RawInline('latex', '\\footnotesize\\text{'))
    table.insert(el.content, pandoc.RawInline('latex', '}'))
    end
  return el.content
end