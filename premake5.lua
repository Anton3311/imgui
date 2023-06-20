project "ImGUI"
	kind "StaticLib"
	language "C++"
  cppdialect "C++17"

	targetdir ("bin/" .. OUTPUT_DIRECTORY .. "/%{prj.name}")
	objdir ("bin-int/" .. OUTPUT_DIRECTORY .. "/%{prj.name}")

  includedirs
  {
      INCLUDE_DIRS.imgui,
      INCLUDE_DIRS.GLFW,
  }

	files
	{
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_tables.cpp",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_demo.cpp",

    "backends/imgui_impl_opengl3.h",
    "backends/imgui_impl_opengl3.cpp",
    "backends/imgui_impl_opengl3_loader.h",

    "backends/imgui_impl_glfw.h",
    "backends/imgui_impl_glfw.cpp",
	}

filter "system:windows"
		systemversion "latest"
		staticruntime "On"

  filter "configurations:Debug"
    runtime "Debug"
    symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
