package main

import (
	"github.com/prest/cmd"
	"github.com/prest/config"
)

var Version = "0.1.0+dev"

func main() {
	config.Load()
	cmd.Execute()
}
