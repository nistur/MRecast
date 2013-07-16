solution "MRecast"
	language "C++"
	configurations { "Debug", "Release" }

	targetdir "bin"

    libdirs { os.getenv("MSDKDIR") .. "/SDK/MCore/Libs",
          	  os.getenv("MSDKDIR") .. "/SDK/MEngine/Libs" }
    includedirs { os.getenv("MSDKDIR") .. "/SDK/MCore/Includes",
                  os.getenv("MSDKDIR") .. "/SDK/MEngine/Includes",
                  os.getenv("MSDKDIR") .. "/Plugins/Includes" }

	configuration "Debug"
		defines { "DEBUG" }
		flags { "Symbols" }

	configuration "Release"
		defines { "NDEBUG" }
		flags { "Optimize" }

	dofile("proj-recast.lua")
	dofile("proj-dynamic.lua")
	dofile("proj-static.lua")