module github.com/chenweivip/zebra

go 1.13

replace (
	github.com/chenweivip/zebra/pkg/setting => ./zebra/pkg/setting
	github.com/chenweivip/zebra/routers => ./zebra/routers
)

require (
	github.com/astaxie/beego v1.12.1
	github.com/dgrijalva/jwt-go v3.2.0+incompatible
	github.com/fvbock/endless v0.0.0-20170109170031-447134032cb6
	github.com/gin-gonic/gin v1.6.1
	github.com/go-ini/ini v1.55.0
	github.com/go-sql-driver/mysql v1.5.0 // indirect
	github.com/jinzhu/gorm v1.9.12
	github.com/swaggo/gin-swagger v1.2.0
	github.com/swaggo/swag v1.6.5 // indirect
	github.com/unknwon/com v1.0.1
	golang.org/x/net v0.0.0-20200324143707-d3edc9973b7e // indirect
	gopkg.in/ini.v1 v1.55.0 // indirect
)
