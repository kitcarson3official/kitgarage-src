function p_build {
    Write-Output (emacs -Q --script build_site.el)
}

function p_run {
    p_build
    ./public/index.html    
}

function p_help {
    Write-Output @"

USAGE:
./project.ps1 COMMAND [ARGS]

Available COMMANDs:
build         build the site
run           build and open the site
help          print this help

"@
}

switch ($args[0]) {
    "run" {
	p_run
    }

    "build" {
	p_build
    }

    default {
	p_help
    }
}
