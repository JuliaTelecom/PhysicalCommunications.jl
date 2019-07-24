using  Test

testfiles = [ "eyediag.jl" ]

for testfile in testfiles
	include(testfile)
end
