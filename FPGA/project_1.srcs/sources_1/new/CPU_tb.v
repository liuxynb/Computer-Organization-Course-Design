`timescale 1ns / 1ns

module testbench_CPU_RISCV_interrupt;

  // ʱ�Ӻ͸�λ�ź�
  reg CLK;
  reg Go;
  reg RST;

  // �����ź�
  reg [1:0] CLK_Sel;
  reg Display_Sel;
  reg UP, DOWN, CENTER, LEFT, RIGHT;
  
  // ����ź�
  wire [7:0] SEG;
  wire [7:0] AN;
  wire halt;
  wire [4:0] it;

  // ʵ���������Ե�CPUģ��
  CPU_RISCV test_cpu (
    .CLK(CLK),
    .Go(Go),
    .RST(RST),
    .CLK_Sel(CLK_Sel),
    .Display_Sel(Display_Sel),
    .SEG(SEG),
    .AN(AN),
    .halt(halt),
    .UP(UP),
    .DOWN(DOWN),
    .CENTER(CENTER),
    .LEFT(LEFT),
    .RIGHT(RIGHT),
    .it(it)
  );

  // ʱ���ź�����
  always begin
    #5 CLK = ~CLK;
  end

  // ��ʼ���ź�
  initial begin
    CLK = 0;
    Go = 0;
    RST = 0;
    CLK_Sel = 0;
    Display_Sel = 0;
    UP = 0;
    DOWN = 0;
    CENTER = 0;
    LEFT = 0;
    RIGHT = 0;

    // ���������������źţ�ģ��CPU�Ĳ���
    CLK_Sel = 2;
    // ģ��CPU��ʼִ��

    #200;

    // ģ��CPUִ����Ϻ�Ĳ���
    // �����ж�
    UP = 1;
 

    // ֹͣCPU


    $finish; // ��������
  end

endmodule
