let { tap, hold, combo, .. } = import "fak/keycode.ncl" in

let kc = tap.reg.kc in
let ks = tap.reg.ks in
let md = tap.reg.mod in
let BOOT = tap.custom.fak.BOOT in
let XXXX = tap.none & hold.none in
let TTTT = tap.trans & hold.trans in

let ck = {
  LSPC = kc.SPC & hold.reg.layer 1 & hold.reg.behavior FAST_BHV,
  RSPC = kc.ESC & hold.reg.layer 1 & hold.reg.behavior FAST_BHV,
  TAB = kc.TAB & hold.reg.layer 2 & hold.reg.behavior STD_BHV,
  ENTER = kc.ENTER & hold.reg.layer 2 & hold.reg.behavior STD_BHV,
  F = kc.F & hold.reg.layer 3 & hold.reg.behavior FAST_BHV,

  A = kc.A & hold.reg.mod.lsft & hold.reg.behavior FAST_BHV,
  SCLN = kc.SCLN & hold.reg.mod.lsft & hold.reg.behavior FAST_BHV,

  W = kc.W & hold.reg.mod.lalt & hold.reg.behavior STD_BHV,
  E = kc.E & hold.reg.mod.lctl & hold.reg.behavior STD_BHV,
  R = kc.R & hold.reg.mod.lgui & hold.reg.behavior STD_BHV,
  U = kc.U & hold.reg.mod.rgui & hold.reg.behavior STD_BHV,
  I = kc.I & hold.reg.mod.rctl & hold.reg.behavior STD_BHV,
  O = kc.O & hold.reg.mod.ralt & hold.reg.behavior STD_BHV,

  STD_BHV = {
    timeout_ms = 200,
  },
  FAST_BHV = {
    timeout_ms = 130,
  },
} in

{
  virtual_keys = [
    combo.make 50 [13, 14],
    combo.make 50 [17, 18],
  ],
  layers = [
    [ # Layer 2 - BASE
      kc.Q,    ck.W,    ck.E,    ck.R,    kc.T,    kc.Y,    ck.U,    ck.I,    ck.O,    kc.P,    kc.ENTER,
      ck.A,    kc.S,    kc.D,    ck.F,    kc.G,    kc.H,    kc.J,    kc.K,    kc.L,    ck.SCLN,
      kc.Z,    kc.X,    kc.C,    kc.V,    kc.B,    kc.N,    kc.M,    kc.COMM, kc.DOT,  XXXX,
      XXXX,    XXXX,    XXXX,    ck.LSPC, ck.RSPC, XXXX,    XXXX,    XXXX,
      # Combos
      ck.TAB,
      ck.ENTER,
    ],
    [ # Layer 1 - DEV
      ks.QUES, ks.EXLM, kc.E,    ks.DQUO, ks.TILD, ks.HASH, ks.LPRN, ks.RPRN, kc.MINS, ks.PLUS,    kc.ENTER,
      ks.AT,   kc.SLSH, ks.DLR,  kc.QUOT, ks.AMPR, kc.GRV,  ks.LCBR, ks.RCBR, ks.UNDS, kc.EQL,
      XXXX,    ks.PIPE, ks.CIRC, ks.PERC, kc.BSLS, ks.ASTR, kc.LBRC, kc.RBRC, XXXX,    XXXX,
      XXXX,    XXXX,    XXXX,    XXXX,    kc.BSPC, XXXX,    XXXX,    XXXX,
      # Combos
      XXXX,
      XXXX,
    ],
    [ # Layer 2 - MISC
      XXXX,    TTTT,    TTTT,    TTTT,    XXXX,    XXXX,    TTTT,    TTTT,    TTTT,    XXXX,    XXXX,
      TTTT,    XXXX,    XXXX,    XXXX,    XXXX,    kc.LEFT, kc.DOWN, kc.UP,   kc.RIGHT,TTTT,
      XXXX,    XXXX,    XXXX,    XXXX,    XXXX,    XXXX,    XXXX,    XXXX,    XXXX,    XXXX,
      XXXX,    XXXX,    XXXX,    XXXX,    XXXX,    XXXX,    XXXX,    BOOT,
      # Combos
      XXXX,
      XXXX,
    ],
    [ # Layer 3 - NUM
      XXXX,    TTTT,    TTTT,    TTTT,    XXXX,    XXXX,    kc.N7,   kc.N8,   kc.N9,   XXXX,    XXXX,
      TTTT,    XXXX,    XXXX,    XXXX,    XXXX,    kc.N0,   kc.N1,   kc.N2,   kc.N3,   TTTT,
      XXXX,    XXXX,    XXXX,    XXXX,    XXXX,    XXXX,    kc.N4,   kc.N5,   kc.N6,   XXXX,
      XXXX,    XXXX,    XXXX,    XXXX,    XXXX,    XXXX,    XXXX,    XXXX,
      # Combos
      XXXX,
      XXXX,
    ],
  ],
}