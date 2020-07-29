module fildr-cli

go 1.14

require (
	github.com/beevik/ntp v0.2.0
	github.com/coreos/go-systemd v0.0.0-20191104093116-d3cd4ed1dbcf
	github.com/ema/qdisc v0.0.0-20200603082823-62d0308e3e00
	github.com/fatih/color v1.8.0
	github.com/filecoin-project/filecoin-ffi v0.30.4-0.20200716204036-cddc56607e1d
	github.com/filecoin-project/go-address v0.0.2-0.20200504173055-8b6f2fb2b3ef
	github.com/filecoin-project/go-fil-markets v0.5.1
	github.com/filecoin-project/go-jsonrpc v0.1.1-0.20200602181149-522144ab4e24
	github.com/filecoin-project/lotus v0.4.2
	github.com/filecoin-project/sector-storage v0.0.0-20200723200950-ed2e57dde6df
	github.com/filecoin-project/specs-actors v0.8.1-0.20200724015154-3c690d9b7e1d
	github.com/filecoin-project/storage-fsm v0.0.0-20200720190000-2cfe2fe3c334
	github.com/godbus/dbus v0.0.0-20190402143921-271e53dc4968
	github.com/hodgesds/perf-utils v0.0.8
	github.com/ipfs/go-cid v0.0.6
	github.com/libp2p/go-libp2p-core v0.6.0
	github.com/mattn/go-xmlrpc v0.0.3
	github.com/mdlayher/wifi v0.0.0-20190303161829-b1436901ddee
	github.com/multiformats/go-multiaddr v0.2.2
	github.com/pkg/errors v0.9.1
	github.com/prometheus/client_golang v1.7.1
	github.com/prometheus/client_model v0.2.0
	github.com/prometheus/common v0.10.0
	github.com/prometheus/procfs v0.1.3
	github.com/rfyiamcool/go-timewheel v0.0.0-20200324075102-ab8baa57db6c
	github.com/soundcloud/go-runit v0.0.0-20150630195641-06ad41a06c4a
	github.com/spf13/cobra v1.0.0
	github.com/spf13/pflag v1.0.5 // indirect
	github.com/spf13/viper v1.4.0
	github.com/stretchr/testify v1.6.1
	go.uber.org/zap v1.15.0
	golang.org/x/sys v0.0.0-20200615200032-f1bc736245b1
	gopkg.in/alecthomas/kingpin.v2 v2.2.6
	k8s.io/klog v1.0.0
)

replace github.com/filecoin-project/filecoin-ffi => ./extern/filecoin-ffi
