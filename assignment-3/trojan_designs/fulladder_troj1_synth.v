module fulladder (
    clk,
    rst,
    a,
    b,
    cin,
    sum,
    cout
);
  input clk;
  wire clk;
  input rst;
  wire rst;
  input a;
  wire a;
  input b;
  wire b;
  input cin;
  wire cin;
  output sum;
  wire sum;
  output cout;
  wire cout;
  wire [1:0] _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  wire _21_;
  wire _22_;
  wire _23_;
  wire _24_;
  wire _25_;
  wire _26_;
  wire _27_;
  wire _28_;
  wire _29_;
  wire _30_;
  wire _31_;
  wire [1:0] _32_;
  wire _33_;
  wire _34_;
  wire [31:0] _35_;
  wire [31:0] _36_;
  wire [1:0] _37_;
  wire [1:0] _38_;
  wire [1:0] _39_;
  wire [1:0] _40_;
  wire [1:0] _41_;
  wire a_r;
  wire b_r;
  wire cin_r;
  wire [1:0] count;
  wire cout_c;
  wire sum_c;
  NOT _42_ (
      .A(_07_),
      .Y(_10_)
  );
  NOT _43_ (
      .A(_08_),
      .Y(_11_)
  );
  NOT _44_ (
      .A(_06_),
      .Y(_12_)
  );
  NOT _45_ (
      .A(_04_),
      .Y(_13_)
  );
  NOT _46_ (
      .A(_05_),
      .Y(_14_)
  );
  NOT _47_ (
      .A(_03_),
      .Y(_15_)
  );
  NOR _48_ (
      .A(_13_),
      .B(_14_),
      .Y(_16_)
  );
  NAND _49_ (
      .A(_04_),
      .B(_05_),
      .Y(_17_)
  );
  NOR _50_ (
      .A(_04_),
      .B(_05_),
      .Y(_18_)
  );
  NOT _51_ (
      .A(_18_),
      .Y(_19_)
  );
  NOR _52_ (
      .A(_16_),
      .B(_18_),
      .Y(_20_)
  );
  NAND _53_ (
      .A(_17_),
      .B(_19_),
      .Y(_21_)
  );
  NOR _54_ (
      .A(_06_),
      .B(_20_),
      .Y(_22_)
  );
  NOR _55_ (
      .A(_10_),
      .B(_11_),
      .Y(_23_)
  );
  NAND _56_ (
      .A(_17_),
      .B(_23_),
      .Y(_24_)
  );
  NOR _57_ (
      .A(_12_),
      .B(_21_),
      .Y(_25_)
  );
  NAND _58_ (
      .A(_06_),
      .B(_20_),
      .Y(_26_)
  );
  NAND _59_ (
      .A(_24_),
      .B(_26_),
      .Y(_27_)
  );
  NOR _60_ (
      .A(_22_),
      .B(_27_),
      .Y(_31_)
  );
  NOR _61_ (
      .A(_16_),
      .B(_25_),
      .Y(_28_)
  );
  NOR _62_ (
      .A(_23_),
      .B(_28_),
      .Y(_09_)
  );
  NOR _63_ (
      .A(_07_),
      .B(_15_),
      .Y(_01_)
  );
  NAND _64_ (
      .A(_10_),
      .B(_11_),
      .Y(_29_)
  );
  NAND _65_ (
      .A(_03_),
      .B(_29_),
      .Y(_30_)
  );
  NOR _66_ (
      .A(_23_),
      .B(_30_),
      .Y(_02_)
  );
  DFFSR _67_ (
      .C(clk),
      .D(sum_c),
      .Q(sum),
      .R(rst),
      .S(1'h0)
  );
  DFFSR _68_ (
      .C(clk),
      .D(cout_c),
      .Q(cout),
      .R(rst),
      .S(1'h0)
  );
  DFFSR _69_ (
      .C(clk),
      .D(a),
      .Q(a_r),
      .R(rst),
      .S(1'h0)
  );
  DFFSR _70_ (
      .C(clk),
      .D(b),
      .Q(b_r),
      .R(rst),
      .S(1'h0)
  );
  DFFSR _71_ (
      .C(clk),
      .D(cin),
      .Q(cin_r),
      .R(rst),
      .S(1'h0)
  );
  DFFSR _72_ (
      .C(clk),
      .D(_00_[0]),
      .Q(count[0]),
      .R(rst),
      .S(1'h0)
  );
  DFFSR _73_ (
      .C(clk),
      .D(_00_[1]),
      .Q(count[1]),
      .R(rst),
      .S(1'h0)
  );
  assign _32_[1] = 1'h0;
  assign _35_[31:1] = {30'h00000000, count[1]};
  assign {_36_[31:3], _36_[0]} = {29'h00000000, _35_[0]};
  assign _37_[1] = 1'h0;
  assign _38_[1] = 1'h0;
  assign _40_[1] = _37_[0];
  assign _41_[0] = _40_[0];
  assign _07_ = count[0];
  assign _08_ = count[1];
  assign _06_ = cin_r;
  assign _04_ = a_r;
  assign _05_ = b_r;
  assign sum_c = _31_;
  assign cout_c = _09_;
  assign _03_ = a;
  assign _00_[0] = _01_;
  assign _00_[1] = _02_;
endmodule

