# On converti des farenheits en celsius en utilisant des floats
def ftoc(tempf)
	tempc = (tempf - 32) * 5 / 9.0
	return tempc
end

#  On converti les celsius en farenheits en utilisant des floats
def ctof(tempc)
	tempf = (tempc * 9 / 5.0) + 32
	return tempf
end
