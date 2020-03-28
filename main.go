package main

import (
	"fmt"
	"log"
	"syscall"

	"github.com/chenweivip/zebra/pkg/utils"

	"github.com/chenweivip/zebra/pkg/gredis"

	"github.com/chenweivip/zebra/pkg/logging"

	"github.com/chenweivip/zebra/models"

	"github.com/chenweivip/zebra/pkg/setting"
	"github.com/chenweivip/zebra/routers"
	"github.com/fvbock/endless"
)

func init() {
	setting.Setup()
	models.Setup()
	logging.Setup()
	gredis.Setup()
	utils.Setup()
}

func main() {
	endless.DefaultReadTimeOut = setting.ReadTimeout
	endless.DefaultReadTimeOut = setting.WriteTimeout
	endless.DefaultMaxHeaderBytes = 1 << 20
	endPoint := fmt.Sprintf(":%d", setting.HTTPPort)
	server := endless.NewServer(endPoint, routers.InitRouter())
	server.BeforeBegin = func(add string) {
		log.Printf("Actual pid is %d", syscall.Getpid())
	}

	if err := server.ListenAndServe(); err != nil {
		log.Printf("Server err: %v", err)
	}
}
