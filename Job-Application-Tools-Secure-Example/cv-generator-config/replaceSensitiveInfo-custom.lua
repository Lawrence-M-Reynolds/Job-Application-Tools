function Str(elem)
    if elem.text == "{PHONE_PLACEHOLDER}" then
        return pandoc.Str("+44 1234 567 890")
    elseif elem.text == "{EMAIL_PLACEHOLDER}" then
        return pandoc.Str("example@example.com")
    else
        return elem
    end
end