workspace "TextureEngine"
	configurations { "Debug", "Release" }

project "TextureEngine"
	kind "StaticLib"
	language "C++"
	targetdir "bin/%{cfg.buildcfg}"
	
	files { "texengine/**.h", "texengine/**.cpp" }
	
	includedirs { "texengine" }
	
	filter "configurations:Debug"
		defines { "DEBUG" }
		symbols "On"
	
	filter "configurations:Release"
		defines { "NDEBUG" }
		optimize "On"