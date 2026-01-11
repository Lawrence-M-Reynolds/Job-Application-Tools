-- Create another version of this file named "replaceSensitiveInfo-custom.lua" in the same directory. This
-- Won't be tracked as it's been added to .gitignore.
function Str(elem)
    if elem.text == "{PHONE_PLACEHOLDER}" then
        return pandoc.Str("+01 2345 678 910")
    elseif elem.text == "{EMAIL_PLACEHOLDER}" then
        return pandoc.Str("test@example.com")
    else
        return elem
    end
end