package node

import (
	"context"
	"fildr-cli/internal/config"
	"fildr-cli/internal/module"
	"fmt"
	"os"
	"time"
)

var _ module.Module = (*NodeCollectorModule)(nil)

type NodeCollectorModule struct {
	config *config.TomlConfig
}

func New(ctx context.Context, config *config.TomlConfig) (*NodeCollectorModule, error) {
	return &NodeCollectorModule{config: config}, nil
}

func (c *NodeCollectorModule) Name() string {
	return "collector"
}

func (c *NodeCollectorModule) Start() error {
	evaluation := c.config.Gateway.Evaluation
	if evaluation == 0 {
		evaluation = 5
	}

	instance := c.config.Gateway.Instance
	if instance == "" {
		hostname, err := os.Hostname()
		if err != nil {
			return err
		}
		instance = hostname
	}

	c.execute("node", instance, time.Duration(evaluation))

	return nil
}

func (c *NodeCollectorModule) Stop() {

}

func (c *NodeCollectorModule) execute(job string, instanceName string, evaluation time.Duration) {
	go func() {
		instance, err := GetInstance()
		if err != nil {
			return
		}
		instance.SetJob(job)
		instance.SetInstance(instanceName)
		for range time.Tick(time.Second * evaluation) {
			fmt.Println("print metrics ...")
			metries, err := instance.GetMetrics()
			if err != nil {
				fmt.Println(err)
			}
			fmt.Println(metries)
		}
	}()
}