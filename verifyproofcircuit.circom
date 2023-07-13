pragma circom 2.0.0;

template ANDGate() {
  signal input First;
  signal input second;
  signal output final;

  final <== First*second;
}

template NOTGAte() {
  signal input second;
  signal output Y;

  Y <== 1 + second - 2*second;
}

template ORGate() {
  signal input final;
  signal input Y;
  signal output Q;

  Q <== final + Y - final*Y;
}

component main = ORGate();