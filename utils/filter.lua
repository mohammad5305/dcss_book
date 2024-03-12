require "re"
-- local logging = require 'logging'

local function convert_en(text)
    return re.gsub(text, "([ ]*[A-Za-z_%(%)]+[ ]*)+", [[ \lr{%0} ]])
end

function Header(el)
    -- logging.temp('header', pandoc.utils.make_sections(false, nil, el.content))

    if el.level == 1 then
        return { { pandoc.RawInline('latex', '\\chapter{')} ..
            el.content..
            {pandoc.RawInline('latex', '}')}
        }
    else
        return {
            { pandoc.RawInline('latex', '\\section{') } ..
                el.content ..
                { pandoc.RawInline('latex', '}') }
        }
    end
end

function Inlines(el)
    -- print(convert_en(pandoc.utils.stringify(el)))

    return {
        pandoc.RawInline('latex', convert_en(pandoc.utils.stringify(el)))
    }
end
