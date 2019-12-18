# A simple SOC with RISC-V Ibex Core

该工程实现了一个基于 [Ibex](https://github.com/lowRISC/ibex) 的 SOC，memory map 参考 [SiFive Freedom SOC](https://github.com/sifive/freedom)，目前使用了 APB 总线，外设大多数来自 [pupl-platform](https://github.com/pulp-platform)。

## 任务列表

- [x] 实现独立的 ITCM 和 DTCM
- [x] 实现 core-bus 到 apb-bus 的转换
- [x] 添加 GPIO 外设
- [x] 添加 UART 外设
- [x] 实现 printf 函数
- [x] 添加 APB Chanel with Decoder and Data Mux
- [x] 添加 timer 外设
- [ ] 添加中断控制器
- [ ] 实现定时中断
- [ ] 实现外部中断
- [ ] 添加 JTAG 调试
- [ ] 实现 core-mark 测试
- [ ] 实现 dhrystone 测试

## Changelog

### [Unreleased]

@zyq

- 添加了 timer0
- 完成了 timer 驱动



### [0.1.0] - 2019-12-17

@zyq

- 修改了micro-uart 采样时钟高电平时间过长的问题

- 实现了 printf 函数，默认波特率115200

- 修改了 complex_core.sv/peri_req

  from

  ```verilog
  peri_req = (data_addr & ~`PERI_MASK) == `PERI_START;
  ```

  to

  ```verilog
  peri_req = (data_addr >= `PERI_START) && (data_addr <= `PERI_END);
  ```

- 完善了 GPIO 驱动



