project "MRecastStatic"
	kind "StaticLib"

	includedirs { "recastnavigation/Detour/include/",
				  "recastnavigation/DetourCrowd/include/",
				  "recastnavigation/DetourTileCache/include/",
				  "recastnavigation/Recast/include/",
	 			  "include" }

	files { "src/**.cpp",
			"include/**.h",
			"**.md",

			"recastnavigation/Detour/Source/**",
			"recastnavigation/DetourCrowd/Source/**",
			"recastnavigation/DetourTileCache/Source/**",
			"recastnavigation/Recast/Source/**" }
	targetname "MRecast"