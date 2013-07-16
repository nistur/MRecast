project "MRecast"
	kind "SharedLib"

	includedirs { "recastnavigation/Detour/include/",
	 			  "include" }

	files { "src/**.cpp",
			"include/**.h",
			"**.md" }
	targetprefix ""

	links { "Detour", "Recast" }
