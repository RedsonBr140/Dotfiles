function psp --wraps='flatpak run org.ppsspp.PPSSPP' --description 'alias psp=flatpak run org.ppsspp.PPSSPP'
  flatpak run org.ppsspp.PPSSPP $argv; 
end
