kbd = Keyboard.new

kbd.init_pins(
    [18, 19], # rows
    [16, 17]  # cols
)

# Physical matrix
#  ------------
# |       pico |
# | 2, 1, 4, 3 |
#  ------------
#
# is correspond to
#  -----
# | 1 3 |
# | 2 4 |
#  -----
# in scheme

# --------------
# RAISE, A, B, C
# --------------
kbd.add_layer :default, %i(
    KC_A RAISE
    KC_C KC_B 
)

# -------------
# (No), 1, 2, 3
# -------------
kbd.add_layer :raise, %i(
    KC_1 KC_NO
    KC_3 KC_2
)

kbd.define_mode_key :RAISE, [ nil, :raise, nil, nil ]

kbd.start!
