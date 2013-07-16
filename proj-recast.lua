project "Detour"
	kind "StaticLib"

	includedirs { "recastnavigation/Detour/include/" }
	files { "recastnavigation/Detour/Source/**" }

project "DetourCrowd"
	kind "StaticLib"

	includedirs { "recastnavigation/Detour/include/", "recastnavigation/DetourCrowd/include/" }
	files { "recastnavigation/DetourCrowd/Source/**" }

project "DetourTileCache"
	kind "StaticLib"

	includedirs { "recastnavigation/Detour/include/", "recastnavigation/DetourTileCache/include/" }
	files { "recastnavigation/DetourTileCache/Source/**" }

project "Recast"
	kind "StaticLib"

	includedirs { "recastnavigation/Detour/include/", "recastnavigation/Recast/include/" }
	files { "recastnavigation/Recast/Source/**" }
