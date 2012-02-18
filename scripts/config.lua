Setup.Package
{
 	vendor = "liflg.org",
 	id = "forsaken_projectx",
 	description = "Forsaken",
 	version = "english",
 	splash = "splash.png",
 	superuser = false,
	write_manifest = true,
 	support_uninstall = true,
 	recommended_destinations =
 	{
 		"/usr/local/games",
		"/opt",
		MojoSetup.info.homedir,
 	},

 	Setup.Readme
 	{
 		description = "README",
 		source = "README.liflg"
 	},

	Setup.Option {
		required = true,
		description = "Files for Forsaken",
		bytes = 117737224,
                Setup.DesktopMenuItem
                {
                	disabled = false,
			name = "Forsaken",
                        genericname = "6dof",
                        tooltip = "Play Forsaken",
                        builtin_icon = false,
                        icon = "projectx.png",
                        commandline = "%0/projectx-static.sh",
                        category = "Game",
                },
		
		Setup.File {
			source = "base:///assets_12-20-09.tar/",
		},

		Setup.File 
		{
			wildcards =  {"projectx-1.15.1772-static", "projectx-static.sh" },
			permissions = "0755",
		},

		Setup.File
		{	
			wildcards = { "README.liflg", "projectx.png" },
		},
	},
}	
